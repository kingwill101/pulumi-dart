// ignore_for_file: unused_element, unnecessary_cast

/// Configuration information for the secondary cluster. This should be set if and only if the cluster is of type SECONDARY.
class SecondaryConfigResponseAlloydbV1alpha {
  /// The name of the primary cluster name with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}
  final String primaryClusterName;

  SecondaryConfigResponseAlloydbV1alpha({
    required this.primaryClusterName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['primaryClusterName'] = primaryClusterName;
    return map;
  }

  factory SecondaryConfigResponseAlloydbV1alpha.fromMap(
      Map<String, dynamic> map) {
    return SecondaryConfigResponseAlloydbV1alpha(
      primaryClusterName: map['primaryClusterName'] as String,
    );
  }
}
