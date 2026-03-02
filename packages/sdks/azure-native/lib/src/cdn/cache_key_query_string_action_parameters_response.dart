// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the parameters for the cache-key query string action.
class CacheKeyQueryStringActionParametersResponse {
  /// query parameters to include or exclude (comma separated).
  final pulumi.Input<String>? queryParameters;
  /// Caching behavior for the requests
  final pulumi.Input<String> queryStringBehavior;
  /// Expected value is 'DeliveryRuleCacheKeyQueryStringBehaviorActionParameters'.
  final pulumi.Input<String> typeName;

  /// Creates a new [CacheKeyQueryStringActionParametersResponse].
  /// [queryParameters] query parameters to include or exclude (comma separated).
  /// [queryStringBehavior] Caching behavior for the requests
  /// [typeName] Expected value is 'DeliveryRuleCacheKeyQueryStringBehaviorActionParameters'.
  CacheKeyQueryStringActionParametersResponse({
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

  factory CacheKeyQueryStringActionParametersResponse.fromMap(Map<String, dynamic> map) {
    return CacheKeyQueryStringActionParametersResponse(
      queryParameters: map['queryParameters'] == null ? null : (map['queryParameters']! as String).input(),
      queryStringBehavior: (map['queryStringBehavior'] as String).input(),
      typeName: (map['typeName'] as String).input(),
    );
  }
}

