// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_ordered_cache_behavior_forwarded_values_cookies.dart';

class DistributionOrderedCacheBehaviorForwardedValues {
  /// The forwarded values cookies that specifies how CloudFront handles cookies (maximum one).
  final pulumi.Input<DistributionOrderedCacheBehaviorForwardedValuesCookies> cookies;
  /// Headers, if any, that you want CloudFront to vary upon for this cache behavior. Specify `*` to include all headers.
  final pulumi.Input<List<String>>? headers;
  /// Indicates whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior.
  final pulumi.Input<bool> queryString;
  /// When specified, along with a value of `true` for `query_string`, all query strings are forwarded, however only the query string keys listed in this argument are cached. When omitted with a value of `true` for `query_string`, all query string keys are cached.
  final pulumi.Input<List<String>>? queryStringCacheKeys;

  /// Creates a new [DistributionOrderedCacheBehaviorForwardedValues].
  /// [cookies] The forwarded values cookies that specifies how CloudFront handles cookies (maximum one).
  /// [headers] Headers, if any, that you want CloudFront to vary upon for this cache behavior. Specify `*` to include all headers.
  /// [queryString] Indicates whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior.
  /// [queryStringCacheKeys] When specified, along with a value of `true` for `query_string`, all query strings are forwarded, however only the query string keys listed in this argument are cached. When omitted with a value of `true` for `query_string`, all query string keys are cached.
  DistributionOrderedCacheBehaviorForwardedValues({
    required this.cookies,
    this.headers,
    required this.queryString,
    this.queryStringCacheKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookies': pulumi.Input.mapInputValue<DistributionOrderedCacheBehaviorForwardedValuesCookies, Map<String, dynamic>>(cookies, (value) => value.toMap()),
      'headers': ?headers,
      'queryString': queryString,
      'queryStringCacheKeys': ?queryStringCacheKeys,
    };
  }

  factory DistributionOrderedCacheBehaviorForwardedValues.fromMap(Map<String, dynamic> map) {
    return DistributionOrderedCacheBehaviorForwardedValues(
      cookies: pulumi.Input.fromValue(DistributionOrderedCacheBehaviorForwardedValuesCookies.fromMap((map['cookies']! as Map).cast<String, dynamic>())),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      queryString: pulumi.Input.fromValue(map['queryString'] as bool),
      queryStringCacheKeys: (() { final guardedValue = map['queryStringCacheKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

