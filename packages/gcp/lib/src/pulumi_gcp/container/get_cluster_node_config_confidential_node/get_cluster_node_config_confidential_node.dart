// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeConfigConfidentialNode {
  /// Defines the type of technology used by the confidential node.
  final String confidentialInstanceType;

  /// Whether Confidential Nodes feature is enabled for all nodes in this pool.
  final bool enabled;

  GetClusterNodeConfigConfidentialNode({
    required this.confidentialInstanceType,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['confidentialInstanceType'] = confidentialInstanceType;
    map['enabled'] = enabled;
    return map;
  }

  factory GetClusterNodeConfigConfidentialNode.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodeConfigConfidentialNode(
      confidentialInstanceType: map['confidentialInstanceType'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}
