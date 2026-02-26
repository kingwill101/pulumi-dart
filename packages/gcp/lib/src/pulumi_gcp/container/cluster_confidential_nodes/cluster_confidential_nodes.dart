// ignore_for_file: unused_element, unnecessary_cast

class ClusterConfidentialNodes {
  /// Defines the type of technology used
  /// by the confidential node.
  final String? confidentialInstanceType;

  /// Enable Confidential GKE Nodes for this cluster, to
  /// enforce encryption of data in-use.
  final bool enabled;

  ClusterConfidentialNodes({
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

  factory ClusterConfidentialNodes.fromMap(Map<String, dynamic> map) {
    return ClusterConfidentialNodes(
      confidentialInstanceType: map['confidentialInstanceType'] == null
          ? null
          : map['confidentialInstanceType'] as String,
      enabled: map['enabled'] as bool,
    );
  }
}
