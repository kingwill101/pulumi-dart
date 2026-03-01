// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of Shielded Nodes feature.
class ShieldedNodesResponse {
  /// Whether Shielded Nodes features are enabled on all nodes in this cluster.
  final bool enabled;

  /// Creates a new [ShieldedNodesResponse].
  /// [enabled] Whether Shielded Nodes features are enabled on all nodes in this cluster.
  ShieldedNodesResponse({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory ShieldedNodesResponse.fromMap(Map<String, dynamic> map) {
    return ShieldedNodesResponse(enabled: map['enabled'] as bool);
  }
}
