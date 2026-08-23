// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketCorsRule {
  /// List of headers allowed.
  final pulumi.Input<List<String>>? allowedHeaders;
  /// One or more HTTP methods that you allow the origin to execute. Can be `GET`, `PUT`, `POST`, `DELETE` or `HEAD`.
  final pulumi.Input<List<String>> allowedMethods;
  /// One or more origins you want customers to be able to access the bucket from.
  final pulumi.Input<List<String>> allowedOrigins;
  /// One or more headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript `XMLHttpRequest` object).
  final pulumi.Input<List<String>>? exposeHeaders;
  /// Time in seconds that browser can cache the response for a preflight request.
  final pulumi.Input<int>? maxAgeSeconds;

  /// Creates a new [BucketCorsRule].
  /// [allowedHeaders] List of headers allowed.
  /// [allowedMethods] One or more HTTP methods that you allow the origin to execute. Can be `GET`, `PUT`, `POST`, `DELETE` or `HEAD`.
  /// [allowedOrigins] One or more origins you want customers to be able to access the bucket from.
  /// [exposeHeaders] One or more headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript `XMLHttpRequest` object).
  /// [maxAgeSeconds] Time in seconds that browser can cache the response for a preflight request.
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
