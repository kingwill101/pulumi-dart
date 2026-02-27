// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_region_backend_service_cdn_policy_cache_key_policy/get_region_backend_service_cdn_policy_cache_key_policy.dart';
import '../get_region_backend_service_cdn_policy_negative_caching_policy/get_region_backend_service_cdn_policy_negative_caching_policy.dart';

class GetRegionBackendServiceCdnPolicy {
  /// The CacheKeyPolicy for this CdnPolicy.
  final List<GetRegionBackendServiceCdnPolicyCacheKeyPolicy> cacheKeyPolicies;

  /// Specifies the cache setting for all responses from this backend.
  /// The possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL and CACHE_ALL_STATIC Possible values: ["USE_ORIGIN_HEADERS", "FORCE_CACHE_ALL", "CACHE_ALL_STATIC"]
  final String cacheMode;

  /// Specifies the maximum allowed TTL for cached content served by this origin.
  final int clientTtl;

  /// Specifies the default TTL for cached content served by this origin for responses
  /// that do not have an existing valid TTL (max-age or s-max-age).
  final int defaultTtl;

  /// Specifies the maximum allowed TTL for cached content served by this origin.
  final int maxTtl;

  /// Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects.
  final bool negativeCaching;

  /// Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
  /// Omitting the policy and leaving negativeCaching enabled will use Cloud CDN's default cache TTLs.
  final List<GetRegionBackendServiceCdnPolicyNegativeCachingPolicy>
      negativeCachingPolicies;

  /// Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache.
  final int serveWhileStale;

  /// Maximum number of seconds the response to a signed URL request
  /// will be considered fresh, defaults to 1hr (3600s). After this
  /// time period, the response will be revalidated before
  /// being served.
  ///
  /// When serving responses to signed URL requests, Cloud CDN will
  /// internally behave as though all responses from this backend had a
  /// "Cache-Control: public, max-age=[TTL]" header, regardless of any
  /// existing Cache-Control header. The actual headers served in
  /// responses will not be altered.
  final int signedUrlCacheMaxAgeSec;

  GetRegionBackendServiceCdnPolicy({
    required this.cacheKeyPolicies,
    required this.cacheMode,
    required this.clientTtl,
    required this.defaultTtl,
    required this.maxTtl,
    required this.negativeCaching,
    required this.negativeCachingPolicies,
    required this.serveWhileStale,
    required this.signedUrlCacheMaxAgeSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cacheKeyPolicies'] = pulumi.Input.encodeList<
        GetRegionBackendServiceCdnPolicyCacheKeyPolicy,
        Map<String, dynamic>>(cacheKeyPolicies, (value) => value.toMap());
    map['cacheMode'] = cacheMode;
    map['clientTtl'] = clientTtl;
    map['defaultTtl'] = defaultTtl;
    map['maxTtl'] = maxTtl;
    map['negativeCaching'] = negativeCaching;
    map['negativeCachingPolicies'] = pulumi.Input.encodeList<
            GetRegionBackendServiceCdnPolicyNegativeCachingPolicy,
            Map<String, dynamic>>(
        negativeCachingPolicies, (value) => value.toMap());
    map['serveWhileStale'] = serveWhileStale;
    map['signedUrlCacheMaxAgeSec'] = signedUrlCacheMaxAgeSec;
    return map;
  }

  factory GetRegionBackendServiceCdnPolicy.fromMap(Map<String, dynamic> map) {
    return GetRegionBackendServiceCdnPolicy(
      cacheKeyPolicies: pulumi.Input.decodeList<
              GetRegionBackendServiceCdnPolicyCacheKeyPolicy>(
          map['cacheKeyPolicies'],
          (value) => GetRegionBackendServiceCdnPolicyCacheKeyPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      cacheMode: map['cacheMode'] as String,
      clientTtl: map['clientTtl'] as int,
      defaultTtl: map['defaultTtl'] as int,
      maxTtl: map['maxTtl'] as int,
      negativeCaching: map['negativeCaching'] as bool,
      negativeCachingPolicies: pulumi.Input.decodeList<
              GetRegionBackendServiceCdnPolicyNegativeCachingPolicy>(
          map['negativeCachingPolicies'],
          (value) =>
              GetRegionBackendServiceCdnPolicyNegativeCachingPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      serveWhileStale: map['serveWhileStale'] as int,
      signedUrlCacheMaxAgeSec: map['signedUrlCacheMaxAgeSec'] as int,
    );
  }
}
