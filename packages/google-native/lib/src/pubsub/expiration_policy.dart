// ignore_for_file: unused_element, unnecessary_cast

/// A policy that specifies the conditions for resource expiration (i.e., automatic resource deletion).
class ExpirationPolicy {
  /// Optional. Specifies the "time-to-live" duration for an associated resource. The resource expires if it is not active for a period of `ttl`. The definition of "activity" depends on the type of the associated resource. The minimum and maximum allowed values for `ttl` depend on the type of the associated resource, as well. If `ttl` is not set, the associated resource never expires.
  final String? ttl;

  /// Creates a new [ExpirationPolicy].
  /// [ttl] Optional. Specifies the "time-to-live" duration for an associated resource. The resource expires if it is not active for a period of `ttl`. The definition of "activity" depends on the type of the associated resource. The minimum and maximum allowed values for `ttl` depend on the type of the associated resource, as well. If `ttl` is not set, the associated resource never expires.
  ExpirationPolicy({
    this.ttl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ttlValue = ttl;
    if (ttlValue != null) {
      map['ttl'] = ttlValue;
    }
    return map;
  }

  factory ExpirationPolicy.fromMap(Map<String, dynamic> map) {
    return ExpirationPolicy(
      ttl: map['ttl'] == null ? null : map['ttl'] as String,
    );
  }
}
