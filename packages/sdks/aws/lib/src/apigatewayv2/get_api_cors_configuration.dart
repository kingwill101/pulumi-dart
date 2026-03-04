// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApiCorsConfiguration {
  /// Whether credentials are included in the CORS request.
  final pulumi.Input<bool> allowCredentials;

  /// Set of allowed HTTP headers.
  final pulumi.Input<List<String>> allowHeaders;

  /// Set of allowed HTTP methods.
  final pulumi.Input<List<String>> allowMethods;

  /// Set of allowed origins.
  final pulumi.Input<List<String>> allowOrigins;

  /// Set of exposed HTTP headers.
  final pulumi.Input<List<String>> exposeHeaders;

  /// Number of seconds that the browser should cache preflight request results.
  final pulumi.Input<int> maxAge;

  /// Creates a new [GetApiCorsConfiguration].
  /// [allowCredentials] Whether credentials are included in the CORS request.
  /// [allowHeaders] Set of allowed HTTP headers.
  /// [allowMethods] Set of allowed HTTP methods.
  /// [allowOrigins] Set of allowed origins.
  /// [exposeHeaders] Set of exposed HTTP headers.
  /// [maxAge] Number of seconds that the browser should cache preflight request results.
  GetApiCorsConfiguration({
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

  factory GetApiCorsConfiguration.fromMap(Map<String, dynamic> map) {
    return GetApiCorsConfiguration(
      allowCredentials: pulumi.Input.fromValue(map['allowCredentials'] as bool),
      allowHeaders: pulumi.Input.fromValue(
        (map['allowHeaders'] as List).cast<String>(),
      ),
      allowMethods: pulumi.Input.fromValue(
        (map['allowMethods'] as List).cast<String>(),
      ),
      allowOrigins: pulumi.Input.fromValue(
        (map['allowOrigins'] as List).cast<String>(),
      ),
      exposeHeaders: pulumi.Input.fromValue(
        (map['exposeHeaders'] as List).cast<String>(),
      ),
      maxAge: pulumi.Input.fromValue(map['maxAge'] as int),
    );
  }
}
