// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_bucket_cdn_policy_bypass_cache_on_request_header.dart';
import 'backend_bucket_cdn_policy_cache_key_policy.dart';
import 'backend_bucket_cdn_policy_negative_caching_policy.dart';

class BackendBucketCdnPolicy {
  /// Bypass the cache when the specified request headers are matched - e.g. Pragma or Authorization headers. Up to 5 headers can be specified. The cache is bypassed for all cdnPolicy.cacheMode settings.
  /// Structure is documented below.
  final List<BackendBucketCdnPolicyBypassCacheOnRequestHeader>?
      bypassCacheOnRequestHeaders;

  /// The CacheKeyPolicy for this CdnPolicy.
  /// Structure is documented below.
  final BackendBucketCdnPolicyCacheKeyPolicy? cacheKeyPolicy;

  /// Specifies the cache setting for all responses from this backend.
  /// The possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL and CACHE_ALL_STATIC
  /// Possible values are: `USE_ORIGIN_HEADERS`, `FORCE_CACHE_ALL`, `CACHE_ALL_STATIC`.
  final String? cacheMode;

  /// Specifies the maximum allowed TTL for cached content served by this origin. When the
  /// `cache_mode` is set to "USE_ORIGIN_HEADERS", you must omit this field.
  final int? clientTtl;

  /// Specifies the default TTL for cached content served by this origin for responses
  /// that do not have an existing valid TTL (max-age or s-max-age). When the `cache_mode`
  /// is set to "USE_ORIGIN_HEADERS", you must omit this field.
  final int? defaultTtl;

  /// Specifies the maximum allowed TTL for cached content served by this origin. When the
  /// `cache_mode` is set to "USE_ORIGIN_HEADERS", you must omit this field.
  final int? maxTtl;

  /// Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects.
  final bool? negativeCaching;

  /// Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
  /// Omitting the policy and leaving negativeCaching enabled will use Cloud CDN's default cache TTLs.
  /// Structure is documented below.
  final List<BackendBucketCdnPolicyNegativeCachingPolicy>?
      negativeCachingPolicies;

  /// If true then Cloud CDN will combine multiple concurrent cache fill requests into a small number of requests to the origin.
  final bool? requestCoalescing;

  /// Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache.
  final int? serveWhileStale;

  /// Maximum number of seconds the response to a signed URL request will
  /// be considered fresh. After this time period,
  /// the response will be revalidated before being served.
  /// When serving responses to signed URL requests,
  /// Cloud CDN will internally behave as though
  /// all responses from this backend had a "Cache-Control: public,
  /// max-age=[TTL]" header, regardless of any existing Cache-Control
  /// header. The actual headers served in responses will not be altered.
  final int? signedUrlCacheMaxAgeSec;

  /// Creates a new [BackendBucketCdnPolicy].
  /// [bypassCacheOnRequestHeaders] Bypass the cache when the specified request headers are matched - e.g. Pragma or Authorization headers. Up to 5 headers can be specified. The cache is bypassed for all cdnPolicy.cacheMode settings.
  /// [cacheKeyPolicy] The CacheKeyPolicy for this CdnPolicy.
  /// [cacheMode] Specifies the cache setting for all responses from this backend.
  /// [clientTtl] Specifies the maximum allowed TTL for cached content served by this origin. When the
  /// [defaultTtl] Specifies the default TTL for cached content served by this origin for responses
  /// [maxTtl] Specifies the maximum allowed TTL for cached content served by this origin. When the
  /// [negativeCaching] Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects.
  /// [negativeCachingPolicies] Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
  /// [requestCoalescing] If true then Cloud CDN will combine multiple concurrent cache fill requests into a small number of requests to the origin.
  /// [serveWhileStale] Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache.
  /// [signedUrlCacheMaxAgeSec] Maximum number of seconds the response to a signed URL request will
  BackendBucketCdnPolicy({
    this.bypassCacheOnRequestHeaders,
    this.cacheKeyPolicy,
    this.cacheMode,
    this.clientTtl,
    this.defaultTtl,
    this.maxTtl,
    this.negativeCaching,
    this.negativeCachingPolicies,
    this.requestCoalescing,
    this.serveWhileStale,
    this.signedUrlCacheMaxAgeSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bypassCacheOnRequestHeadersValue = bypassCacheOnRequestHeaders;
    if (bypassCacheOnRequestHeadersValue != null) {
      map['bypassCacheOnRequestHeaders'] = pulumi.Input.encodeList<
              BackendBucketCdnPolicyBypassCacheOnRequestHeader,
              Map<String, dynamic>>(
          bypassCacheOnRequestHeadersValue, (value) => value.toMap());
    }
    final cacheKeyPolicyValue = cacheKeyPolicy;
    if (cacheKeyPolicyValue != null) {
      map['cacheKeyPolicy'] = cacheKeyPolicyValue.toMap();
    }
    final cacheModeValue = cacheMode;
    if (cacheModeValue != null) {
      map['cacheMode'] = cacheModeValue;
    }
    final clientTtlValue = clientTtl;
    if (clientTtlValue != null) {
      map['clientTtl'] = clientTtlValue;
    }
    final defaultTtlValue = defaultTtl;
    if (defaultTtlValue != null) {
      map['defaultTtl'] = defaultTtlValue;
    }
    final maxTtlValue = maxTtl;
    if (maxTtlValue != null) {
      map['maxTtl'] = maxTtlValue;
    }
    final negativeCachingValue = negativeCaching;
    if (negativeCachingValue != null) {
      map['negativeCaching'] = negativeCachingValue;
    }
    final negativeCachingPoliciesValue = negativeCachingPolicies;
    if (negativeCachingPoliciesValue != null) {
      map['negativeCachingPolicies'] = pulumi.Input.encodeList<
              BackendBucketCdnPolicyNegativeCachingPolicy,
              Map<String, dynamic>>(
          negativeCachingPoliciesValue, (value) => value.toMap());
    }
    final requestCoalescingValue = requestCoalescing;
    if (requestCoalescingValue != null) {
      map['requestCoalescing'] = requestCoalescingValue;
    }
    final serveWhileStaleValue = serveWhileStale;
    if (serveWhileStaleValue != null) {
      map['serveWhileStale'] = serveWhileStaleValue;
    }
    final signedUrlCacheMaxAgeSecValue = signedUrlCacheMaxAgeSec;
    if (signedUrlCacheMaxAgeSecValue != null) {
      map['signedUrlCacheMaxAgeSec'] = signedUrlCacheMaxAgeSecValue;
    }
    return map;
  }

  factory BackendBucketCdnPolicy.fromMap(Map<String, dynamic> map) {
    return BackendBucketCdnPolicy(
      bypassCacheOnRequestHeaders: map['bypassCacheOnRequestHeaders'] == null
          ? null
          : pulumi.Input.decodeList<
                  BackendBucketCdnPolicyBypassCacheOnRequestHeader>(
              map['bypassCacheOnRequestHeaders'],
              (value) =>
                  BackendBucketCdnPolicyBypassCacheOnRequestHeader.fromMap(
                      (value as Map).cast<String, dynamic>())),
      cacheKeyPolicy: map['cacheKeyPolicy'] == null
          ? null
          : BackendBucketCdnPolicyCacheKeyPolicy.fromMap(
              (map['cacheKeyPolicy'] as Map).cast<String, dynamic>()),
      cacheMode: map['cacheMode'] == null ? null : map['cacheMode'] as String,
      clientTtl: map['clientTtl'] == null ? null : map['clientTtl'] as int,
      defaultTtl: map['defaultTtl'] == null ? null : map['defaultTtl'] as int,
      maxTtl: map['maxTtl'] == null ? null : map['maxTtl'] as int,
      negativeCaching: map['negativeCaching'] == null
          ? null
          : map['negativeCaching'] as bool,
      negativeCachingPolicies: map['negativeCachingPolicies'] == null
          ? null
          : pulumi.Input.decodeList<
                  BackendBucketCdnPolicyNegativeCachingPolicy>(
              map['negativeCachingPolicies'],
              (value) => BackendBucketCdnPolicyNegativeCachingPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      requestCoalescing: map['requestCoalescing'] == null
          ? null
          : map['requestCoalescing'] as bool,
      serveWhileStale:
          map['serveWhileStale'] == null ? null : map['serveWhileStale'] as int,
      signedUrlCacheMaxAgeSec: map['signedUrlCacheMaxAgeSec'] == null
          ? null
          : map['signedUrlCacheMaxAgeSec'] as int,
    );
  }
}
