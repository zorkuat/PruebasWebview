//
//  ViewController.m
//  PruebasWebview
//
//  Created by cice on 22/1/18.
//  Copyright © 2018 TATINC. All rights reserved.
//

#import "ViewController.h"
#import <WebKit/WebKit.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet WKWebView *vistaWeb;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    /* CARGAR UNA PAGINA WEB REMOTA
    NSURL *direccionWeb = [NSURL URLWithString:@""];
    NSURLRequest *peticionWeb = [NSURLRequest requestWithURL:direccionWeb];*/
    
    NSString *rutaFicheroHTML = [[NSBundle mainBundle] pathForResource:@"CICE" ofType:@"html"];
    
    /// CARGAR UNA PÁGINA WEB LOCAL
    NSString *webHTML = [NSString stringWithContentsOfFile:rutaFicheroHTML encoding:NSUTF8StringEncoding error:nil];
    NSURL *urlBundle = [[NSBundle mainBundle] resourceURL];
    NSURL *urlCarpetaBase = [NSURL URLWithString:@"CICE_files" relativeToURL:urlBundle];
    
    [self.vistaWeb loadHTMLString:webHTML baseURL:urlCarpetaBase];
    [self.vistaWeb reload];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
