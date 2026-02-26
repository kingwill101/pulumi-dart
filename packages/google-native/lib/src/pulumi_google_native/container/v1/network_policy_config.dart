// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.
class NetworkPolicyConfig {
  /// Whether NetworkPolicy is enabled for this cluster.
  final bool? disabled;

  NetworkPolicyConfig({
    this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    return map;
  }

  factory NetworkPolicyConfig.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyConfig(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
    );
  }
}
