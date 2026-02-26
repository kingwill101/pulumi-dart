// ignore_for_file: unused_element, unnecessary_cast

class NetworkPolicyExternalIp {
  /// True if the service is enabled; false otherwise.
  final bool? enabled;

  /// (Output)
  /// State of the service. New values may be added to this enum when appropriate.
  final String? state;

  NetworkPolicyExternalIp({
    this.enabled,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory NetworkPolicyExternalIp.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyExternalIp(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
