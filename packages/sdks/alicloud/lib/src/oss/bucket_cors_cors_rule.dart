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
  BucketCorsCorsRule({
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
      allowedHeaders: map['allowedHeaders'] == null ? null : ((map['allowedHeaders']! as List).cast<String>()).input(),
      allowedMethods: ((map['allowedMethods'] as List).cast<String>()).input(),
      allowedOrigins: map['allowedOrigins'] == null ? null : ((map['allowedOrigins']! as List).cast<String>()).input(),
      exposeHeaders: map['exposeHeaders'] == null ? null : ((map['exposeHeaders']! as List).cast<String>()).input(),
      maxAgeSeconds: map['maxAgeSeconds'] == null ? null : (map['maxAgeSeconds']! as int).input(),
    );
  }
}

