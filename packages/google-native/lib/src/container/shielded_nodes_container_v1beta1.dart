// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of Shielded Nodes feature.
class ShieldedNodesContainerV1beta1 {
  /// Whether Shielded Nodes features are enabled on all nodes in this cluster.
  final bool? enabled;

  /// Creates a new [ShieldedNodesContainerV1beta1].
  /// [enabled] Whether Shielded Nodes features are enabled on all nodes in this cluster.
  ShieldedNodesContainerV1beta1({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ShieldedNodesContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return ShieldedNodesContainerV1beta1(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

