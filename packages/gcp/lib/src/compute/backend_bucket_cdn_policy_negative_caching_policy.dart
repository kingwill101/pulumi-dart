// ignore_for_file: unused_element, unnecessary_cast

class BackendBucketCdnPolicyNegativeCachingPolicy {
  /// The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 308, 404, 405, 410, 421, 451 and 501
  /// can be specified as values, and you cannot specify a status code more than once.
  final int? code;

  /// The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s
  /// (30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL.
  final int? ttl;

  /// Creates a new [BackendBucketCdnPolicyNegativeCachingPolicy].
  /// [code] The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 308, 404, 405, 410, 421, 451 and 501
  /// [ttl] The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s
  BackendBucketCdnPolicyNegativeCachingPolicy({
    this.code,
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeValue = code;
    if (codeValue != null) {
      map['code'] = codeValue;
    }
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    return map;
  }

  factory BackendBucketCdnPolicyNegativeCachingPolicy.fromMap(
      Map<String, dynamic> map) {
    return BackendBucketCdnPolicyNegativeCachingPolicy(
      code: map['code'] == null ? null : map['code'] as int,
      ttl: map['ttl'] == null ? null : map['ttl'] as int,
    );
  }
}
