// ignore_for_file: unused_element, unnecessary_cast

/// A policy that specifies the conditions for resource expiration (i.e., automatic resource deletion).
class ExpirationPolicyResponse {
  /// Optional. Specifies the "time-to-live" duration for an associated resource. The resource expires if it is not active for a period of `ttl`. The definition of "activity" depends on the type of the associated resource. The minimum and maximum allowed values for `ttl` depend on the type of the associated resource, as well. If `ttl` is not set, the associated resource never expires.
  final String ttl;

  /// Creates a new [ExpirationPolicyResponse].
  /// [ttl] Optional. Specifies the "time-to-live" duration for an associated resource. The resource expires if it is not active for a period of `ttl`. The definition of "activity" depends on the type of the associated resource. The minimum and maximum allowed values for `ttl` depend on the type of the associated resource, as well. If `ttl` is not set, the associated resource never expires.
  ExpirationPolicyResponse({
    required this.ttl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ttl'] = ttl;
    return map;
  }

  factory ExpirationPolicyResponse.fromMap(Map<String, dynamic> map) {
    return ExpirationPolicyResponse(
      ttl: map['ttl'] as String,
    );
  }
}
