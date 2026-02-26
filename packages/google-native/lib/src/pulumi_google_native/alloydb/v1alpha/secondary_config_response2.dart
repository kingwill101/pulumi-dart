// ignore_for_file: unused_element, unnecessary_cast

/// Configuration information for the secondary cluster. This should be set if and only if the cluster is of type SECONDARY.
class SecondaryConfigResponse2 {
  /// The name of the primary cluster name with the format: * projects/{project}/locations/{region}/clusters/{cluster_id}
  final String primaryClusterName;

  SecondaryConfigResponse2({
    required this.primaryClusterName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['primaryClusterName'] = primaryClusterName;
    return map;
  }

  factory SecondaryConfigResponse2.fromMap(Map<String, dynamic> map) {
    return SecondaryConfigResponse2(
      primaryClusterName: map['primaryClusterName'] as String,
    );
  }
}
