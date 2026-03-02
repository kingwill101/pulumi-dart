// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiRequestConfig {
  /// The body format of the api, which support the values of 'STREAM' and 'FORM'.
  final pulumi.Input<String>? bodyFormat;
  /// The method of the api, including 'GET','POST','PUT' etc.
  final pulumi.Input<String> method;
  /// The mode of the parameters between request parameters and service parameters, which support the values of 'MAPPING' and 'PASSTHROUGH'.
  final pulumi.Input<String> mode;
  /// The request path of the api.
  final pulumi.Input<String> path;
  /// The protocol of api which supports values of 'HTTP','HTTPS' or 'HTTP,HTTPS'.
  final pulumi.Input<String> protocol;

  /// Creates a new [ApiRequestConfig].
  /// [bodyFormat] The body format of the api, which support the values of 'STREAM' and 'FORM'.
  /// [method] The method of the api, including 'GET','POST','PUT' etc.
  /// [mode] The mode of the parameters between request parameters and service parameters, which support the values of 'MAPPING' and 'PASSTHROUGH'.
  /// [path] The request path of the api.
  /// [protocol] The protocol of api which supports values of 'HTTP','HTTPS' or 'HTTP,HTTPS'.
  ApiRequestConfig({
    this.bodyFormat,
    required this.method,
    required this.mode,
    required this.path,
    required this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bodyFormat': ?bodyFormat,
      'method': method,
      'mode': mode,
      'path': path,
      'protocol': protocol,
    };
  }

  factory ApiRequestConfig.fromMap(Map<String, dynamic> map) {
    return ApiRequestConfig(
      bodyFormat: map['bodyFormat'] == null ? null : (map['bodyFormat'] as String).input(),
      method: (map['method'] as String).input(),
      mode: (map['mode'] as String).input(),
      path: (map['path'] as String).input(),
      protocol: (map['protocol'] as String).input(),
    );
  }
}

