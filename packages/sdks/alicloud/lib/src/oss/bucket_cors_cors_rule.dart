// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BucketCorsCorsRule {
  /// Specifies whether the headers specified by Access-Control-Request-Headers in the OPTIONS preflight request are allowed. You can use only one asterisk (*) as the wildcard for allowed header. .
  final pulumi.Input<List<String>>? allowedHeaders;
  /// The cross-origin request method that is allowed. Valid values: GET, PUT, DELETE, POST, and HEAD.
  final pulumi.Input<List<String>> allowedMethods;
  /// The origins from which cross-origin requests are allowed. .
  final pulumi.Input<List<String>>? allowedOrigins;
  /// The response headers for allowed access requests from applications, such as an XMLHttpRequest object in JavaScript. .
  final pulumi.Input<List<String>>? exposeHeaders;
  /// The period of time within which the browser can cache the response to an OPTIONS preflight request for the specified resource. Unit: seconds.
  final pulumi.Input<int>? maxAgeSeconds;

  /// Creates a new [BucketCorsCorsRule].
  /// [allowedHeaders] Specifies whether the headers specified by Access-Control-Request-Headers in the OPTIONS preflight request are allowed. You can use only one asterisk (*) as the wildcard for allowed header. .
  /// [allowedMethods] The cross-origin request method that is allowed. Valid values: GET, PUT, DELETE, POST, and HEAD.
  /// [allowedOrigins] The origins from which cross-origin requests are allowed. .
  /// [exposeHeaders] The response headers for allowed access requests from applications, such as an XMLHttpRequest object in JavaScript. .
  /// [maxAgeSeconds] The period of time within which the browser can cache the response to an OPTIONS preflight request for the specified resource. Unit: seconds.
  const BucketCorsCorsRule({
    this.allowedHeaders,
    required this.allowedMethods,
    this.allowedOrigins,
    this.exposeHeaders,
    this.maxAgeSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHeaders': ?allowedHeaders,
      'allowedMethods': allowedMethods,
      'allowedOrigins': ?allowedOrigins,
      'exposeHeaders': ?exposeHeaders,
      'maxAgeSeconds': ?maxAgeSeconds,
    };
  }

  factory BucketCorsCorsRule.fromMap(Map<String, dynamic> map) {
    return BucketCorsCorsRule(
      allowedHeaders: (() { final guardedValue = map['allowedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedMethods: pulumi.Input.fromValue((map['allowedMethods'] as List).cast<String>()),
      allowedOrigins: (() { final guardedValue = map['allowedOrigins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      exposeHeaders: (() { final guardedValue = map['exposeHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxAgeSeconds: (() { final guardedValue = map['maxAgeSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

