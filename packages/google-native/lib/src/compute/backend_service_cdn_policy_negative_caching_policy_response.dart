// ignore_for_file: unused_element, unnecessary_cast

/// Specify CDN TTLs for response error codes.
class BackendServiceCdnPolicyNegativeCachingPolicyResponse {
  /// The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 302, 307, 308, 404, 405, 410, 421, 451 and 501 are can be specified as values, and you cannot specify a status code more than once.
  final int code;

  /// The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s (30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
  final int ttl;

  /// Creates a new [BackendServiceCdnPolicyNegativeCachingPolicyResponse].
  /// [code] The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 302, 307, 308, 404, 405, 410, 421, 451 and 501 are can be specified as values, and you cannot specify a status code more than once.
  /// [ttl] The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s (30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
  BackendServiceCdnPolicyNegativeCachingPolicyResponse({
    required this.code,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['ttl'] = ttl;
    return map;
  }

  factory BackendServiceCdnPolicyNegativeCachingPolicyResponse.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceCdnPolicyNegativeCachingPolicyResponse(
      code: map['code'] as int,
      ttl: map['ttl'] as int,
    );
  }
}
