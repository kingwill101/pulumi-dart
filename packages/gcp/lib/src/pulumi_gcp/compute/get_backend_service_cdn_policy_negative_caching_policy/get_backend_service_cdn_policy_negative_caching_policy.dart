// ignore_for_file: unused_element, unnecessary_cast

class GetBackendServiceCdnPolicyNegativeCachingPolicy {
  /// The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 308, 404, 405, 410, 421, 451 and 501
  /// can be specified as values, and you cannot specify a status code more than once.
  final int code;

  /// The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s
  /// (30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
  final int ttl;

  GetBackendServiceCdnPolicyNegativeCachingPolicy({
    required this.code,
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['ttl'] = ttl;
    return map;
  }

  factory GetBackendServiceCdnPolicyNegativeCachingPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetBackendServiceCdnPolicyNegativeCachingPolicy(
      code: map['code'] as int,
      ttl: map['ttl'] as int,
    );
  }
}
