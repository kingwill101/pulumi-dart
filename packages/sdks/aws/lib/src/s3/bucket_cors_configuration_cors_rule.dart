// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketCorsConfigurationCorsRule {
  /// Set of Headers that are specified in the `Access-Control-Request-Headers` header.
  final pulumi.Input<List<String>>? allowedHeaders;
  /// Set of HTTP methods that you allow the origin to execute. Valid values are `GET`, `PUT`, `HEAD`, `POST`, and `DELETE`.
  final pulumi.Input<List<String>> allowedMethods;
  /// Set of origins you want customers to be able to access the bucket from.
  final pulumi.Input<List<String>> allowedOrigins;
  /// Set of headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript `XMLHttpRequest` object).
  final pulumi.Input<List<String>>? exposeHeaders;
  /// Unique identifier for the rule. The value cannot be longer than 255 characters.
  final pulumi.Input<String>? id;
  /// Time in seconds that your browser is to cache the preflight response for the specified resource.
  final pulumi.Input<int>? maxAgeSeconds;

  /// Creates a new [BucketCorsConfigurationCorsRule].
  /// [allowedHeaders] Set of Headers that are specified in the `Access-Control-Request-Headers` header.
  /// [allowedMethods] Set of HTTP methods that you allow the origin to execute. Valid values are `GET`, `PUT`, `HEAD`, `POST`, and `DELETE`.
  /// [allowedOrigins] Set of origins you want customers to be able to access the bucket from.
  /// [exposeHeaders] Set of headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript `XMLHttpRequest` object).
  /// [id] Unique identifier for the rule. The value cannot be longer than 255 characters.
  /// [maxAgeSeconds] Time in seconds that your browser is to cache the preflight response for the specified resource.
  BucketCorsConfigurationCorsRule({
    this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    this.exposeHeaders,
    this.id,
    this.maxAgeSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHeaders': ?allowedHeaders,
      'allowedMethods': allowedMethods,
      'allowedOrigins': allowedOrigins,
      'exposeHeaders': ?exposeHeaders,
      'id': ?id,
      'maxAgeSeconds': ?maxAgeSeconds,
    };
  }

  factory BucketCorsConfigurationCorsRule.fromMap(Map<String, dynamic> map) {
    return BucketCorsConfigurationCorsRule(
      allowedHeaders: map['allowedHeaders'] == null ? null : (((map['allowedHeaders'] as List).cast<String>()).input()).input(),
      allowedMethods: ((map['allowedMethods'] as List).cast<String>()).input(),
      allowedOrigins: ((map['allowedOrigins'] as List).cast<String>()).input(),
      exposeHeaders: map['exposeHeaders'] == null ? null : (((map['exposeHeaders'] as List).cast<String>()).input()).input(),
      id: map['id'] == null ? null : ((map['id'] as String).input()).input(),
      maxAgeSeconds: map['maxAgeSeconds'] == null ? null : ((map['maxAgeSeconds'] as int).input()).input(),
    );
  }
}

