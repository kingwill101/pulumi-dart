// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the parameters for the cache-key query string action.
class CacheKeyQueryStringActionParameters {
  /// query parameters to include or exclude (comma separated).
  final pulumi.Input<String>? queryParameters;
  /// Caching behavior for the requests
  final pulumi.Input<String> queryStringBehavior;
  /// Expected value is 'DeliveryRuleCacheKeyQueryStringBehaviorActionParameters'.
  final pulumi.Input<String> typeName;

  /// Creates a new [CacheKeyQueryStringActionParameters].
  /// [queryParameters] query parameters to include or exclude (comma separated).
  /// [queryStringBehavior] Caching behavior for the requests
  /// [typeName] Expected value is 'DeliveryRuleCacheKeyQueryStringBehaviorActionParameters'.
  CacheKeyQueryStringActionParameters({
    this.queryParameters,
    required this.queryStringBehavior,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryParameters': ?queryParameters,
      'queryStringBehavior': queryStringBehavior,
      'typeName': typeName,
    };
  }

  factory CacheKeyQueryStringActionParameters.fromMap(Map<String, dynamic> map) {
    return CacheKeyQueryStringActionParameters(
      queryParameters: map['queryParameters'] == null ? null : (map['queryParameters']! as String).input(),
      queryStringBehavior: (map['queryStringBehavior'] as String).input(),
      typeName: (map['typeName'] as String).input(),
    );
  }
}

