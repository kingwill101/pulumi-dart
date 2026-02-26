// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of Shielded Nodes feature.
class ShieldedNodes2 {
  /// Whether Shielded Nodes features are enabled on all nodes in this cluster.
  final bool? enabled;

  ShieldedNodes2({
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

  factory ShieldedNodes2.fromMap(Map<String, dynamic> map) {
    return ShieldedNodes2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
