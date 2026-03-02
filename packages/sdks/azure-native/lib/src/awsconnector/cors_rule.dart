// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of CorsRule
class CorsRule {
  /// Headers that are specified in the ``Access-Control-Request-Headers`` header. These headers are allowed in a preflight OPTIONS request. In response to any preflight OPTIONS request, Amazon S3 returns any requested headers that are allowed.
  final pulumi.Input<List<String>>? allowedHeaders;
  /// An HTTP method that you allow the origin to run.  *Allowed values*: ``GET`` | ``PUT`` | ``HEAD`` | ``POST`` | ``DELETE``
  final pulumi.Input<List<String>>? allowedMethods;
  /// One or more origins you want customers to be able to access the bucket from.
  final pulumi.Input<List<String>>? allowedOrigins;
  /// One or more headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript ``XMLHttpRequest`` object).
  final pulumi.Input<List<String>>? exposedHeaders;
  /// A unique identifier for this rule. The value must be no more than 255 characters.
  final pulumi.Input<String>? id;
  /// The time in seconds that your browser is to cache the preflight response for the specified resource.
  final pulumi.Input<int>? maxAge;

  /// Creates a new [CorsRule].
  /// [allowedHeaders] Headers that are specified in the ``Access-Control-Request-Headers`` header. These headers are allowed in a preflight OPTIONS request. In response to any preflight OPTIONS request, Amazon S3 returns any requested headers that are allowed.
  /// [allowedMethods] An HTTP method that you allow the origin to run.  *Allowed values*: ``GET`` | ``PUT`` | ``HEAD`` | ``POST`` | ``DELETE``
  /// [allowedOrigins] One or more origins you want customers to be able to access the bucket from.
  /// [exposedHeaders] One or more headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript ``XMLHttpRequest`` object).
  /// [id] A unique identifier for this rule. The value must be no more than 255 characters.
  /// [maxAge] The time in seconds that your browser is to cache the preflight response for the specified resource.
  CorsRule({
    this.allowedHeaders,
    this.allowedMethods,
    this.allowedOrigins,
    this.exposedHeaders,
    this.id,
    this.maxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHeaders': ?allowedHeaders,
      'allowedMethods': ?allowedMethods,
      'allowedOrigins': ?allowedOrigins,
      'exposedHeaders': ?exposedHeaders,
      'id': ?id,
      'maxAge': ?maxAge,
    };
  }

  factory CorsRule.fromMap(Map<String, dynamic> map) {
    return CorsRule(
      allowedHeaders: map['allowedHeaders'] == null ? null : ((map['allowedHeaders'] as List).cast<String>()).input(),
      allowedMethods: map['allowedMethods'] == null ? null : ((map['allowedMethods'] as List).cast<String>()).input(),
      allowedOrigins: map['allowedOrigins'] == null ? null : ((map['allowedOrigins'] as List).cast<String>()).input(),
      exposedHeaders: map['exposedHeaders'] == null ? null : ((map['exposedHeaders'] as List).cast<String>()).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      maxAge: map['maxAge'] == null ? null : (map['maxAge'] as int).input(),
    );
  }
}

