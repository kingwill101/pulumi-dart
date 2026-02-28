// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_backend_service_cdn_policy_cache_key_policy.dart';
import 'region_backend_service_cdn_policy_negative_caching_policy.dart';

class RegionBackendServiceCdnPolicy {
  /// The CacheKeyPolicy for this CdnPolicy.
  /// Structure is documented below.
  final RegionBackendServiceCdnPolicyCacheKeyPolicy? cacheKeyPolicy;

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
  final List<RegionBackendServiceCdnPolicyNegativeCachingPolicy>?
      negativeCachingPolicies;

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

  /// Creates a new [RegionBackendServiceCdnPolicy].
  /// [cacheKeyPolicy] The CacheKeyPolicy for this CdnPolicy.
  /// [cacheMode] Specifies the cache setting for all responses from this backend.
  /// [clientTtl] Specifies the maximum allowed TTL for cached content served by this origin.
  /// [defaultTtl] Specifies the default TTL for cached content served by this origin for responses
  /// [maxTtl] Specifies the maximum allowed TTL for cached content served by this origin.
  /// [negativeCaching] Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects.
  /// [negativeCachingPolicies] Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
  /// [serveWhileStale] Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache.
  /// [signedUrlCacheMaxAgeSec] Maximum number of seconds the response to a signed URL request
  RegionBackendServiceCdnPolicy({
    this.cacheKeyPolicy,
    this.cacheMode,
    this.clientTtl,
    this.defaultTtl,
    this.maxTtl,
    this.negativeCaching,
    this.negativeCachingPolicies,
    this.serveWhileStale,
    this.signedUrlCacheMaxAgeSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
              RegionBackendServiceCdnPolicyNegativeCachingPolicy,
              Map<String, dynamic>>(
          negativeCachingPoliciesValue, (value) => value.toMap());
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

  factory RegionBackendServiceCdnPolicy.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceCdnPolicy(
      cacheKeyPolicy: map['cacheKeyPolicy'] == null
          ? null
          : RegionBackendServiceCdnPolicyCacheKeyPolicy.fromMap(
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
                  RegionBackendServiceCdnPolicyNegativeCachingPolicy>(
              map['negativeCachingPolicies'],
              (value) =>
                  RegionBackendServiceCdnPolicyNegativeCachingPolicy.fromMap(
                      (value as Map).cast<String, dynamic>())),
      serveWhileStale:
          map['serveWhileStale'] == null ? null : map['serveWhileStale'] as int,
      signedUrlCacheMaxAgeSec: map['signedUrlCacheMaxAgeSec'] == null
          ? null
          : map['signedUrlCacheMaxAgeSec'] as int,
    );
  }
}
