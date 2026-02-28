// ignore_for_file: unused_element, unnecessary_cast

class GetSubscriptionExpirationPolicy {
  /// Specifies the "time-to-live" duration for an associated resource. The
  /// resource expires if it is not active for a period of ttl.
  /// If ttl is set to "", the associated resource never expires.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'.
  /// Example - "3.5s".
  final String ttl;

  /// Creates a new [GetSubscriptionExpirationPolicy].
  /// [ttl] Specifies the "time-to-live" duration for an associated resource. The
  GetSubscriptionExpirationPolicy({
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ttl'] = ttl;
    return map;
  }

  factory GetSubscriptionExpirationPolicy.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionExpirationPolicy(
      ttl: map['ttl'] as String,
    );
  }
}
