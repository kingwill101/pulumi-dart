// ignore_for_file: unused_element, unnecessary_cast

class KxVolumeAttachedCluster {
  final String clusterName;
  final String clusterStatus;
  final String clusterType;

  KxVolumeAttachedCluster({
    required this.clusterName,
    required this.clusterStatus,
    required this.clusterType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    map['clusterStatus'] = clusterStatus;
    map['clusterType'] = clusterType;
    return map;
  }

  factory KxVolumeAttachedCluster.fromMap(Map<String, dynamic> map) {
    return KxVolumeAttachedCluster(
      clusterName: map['clusterName'] as String,
      clusterStatus: map['clusterStatus'] as String,
      clusterType: map['clusterType'] as String,
    );
  }
}
