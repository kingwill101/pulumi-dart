// ignore_for_file: unused_element, unnecessary_cast

class GetClusterConfidentialNode {
  /// Defines the type of technology used by the confidential node.
  final String confidentialInstanceType;

  /// Whether Confidential Nodes feature is enabled for all nodes in this cluster.
  final bool enabled;

  /// Creates a new [GetClusterConfidentialNode].
  /// [confidentialInstanceType] Defines the type of technology used by the confidential node.
  /// [enabled] Whether Confidential Nodes feature is enabled for all nodes in this cluster.
  GetClusterConfidentialNode({
    required this.confidentialInstanceType,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': confidentialInstanceType,
      'enabled': enabled,
    };
  }

  factory GetClusterConfidentialNode.fromMap(Map<String, dynamic> map) {
    return GetClusterConfidentialNode(
      confidentialInstanceType: map['confidentialInstanceType'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}
