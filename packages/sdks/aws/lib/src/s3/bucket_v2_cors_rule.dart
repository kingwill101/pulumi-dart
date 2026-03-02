// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketV2CorsRule {
  /// List of headers allowed.
  final pulumi.Input<List<String>>? allowedHeaders;
  /// One or more HTTP methods that you allow the origin to execute. Can be `GET`, `PUT`, `POST`, `DELETE` or `HEAD`.
  final pulumi.Input<List<String>> allowedMethods;
  /// One or more origins you want customers to be able to access the bucket from.
  final pulumi.Input<List<String>> allowedOrigins;
  /// One or more headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript `XMLHttpRequest` object).
  final pulumi.Input<List<String>>? exposeHeaders;
  /// Specifies time in seconds that browser can cache the response for a preflight request.
  final pulumi.Input<int>? maxAgeSeconds;

  /// Creates a new [BucketV2CorsRule].
  /// [allowedHeaders] List of headers allowed.
  /// [allowedMethods] One or more HTTP methods that you allow the origin to execute. Can be `GET`, `PUT`, `POST`, `DELETE` or `HEAD`.
  /// [allowedOrigins] One or more origins you want customers to be able to access the bucket from.
  /// [exposeHeaders] One or more headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript `XMLHttpRequest` object).
  /// [maxAgeSeconds] Specifies time in seconds that browser can cache the response for a preflight request.
  BucketV2CorsRule({
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

  factory BucketV2CorsRule.fromMap(Map<String, dynamic> map) {
    return BucketV2CorsRule(
      allowedHeaders: map['allowedHeaders'] == null ? null : ((map['allowedHeaders'] as List).cast<String>()).input(),
      allowedMethods: ((map['allowedMethods'] as List).cast<String>()).input(),
      allowedOrigins: ((map['allowedOrigins'] as List).cast<String>()).input(),
      exposeHeaders: map['exposeHeaders'] == null ? null : ((map['exposeHeaders'] as List).cast<String>()).input(),
      maxAgeSeconds: map['maxAgeSeconds'] == null ? null : (map['maxAgeSeconds'] as int).input(),
    );
  }
}

