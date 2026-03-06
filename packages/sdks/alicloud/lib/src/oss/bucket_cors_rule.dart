// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketCorsRule {
  /// Specifies which headers are allowed.
  final pulumi.Input<List<String>>? allowedHeaders;
  /// Specifies which methods are allowed. Can be GET, PUT, POST, DELETE or HEAD.
  final pulumi.Input<List<String>> allowedMethods;
  /// Specifies which origins are allowed.
  final pulumi.Input<List<String>> allowedOrigins;
  /// Specifies expose header in the response.
  final pulumi.Input<List<String>>? exposeHeaders;
  /// Specifies time in seconds that browser can cache the response for a preflight request.
  final pulumi.Input<int>? maxAgeSeconds;

  /// Creates a new [BucketCorsRule].
  /// [allowedHeaders] Specifies which headers are allowed.
  /// [allowedMethods] Specifies which methods are allowed. Can be GET, PUT, POST, DELETE or HEAD.
  /// [allowedOrigins] Specifies which origins are allowed.
  /// [exposeHeaders] Specifies expose header in the response.
  /// [maxAgeSeconds] Specifies time in seconds that browser can cache the response for a preflight request.
  const BucketCorsRule({
    this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    this.exposeHeaders,
    this.maxAgeSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHeaders': ?allowedHeaders,
      'allowedMethods': allowedMethods,
      'allowedOrigins': allowedOrigins,
      'exposeHeaders': ?exposeHeaders,
      'maxAgeSeconds': ?maxAgeSeconds,
    };
  }

  factory BucketCorsRule.fromMap(Map<String, dynamic> map) {
    return BucketCorsRule(
      allowedHeaders: (() { final guardedValue = map['allowedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedMethods: pulumi.Input.fromValue((map['allowedMethods'] as List).cast<String>()),
      allowedOrigins: pulumi.Input.fromValue((map['allowedOrigins'] as List).cast<String>()),
      exposeHeaders: (() { final guardedValue = map['exposeHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxAgeSeconds: (() { final guardedValue = map['maxAgeSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

