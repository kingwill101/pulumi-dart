// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolNodeConfigConfidentialNode {
  /// Defines the type of technology used by the confidential node.
  final String confidentialInstanceType;

  /// Whether Confidential Nodes feature is enabled for all nodes in this pool.
  final bool enabled;

  /// Creates a new [GetClusterNodePoolNodeConfigConfidentialNode].
  /// [confidentialInstanceType] Defines the type of technology used by the confidential node.
  /// [enabled] Whether Confidential Nodes feature is enabled for all nodes in this pool.
  GetClusterNodePoolNodeConfigConfidentialNode({
    required this.confidentialInstanceType,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': confidentialInstanceType,
      'enabled': enabled,
    };
  }

  factory GetClusterNodePoolNodeConfigConfidentialNode.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetClusterNodePoolNodeConfigConfidentialNode(
      confidentialInstanceType: map['confidentialInstanceType'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}
