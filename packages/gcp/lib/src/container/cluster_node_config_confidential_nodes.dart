// ignore_for_file: unused_element, unnecessary_cast


class ClusterNodeConfigConfidentialNodes {
  /// Defines the type of technology used
  /// by the confidential node.
  final String? confidentialInstanceType;
  /// Enable Confidential GKE Nodes for this cluster, to
  /// enforce encryption of data in-use.
  final bool enabled;

  /// Creates a new [ClusterNodeConfigConfidentialNodes].
  /// [confidentialInstanceType] Defines the type of technology used
  /// [enabled] Enable Confidential GKE Nodes for this cluster, to
  ClusterNodeConfigConfidentialNodes({
    this.confidentialInstanceType,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidentialInstanceType': ?confidentialInstanceType,
      'enabled': enabled,
    };
  }

  factory ClusterNodeConfigConfidentialNodes.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigConfidentialNodes(
      confidentialInstanceType: map['confidentialInstanceType'] == null ? null : map['confidentialInstanceType'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}

