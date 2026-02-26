// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of Shielded Nodes feature.
class ShieldedNodes {
  /// Whether Shielded Nodes features are enabled on all nodes in this cluster.
  final bool? enabled;

  ShieldedNodes({
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

  factory ShieldedNodes.fromMap(Map<String, dynamic> map) {
    return ShieldedNodes(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
