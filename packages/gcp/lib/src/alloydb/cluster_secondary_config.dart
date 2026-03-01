// ignore_for_file: unused_element, unnecessary_cast

class ClusterSecondaryConfig {
  /// Name of the primary cluster must be in the format
  /// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final String primaryClusterName;

  /// Creates a new [ClusterSecondaryConfig].
  /// [primaryClusterName] Name of the primary cluster must be in the format
  ClusterSecondaryConfig({required this.primaryClusterName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'primaryClusterName': primaryClusterName};
  }

  factory ClusterSecondaryConfig.fromMap(Map<String, dynamic> map) {
    return ClusterSecondaryConfig(
      primaryClusterName: map['primaryClusterName'] as String,
    );
  }
}
