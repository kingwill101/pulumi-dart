// ignore_for_file: unused_element, unnecessary_cast

class GetClusterConfidentialNode {
  /// Defines the type of technology used by the confidential node.
  final String confidentialInstanceType;

  /// Whether Confidential Nodes feature is enabled for all nodes in this cluster.
  final bool enabled;

  GetClusterConfidentialNode({
    required this.confidentialInstanceType,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['confidentialInstanceType'] = confidentialInstanceType;
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterConfidentialNode.fromMap(Map<String, dynamic> map) {
    return GetClusterConfidentialNode(
      confidentialInstanceType: map['confidentialInstanceType'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}
