// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of Shielded Nodes feature.
class ShieldedNodesResponse2 {
  /// Whether Shielded Nodes features are enabled on all nodes in this cluster.
  final bool enabled;

  ShieldedNodesResponse2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ShieldedNodesResponse2.fromMap(Map<String, dynamic> map) {
    return ShieldedNodesResponse2(
      enabled: map['enabled'] as bool,
    );
  }
}
