// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFunctionUrlCor {
  /// Whether credentials are included in the CORS request.
  final pulumi.Input<bool> allowCredentials;
  /// List of headers that are specified in the Access-Control-Request-Headers header.
  final pulumi.Input<List<String>> allowHeaders;
  /// List of HTTP methods that are allowed when calling the function URL.
  final pulumi.Input<List<String>> allowMethods;
  /// List of origins that are allowed to make requests to the function URL.
  final pulumi.Input<List<String>> allowOrigins;
  /// List of headers in the response that you want to expose to the origin that called the function URL.
  final pulumi.Input<List<String>> exposeHeaders;
  /// Maximum amount of time, in seconds, that web browsers can cache results of a preflight request.
  final pulumi.Input<int> maxAge;

  /// Creates a new [GetFunctionUrlCor].
  /// [allowCredentials] Whether credentials are included in the CORS request.
  /// [allowHeaders] List of headers that are specified in the Access-Control-Request-Headers header.
  /// [allowMethods] List of HTTP methods that are allowed when calling the function URL.
  /// [allowOrigins] List of origins that are allowed to make requests to the function URL.
  /// [exposeHeaders] List of headers in the response that you want to expose to the origin that called the function URL.
  /// [maxAge] Maximum amount of time, in seconds, that web browsers can cache results of a preflight request.
  const GetFunctionUrlCor({
    required this.allowCredentials,
    required this.allowHeaders,
    required this.allowMethods,
    required this.allowOrigins,
    required this.exposeHeaders,
    required this.maxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': allowCredentials,
      'allowHeaders': allowHeaders,
      'allowMethods': allowMethods,
      'allowOrigins': allowOrigins,
      'exposeHeaders': exposeHeaders,
      'maxAge': maxAge,
    };
  }

  factory GetFunctionUrlCor.fromMap(Map<String, dynamic> map) {
    return GetFunctionUrlCor(
      allowCredentials: pulumi.Input.fromValue(map['allowCredentials'] as bool),
      allowHeaders: pulumi.Input.fromValue((map['allowHeaders'] as List).cast<String>()),
      allowMethods: pulumi.Input.fromValue((map['allowMethods'] as List).cast<String>()),
      allowOrigins: pulumi.Input.fromValue((map['allowOrigins'] as List).cast<String>()),
      exposeHeaders: pulumi.Input.fromValue((map['exposeHeaders'] as List).cast<String>()),
      maxAge: pulumi.Input.fromValue(map['maxAge'] as int),
    );
  }
}
