// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketsBucketCorsRule {
  /// Control whether the headers specified by Access-Control-Request-Headers in the OPTIONS prefetch command are allowed. Each header specified by Access-Control-Request-Headers must match a value in AllowedHeader. Each rule allows up to one wildcard “*” .
  final pulumi.Input<List<String>> allowedHeaders;
  /// Specify the allowed methods for cross-domain requests. Possible values: `GET`, `PUT`, `DELETE`, `POST` and `HEAD`.
  final pulumi.Input<List<String>> allowedMethods;
  /// The origins allowed for cross-domain requests. Multiple elements can be used to specify multiple allowed origins. Each rule allows up to one wildcard "\*". If "\*" is specified, cross-domain requests of all origins are allowed.
  final pulumi.Input<List<String>> allowedOrigins;
  /// Specify the response headers allowing users to access from an application (for example, a Javascript XMLHttpRequest object). The wildcard "\*" is not allowed.
  final pulumi.Input<List<String>> exposeHeaders;
  /// Specify the cache time for the returned result of a browser prefetch (OPTIONS) request to a specific resource.
  final pulumi.Input<int> maxAgeSeconds;

  /// Creates a new [GetBucketsBucketCorsRule].
  /// [allowedHeaders] Control whether the headers specified by Access-Control-Request-Headers in the OPTIONS prefetch command are allowed. Each header specified by Access-Control-Request-Headers must match a value in AllowedHeader. Each rule allows up to one wildcard “*” .
  /// [allowedMethods] Specify the allowed methods for cross-domain requests. Possible values: `GET`, `PUT`, `DELETE`, `POST` and `HEAD`.
  /// [allowedOrigins] The origins allowed for cross-domain requests. Multiple elements can be used to specify multiple allowed origins. Each rule allows up to one wildcard "\*". If "\*" is specified, cross-domain requests of all origins are allowed.
  /// [exposeHeaders] Specify the response headers allowing users to access from an application (for example, a Javascript XMLHttpRequest object). The wildcard "\*" is not allowed.
  /// [maxAgeSeconds] Specify the cache time for the returned result of a browser prefetch (OPTIONS) request to a specific resource.
  GetBucketsBucketCorsRule({
    required this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    required this.exposeHeaders,
    required this.maxAgeSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHeaders': allowedHeaders,
      'allowedMethods': allowedMethods,
      'allowedOrigins': allowedOrigins,
      'exposeHeaders': exposeHeaders,
      'maxAgeSeconds': maxAgeSeconds,
    };
  }

  factory GetBucketsBucketCorsRule.fromMap(Map<String, dynamic> map) {
    return GetBucketsBucketCorsRule(
      allowedHeaders: ((map['allowedHeaders'] as List).cast<String>()).input(),
      allowedMethods: ((map['allowedMethods'] as List).cast<String>()).input(),
      allowedOrigins: ((map['allowedOrigins'] as List).cast<String>()).input(),
      exposeHeaders: ((map['exposeHeaders'] as List).cast<String>()).input(),
      maxAgeSeconds: (map['maxAgeSeconds'] as int).input(),
    );
  }
}

