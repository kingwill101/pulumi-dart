// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_backend_service_cdn_policy_bypass_cache_on_request_header/get_backend_service_cdn_policy_bypass_cache_on_request_header.dart';
import '../get_backend_service_cdn_policy_cache_key_policy/get_backend_service_cdn_policy_cache_key_policy.dart';
import '../get_backend_service_cdn_policy_negative_caching_policy/get_backend_service_cdn_policy_negative_caching_policy.dart';

class GetBackendServiceCdnPolicy {
  /// Bypass the cache when the specified request headers are matched - e.g. Pragma or Authorization headers. Up to 5 headers can be specified.
  /// The cache is bypassed for all cdnPolicy.cacheMode settings.
  final List<GetBackendServiceCdnPolicyBypassCacheOnRequestHeader>
      bypassCacheOnRequestHeaders;

  /// The CacheKeyPolicy for this CdnPolicy.
  final List<GetBackendServiceCdnPolicyCacheKeyPolicy> cacheKeyPolicies;

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
  final List<GetBackendServiceCdnPolicyNegativeCachingPolicy>
      negativeCachingPolicies;

  /// If true then Cloud CDN will combine multiple concurrent cache fill requests into a small number of requests
  /// to the origin.
  final bool requestCoalescing;

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

  GetBackendServiceCdnPolicy({
    required this.bypassCacheOnRequestHeaders,
    required this.cacheKeyPolicies,
    required this.cacheMode,
    required this.clientTtl,
    required this.defaultTtl,
    required this.maxTtl,
    required this.negativeCaching,
    required this.negativeCachingPolicies,
    required this.requestCoalescing,
    required this.serveWhileStale,
    required this.signedUrlCacheMaxAgeSec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bypassCacheOnRequestHeaders'] = pulumi.Input.encodeList<
            GetBackendServiceCdnPolicyBypassCacheOnRequestHeader,
            Map<String, dynamic>>(
        bypassCacheOnRequestHeaders, (value) => value.toMap());
    map['cacheKeyPolicies'] = pulumi.Input.encodeList<
        GetBackendServiceCdnPolicyCacheKeyPolicy,
        Map<String, dynamic>>(cacheKeyPolicies, (value) => value.toMap());
    map['cacheMode'] = cacheMode;
    map['clientTtl'] = clientTtl;
    map['defaultTtl'] = defaultTtl;
    map['maxTtl'] = maxTtl;
    map['negativeCaching'] = negativeCaching;
    map['negativeCachingPolicies'] = pulumi.Input.encodeList<
            GetBackendServiceCdnPolicyNegativeCachingPolicy,
            Map<String, dynamic>>(
        negativeCachingPolicies, (value) => value.toMap());
    map['requestCoalescing'] = requestCoalescing;
    map['serveWhileStale'] = serveWhileStale;
    map['signedUrlCacheMaxAgeSec'] = signedUrlCacheMaxAgeSec;
    return map;
  }

  factory GetBackendServiceCdnPolicy.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceCdnPolicy(
      bypassCacheOnRequestHeaders: pulumi.Input.decodeList<
              GetBackendServiceCdnPolicyBypassCacheOnRequestHeader>(
          map['bypassCacheOnRequestHeaders'],
          (value) =>
              GetBackendServiceCdnPolicyBypassCacheOnRequestHeader.fromMap(
                  (value as Map).cast<String, dynamic>())),
      cacheKeyPolicies:
          pulumi.Input.decodeList<GetBackendServiceCdnPolicyCacheKeyPolicy>(
              map['cacheKeyPolicies'],
              (value) => GetBackendServiceCdnPolicyCacheKeyPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      cacheMode: map['cacheMode'] as String,
      clientTtl: map['clientTtl'] as int,
      defaultTtl: map['defaultTtl'] as int,
      maxTtl: map['maxTtl'] as int,
      negativeCaching: map['negativeCaching'] as bool,
      negativeCachingPolicies: pulumi.Input.decodeList<
              GetBackendServiceCdnPolicyNegativeCachingPolicy>(
          map['negativeCachingPolicies'],
          (value) => GetBackendServiceCdnPolicyNegativeCachingPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      requestCoalescing: map['requestCoalescing'] as bool,
      serveWhileStale: map['serveWhileStale'] as int,
      signedUrlCacheMaxAgeSec: map['signedUrlCacheMaxAgeSec'] as int,
    );
  }
}
