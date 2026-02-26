// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.
class NetworkPolicyConfigResponse2 {
  /// Whether NetworkPolicy is enabled for this cluster.
  final bool disabled;

  NetworkPolicyConfigResponse2({
    required this.disabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    return map;
  }

  factory NetworkPolicyConfigResponse2.fromMap(Map<String, dynamic> map) {
    return NetworkPolicyConfigResponse2(
      disabled: map['disabled'] as bool,
    );
  }
}
