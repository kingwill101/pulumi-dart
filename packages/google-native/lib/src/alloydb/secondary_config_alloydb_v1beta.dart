// ignore_for_file: unused_element, unnecessary_cast

/// Configuration information for the secondary cluster. This should be set if and only if the cluster is of type SECONDARY.
class SecondaryConfigAlloydbV1beta {
  /// The name of the primary cluster name with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}
  final String? primaryClusterName;

  /// Creates a new [SecondaryConfigAlloydbV1beta].
  /// [primaryClusterName] The name of the primary cluster name with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}
  SecondaryConfigAlloydbV1beta({
    this.primaryClusterName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final primaryClusterNameValue = primaryClusterName;
    if (primaryClusterNameValue != null) {
      map['primaryClusterName'] = primaryClusterNameValue;
    }
    return map;
  }

  factory SecondaryConfigAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return SecondaryConfigAlloydbV1beta(
      primaryClusterName: map['primaryClusterName'] == null
          ? null
          : map['primaryClusterName'] as String,
    );
  }
}
