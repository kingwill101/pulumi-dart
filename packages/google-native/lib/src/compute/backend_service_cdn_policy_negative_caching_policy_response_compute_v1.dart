// ignore_for_file: unused_element, unnecessary_cast

/// Specify CDN TTLs for response error codes.
class BackendServiceCdnPolicyNegativeCachingPolicyResponseComputeV1 {
  /// The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 302, 307, 308, 404, 405, 410, 421, 451 and 501 are can be specified as values, and you cannot specify a status code more than once.
  final int code;

  /// The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s (30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
  final int ttl;

  /// Creates a new [BackendServiceCdnPolicyNegativeCachingPolicyResponseComputeV1].
  /// [code] The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 302, 307, 308, 404, 405, 410, 421, 451 and 501 are can be specified as values, and you cannot specify a status code more than once.
  /// [ttl] The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s (30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
  BackendServiceCdnPolicyNegativeCachingPolicyResponseComputeV1({
    required this.code,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'code': code, 'ttl': ttl};
  }

  factory BackendServiceCdnPolicyNegativeCachingPolicyResponseComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackendServiceCdnPolicyNegativeCachingPolicyResponseComputeV1(
      code: map['code'] as int,
      ttl: map['ttl'] as int,
    );
  }
}
