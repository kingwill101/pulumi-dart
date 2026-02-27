// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of Shielded Nodes feature.
class ShieldedNodesResponseContainerV1beta1 {
  /// Whether Shielded Nodes features are enabled on all nodes in this cluster.
  final bool enabled;

  ShieldedNodesResponseContainerV1beta1({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ShieldedNodesResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return ShieldedNodesResponseContainerV1beta1(
      enabled: map['enabled'] as bool,
    );
  }
}
