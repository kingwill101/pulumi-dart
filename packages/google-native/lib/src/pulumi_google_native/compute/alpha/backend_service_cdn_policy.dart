// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'backend_service_cdn_policy_bypass_cache_on_request_header.dart';
import 'backend_service_cdn_policy_cache_mode.dart';
import 'backend_service_cdn_policy_negative_caching_policy.dart';
import 'cache_key_policy.dart';

/// Message containing Cloud CDN configuration for a backend service.
class BackendServiceCdnPolicy {
  /// Bypass the cache when the specified request headers are matched - e.g. Pragma or Authorization headers. Up to 5 headers can be specified. The cache is bypassed for all cdnPolicy.cacheMode settings.
  final List<BackendServiceCdnPolicyBypassCacheOnRequestHeader>?
      bypassCacheOnRequestHeaders;

  /// The CacheKeyPolicy for this CdnPolicy.
  final CacheKeyPolicy? cacheKeyPolicy;

  /// Specifies the cache setting for all responses from this backend. The possible values are: USE_ORIGIN_HEADERS Requires the origin to set valid caching headers to cache content. Responses without these headers will not be cached at Google's edge, and will require a full trip to the origin on every request, potentially impacting performance and increasing load on the origin server. FORCE_CACHE_ALL Cache all content, ignoring any "private", "no-store" or "no-cache" directives in Cache-Control response headers. Warning: this may result in Cloud CDN caching private, per-user (user identifiable) content. CACHE_ALL_STATIC Automatically cache static content, including common image formats, media (video and audio), and web assets (JavaScript and CSS). Requests and responses that are marked as uncacheable, as well as dynamic content (including HTML), will not be cached.
  final BackendServiceCdnPolicyCacheMode? cacheMode;

  /// Specifies a separate client (e.g. browser client) maximum TTL. This is used to clamp the max-age (or Expires) value sent to the client. With FORCE_CACHE_ALL, the lesser of client_ttl and default_ttl is used for the response max-age directive, along with a "public" directive. For cacheable content in CACHE_ALL_STATIC mode, client_ttl clamps the max-age from the origin (if specified), or else sets the response max-age directive to the lesser of the client_ttl and default_ttl, and also ensures a "public" cache-control directive is present. If a client TTL is not specified, a default value (1 hour) will be used. The maximum allowed value is 31,622,400s (1 year).
  final int? clientTtl;

  /// Specifies the default TTL for cached content served by this origin for responses that do not have an existing valid TTL (max-age or s-max-age). Setting a TTL of "0" means "always revalidate". The value of defaultTTL cannot be set to a value greater than that of maxTTL, but can be equal. When the cacheMode is set to FORCE_CACHE_ALL, the defaultTTL will overwrite the TTL set in all responses. The maximum allowed value is 31,622,400s (1 year), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
  final int? defaultTtl;

  /// Specifies the maximum allowed TTL for cached content served by this origin. Cache directives that attempt to set a max-age or s-maxage higher than this, or an Expires header more than maxTTL seconds in the future will be capped at the value of maxTTL, as if it were the value of an s-maxage Cache-Control directive. Headers sent to the client will not be modified. Setting a TTL of "0" means "always revalidate". The maximum allowed value is 31,622,400s (1 year), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
  final int? maxTtl;

  /// Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects. This can reduce the load on your origin and improve end-user experience by reducing response latency. When the cache mode is set to CACHE_ALL_STATIC or USE_ORIGIN_HEADERS, negative caching applies to responses with the specified response code that lack any Cache-Control, Expires, or Pragma: no-cache directives. When the cache mode is set to FORCE_CACHE_ALL, negative caching applies to all responses with the specified response code, and override any caching headers. By default, Cloud CDN will apply the following default TTLs to these status codes: HTTP 300 (Multiple Choice), 301, 308 (Permanent Redirects): 10m HTTP 404 (Not Found), 410 (Gone), 451 (Unavailable For Legal Reasons): 120s HTTP 405 (Method Not Found), 421 (Misdirected Request), 501 (Not Implemented): 60s. These defaults can be overridden in negative_caching_policy.
  final bool? negativeCaching;

  /// Sets a cache TTL for the specified HTTP status code. negative_caching must be enabled to configure negative_caching_policy. Omitting the policy and leaving negative_caching enabled will use Cloud CDN's default cache TTLs. Note that when specifying an explicit negative_caching_policy, you should take care to specify a cache TTL for all response codes that you wish to cache. Cloud CDN will not apply any default negative caching when a policy exists.
  final List<BackendServiceCdnPolicyNegativeCachingPolicy>?
      negativeCachingPolicy;

  /// If true then Cloud CDN will combine multiple concurrent cache fill requests into a small number of requests to the origin.
  final bool? requestCoalescing;

  /// Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache. This setting defines the default "max-stale" duration for any cached responses that do not specify a max-stale directive. Stale responses that exceed the TTL configured here will not be served. The default limit (max-stale) is 86400s (1 day), which will allow stale content to be served up to this limit beyond the max-age (or s-max-age) of a cached response. The maximum allowed value is 604800 (1 week). Set this to zero (0) to disable serve-while-stale.
  final int? serveWhileStale;

  /// Maximum number of seconds the response to a signed URL request will be considered fresh. After this time period, the response will be revalidated before being served. Defaults to 1hr (3600s). When serving responses to signed URL requests, Cloud CDN will internally behave as though all responses from this backend had a "Cache-Control: public, max-age=[TTL]" header, regardless of any existing Cache-Control header. The actual headers served in responses will not be altered.
  final String? signedUrlCacheMaxAgeSec;

  BackendServiceCdnPolicy({
    this.bypassCacheOnRequestHeaders,
    this.cacheKeyPolicy,
    this.cacheMode,
    this.clientTtl,
    this.defaultTtl,
    this.maxTtl,
    this.negativeCaching,
    this.negativeCachingPolicy,
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
      map['cacheMode'] = cacheModeValue.value;
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
    final negativeCachingPolicyValue = negativeCachingPolicy;
    if (negativeCachingPolicyValue != null) {
      map['negativeCachingPolicy'] = Input.encodeList<
              BackendServiceCdnPolicyNegativeCachingPolicy,
              Map<String, dynamic>>(
          negativeCachingPolicyValue, (value) => value.toMap());
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
          : CacheKeyPolicy.fromMap(
              (map['cacheKeyPolicy'] as Map).cast<String, dynamic>()),
      cacheMode: map['cacheMode'] == null
          ? null
          : BackendServiceCdnPolicyCacheMode.fromValue(
              map['cacheMode'] as String),
      clientTtl: map['clientTtl'] == null ? null : map['clientTtl'] as int,
      defaultTtl: map['defaultTtl'] == null ? null : map['defaultTtl'] as int,
      maxTtl: map['maxTtl'] == null ? null : map['maxTtl'] as int,
      negativeCaching: map['negativeCaching'] == null
          ? null
          : map['negativeCaching'] as bool,
      negativeCachingPolicy: map['negativeCachingPolicy'] == null
          ? null
          : Input.decodeList<BackendServiceCdnPolicyNegativeCachingPolicy>(
              map['negativeCachingPolicy'],
              (value) => BackendServiceCdnPolicyNegativeCachingPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      requestCoalescing: map['requestCoalescing'] == null
          ? null
          : map['requestCoalescing'] as bool,
      serveWhileStale:
          map['serveWhileStale'] == null ? null : map['serveWhileStale'] as int,
      signedUrlCacheMaxAgeSec: map['signedUrlCacheMaxAgeSec'] == null
          ? null
          : map['signedUrlCacheMaxAgeSec'] as String,
    );
  }
}
