// ignore_for_file: unused_element, unnecessary_cast

class ClusterSecondaryConfig {
  /// Name of the primary cluster must be in the format
  /// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final String primaryClusterName;

  ClusterSecondaryConfig({
    required this.primaryClusterName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['primaryClusterName'] = primaryClusterName;
    return map;
  }

  factory ClusterSecondaryConfig.fromMap(Map<String, dynamic> map) {
    return ClusterSecondaryConfig(
      primaryClusterName: map['primaryClusterName'] as String,
    );
  }
}
