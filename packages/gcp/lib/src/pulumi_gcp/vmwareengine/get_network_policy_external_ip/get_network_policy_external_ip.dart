// ignore_for_file: unused_element, unnecessary_cast

class GetNetworkPolicyExternalIp {
  /// True if the service is enabled; false otherwise.
  final bool enabled;

  /// State of the service. New values may be added to this enum when appropriate.
  final String state;

  GetNetworkPolicyExternalIp({
    required this.enabled,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['state'] = state;
    return map;
  }

  factory GetNetworkPolicyExternalIp.fromMap(Map<String, dynamic> map) {
    return GetNetworkPolicyExternalIp(
      enabled: map['enabled'] as bool,
      state: map['state'] as String,
    );
  }
}
