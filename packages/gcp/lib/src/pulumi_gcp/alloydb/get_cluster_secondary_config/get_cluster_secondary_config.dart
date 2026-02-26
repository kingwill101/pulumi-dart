// ignore_for_file: unused_element, unnecessary_cast

class GetClusterSecondaryConfig {
  /// Name of the primary cluster must be in the format
  /// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final String primaryClusterName;

  GetClusterSecondaryConfig({
    required this.primaryClusterName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['primaryClusterName'] = primaryClusterName;
    return map;
  }

  factory GetClusterSecondaryConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterSecondaryConfig(
      primaryClusterName: map['primaryClusterName'] as String,
    );
  }
}
