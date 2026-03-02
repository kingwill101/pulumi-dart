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
  BucketCorsRule({
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
      allowedHeaders: map['allowedHeaders'] == null ? null : ((map['allowedHeaders'] as List).cast<String>()).input(),
      allowedMethods: ((map['allowedMethods'] as List).cast<String>()).input(),
      allowedOrigins: ((map['allowedOrigins'] as List).cast<String>()).input(),
      exposeHeaders: map['exposeHeaders'] == null ? null : ((map['exposeHeaders'] as List).cast<String>()).input(),
      maxAgeSeconds: map['maxAgeSeconds'] == null ? null : (map['maxAgeSeconds'] as int).input(),
    );
  }
}

