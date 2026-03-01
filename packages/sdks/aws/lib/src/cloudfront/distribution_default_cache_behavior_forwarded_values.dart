// ignore_for_file: unused_element, unnecessary_cast

import 'distribution_default_cache_behavior_forwarded_values_cookies.dart';

class DistributionDefaultCacheBehaviorForwardedValues {
  /// The forwarded values cookies that specifies how CloudFront handles cookies (maximum one).
  final DistributionDefaultCacheBehaviorForwardedValuesCookies cookies;
  /// Headers, if any, that you want CloudFront to vary upon for this cache behavior. Specify `*` to include all headers.
  final List<String>? headers;
  /// Indicates whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior.
  final bool queryString;
  /// When specified, along with a value of `true` for `query_string`, all query strings are forwarded, however only the query string keys listed in this argument are cached. When omitted with a value of `true` for `query_string`, all query string keys are cached.
  final List<String>? queryStringCacheKeys;

  /// Creates a new [DistributionDefaultCacheBehaviorForwardedValues].
  /// [cookies] The forwarded values cookies that specifies how CloudFront handles cookies (maximum one).
  /// [headers] Headers, if any, that you want CloudFront to vary upon for this cache behavior. Specify `*` to include all headers.
  /// [queryString] Indicates whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior.
  /// [queryStringCacheKeys] When specified, along with a value of `true` for `query_string`, all query strings are forwarded, however only the query string keys listed in this argument are cached. When omitted with a value of `true` for `query_string`, all query string keys are cached.
  DistributionDefaultCacheBehaviorForwardedValues({
    required this.cookies,
    this.headers,
    required this.queryString,
    this.queryStringCacheKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookies': cookies.toMap(),
      'headers': ?headers,
      'queryString': queryString,
      'queryStringCacheKeys': ?queryStringCacheKeys,
    };
  }

  factory DistributionDefaultCacheBehaviorForwardedValues.fromMap(Map<String, dynamic> map) {
    return DistributionDefaultCacheBehaviorForwardedValues(
      cookies: DistributionDefaultCacheBehaviorForwardedValuesCookies.fromMap((map['cookies'] as Map).cast<String, dynamic>()),
      headers: map['headers'] == null ? null : (map['headers'] as List).cast<String>(),
      queryString: map['queryString'] as bool,
      queryStringCacheKeys: map['queryStringCacheKeys'] == null ? null : (map['queryStringCacheKeys'] as List).cast<String>(),
    );
  }
}

