// ignore_for_file: unused_element, unnecessary_cast

class NodePoolNodeConfigConfidentialNodes {
  /// Defines the type of technology used by the confidential node.
  final String? confidentialInstanceType;

  /// Whether Confidential Nodes feature is enabled for all nodes in this pool.
  final bool enabled;

  /// Creates a new [NodePoolNodeConfigConfidentialNodes].
  /// [confidentialInstanceType] Defines the type of technology used by the confidential node.
  /// [enabled] Whether Confidential Nodes feature is enabled for all nodes in this pool.
  NodePoolNodeConfigConfidentialNodes({
    this.confidentialInstanceType,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final confidentialInstanceTypeValue = confidentialInstanceType;
    if (confidentialInstanceTypeValue != null) {
      map['confidentialInstanceType'] = confidentialInstanceTypeValue;
    }
    map['enabled'] = enabled;
    return map;
  }

  factory NodePoolNodeConfigConfidentialNodes.fromMap(
      Map<String, dynamic> map) {
    return NodePoolNodeConfigConfidentialNodes(
      confidentialInstanceType: map['confidentialInstanceType'] == null
          ? null
          : map['confidentialInstanceType'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}
