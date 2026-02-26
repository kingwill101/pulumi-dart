// ignore_for_file: unused_element, unnecessary_cast

import '../distribution_default_cache_behavior_forwarded_values_cookies/distribution_default_cache_behavior_forwarded_values_cookies.dart';

class DistributionDefaultCacheBehaviorForwardedValues {
  /// The forwarded values cookies that specifies how CloudFront handles cookies (maximum one).
  final DistributionDefaultCacheBehaviorForwardedValuesCookies cookies;

  /// Headers, if any, that you want CloudFront to vary upon for this cache behavior. Specify `*` to include all headers.
  final List<String>? headers;

  /// Indicates whether you want CloudFront to forward query strings to the origin that is associated with this cache behavior.
  final bool queryString;

  /// When specified, along with a value of <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> for <span pulumi-lang-nodejs="`queryString`" pulumi-lang-dotnet="`QueryString`" pulumi-lang-go="`queryString`" pulumi-lang-python="`query_string`" pulumi-lang-yaml="`queryString`" pulumi-lang-java="`queryString`">`query_string`</span>, all query strings are forwarded, however only the query string keys listed in this argument are cached. When omitted with a value of <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> for <span pulumi-lang-nodejs="`queryString`" pulumi-lang-dotnet="`QueryString`" pulumi-lang-go="`queryString`" pulumi-lang-python="`query_string`" pulumi-lang-yaml="`queryString`" pulumi-lang-java="`queryString`">`query_string`</span>, all query string keys are cached.
  final List<String>? queryStringCacheKeys;

  DistributionDefaultCacheBehaviorForwardedValues({
    required this.cookies,
    this.headers,
    required this.queryString,
    this.queryStringCacheKeys,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cookies'] = cookies.toMap();
    final headersValue = headers;
    if (headersValue != null) {
      map['headers'] = headersValue;
    }
    map['queryString'] = queryString;
    final queryStringCacheKeysValue = queryStringCacheKeys;
    if (queryStringCacheKeysValue != null) {
      map['queryStringCacheKeys'] = queryStringCacheKeysValue;
    }
    return map;
  }

  factory DistributionDefaultCacheBehaviorForwardedValues.fromMap(
      Map<String, dynamic> map) {
    return DistributionDefaultCacheBehaviorForwardedValues(
      cookies: DistributionDefaultCacheBehaviorForwardedValuesCookies.fromMap(
          (map['cookies'] as Map).cast<String, dynamic>()),
      headers: map['headers'] == null
          ? null
          : (map['headers'] as List).cast<String>(),
      queryString: map['queryString'] as bool,
      queryStringCacheKeys: map['queryStringCacheKeys'] == null
          ? null
          : (map['queryStringCacheKeys'] as List).cast<String>(),
    );
  }
}
