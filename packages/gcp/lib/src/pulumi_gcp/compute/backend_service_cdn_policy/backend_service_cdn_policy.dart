// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../backend_service_cdn_policy_bypass_cache_on_request_header/backend_service_cdn_policy_bypass_cache_on_request_header.dart';
import '../backend_service_cdn_policy_cache_key_policy/backend_service_cdn_policy_cache_key_policy.dart';
import '../backend_service_cdn_policy_negative_caching_policy/backend_service_cdn_policy_negative_caching_policy.dart';

class BackendServiceCdnPolicy {
  /// Bypass the cache when the specified request headers are matched - e.g. Pragma or Authorization headers. Up to 5 headers can be specified.
  /// The cache is bypassed for all cdnPolicy.cacheMode settings.
  /// Structure is documented below.
  final List<BackendServiceCdnPolicyBypassCacheOnRequestHeader>?
      bypassCacheOnRequestHeaders;

  /// The CacheKeyPolicy for this CdnPolicy.
  /// Structure is documented below.
  final BackendServiceCdnPolicyCacheKeyPolicy? cacheKeyPolicy;

  /// Specifies the cache setting for all responses from this backend.
  /// The possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL and CACHE_ALL_STATIC
  /// Possible values are: `USE_ORIGIN_HEADERS`, `FORCE_CACHE_ALL`, `CACHE_ALL_STATIC`.
  final String? cacheMode;

  /// Specifies the maximum allowed TTL for cached content served by this origin.
  final int? clientTtl;

  /// Specifies the default TTL for cached content served by this origin for responses
  /// that do not have an existing valid TTL (max-age or s-max-age).
  final int? defaultTtl;

  /// Specifies the maximum allowed TTL for cached content served by this origin.
  final int? maxTtl;

  /// Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects.
  final bool? negativeCaching;

  /// Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
  /// Omitting the policy and leaving negativeCaching enabled will use Cloud CDN's default cache TTLs.
  /// Structure is documented below.
  final List<BackendServiceCdnPolicyNegativeCachingPolicy>?
      negativeCachingPolicies;

  /// If true then Cloud CDN will combine multiple concurrent cache fill requests into a small number of requests
  /// to the origin.
  final bool? requestCoalescing;

  /// Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache.
  final int? serveWhileStale;

  /// Maximum number of seconds the response to a signed URL request
  /// will be considered fresh, defaults to 1hr (3600s). After this
  /// time period, the response will be revalidated before
  /// being served.
  /// When serving responses to signed URL requests, Cloud CDN will
  /// internally behave as though all responses from this backend had a
  /// "Cache-Control: public, max-age=[TTL]" header, regardless of any
  /// existing Cache-Control header. The actual headers served in
  /// responses will not be altered.
  final int? signedUrlCacheMaxAgeSec;

  BackendServiceCdnPolicy({
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
      map['bypassCacheOnRequestHeaders'] = Input.encodeList<
              BackendServiceCdnPolicyBypassCacheOnRequestHeader,
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
      map['negativeCachingPolicies'] = Input.encodeList<
              BackendServiceCdnPolicyNegativeCachingPolicy,
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

  factory BackendServiceCdnPolicy.fromMap(Map<String, dynamic> map) {
    return BackendServiceCdnPolicy(
      bypassCacheOnRequestHeaders: map['bypassCacheOnRequestHeaders'] == null
          ? null
          : Input.decodeList<BackendServiceCdnPolicyBypassCacheOnRequestHeader>(
              map['bypassCacheOnRequestHeaders'],
              (value) =>
                  BackendServiceCdnPolicyBypassCacheOnRequestHeader.fromMap(
                      (value as Map).cast<String, dynamic>())),
      cacheKeyPolicy: map['cacheKeyPolicy'] == null
          ? null
          : BackendServiceCdnPolicyCacheKeyPolicy.fromMap(
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
          : Input.decodeList<BackendServiceCdnPolicyNegativeCachingPolicy>(
              map['negativeCachingPolicies'],
              (value) => BackendServiceCdnPolicyNegativeCachingPolicy.fromMap(
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
