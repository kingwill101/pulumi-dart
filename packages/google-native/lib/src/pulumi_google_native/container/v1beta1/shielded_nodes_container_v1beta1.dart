// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of Shielded Nodes feature.
class ShieldedNodesContainerV1beta1 {
  /// Whether Shielded Nodes features are enabled on all nodes in this cluster.
  final bool? enabled;

  ShieldedNodesContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory ShieldedNodesContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ShieldedNodesContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
