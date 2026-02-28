// ignore_for_file: unused_element, unnecessary_cast


class KxVolumeAttachedCluster {
  final String clusterName;
  final String clusterStatus;
  final String clusterType;

  /// Creates a new [KxVolumeAttachedCluster].
  /// [clusterName] Required.
  /// [clusterStatus] Required.
  /// [clusterType] Required.
  KxVolumeAttachedCluster({
    required this.clusterName,
    required this.clusterStatus,
    required this.clusterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': clusterName,
      'clusterStatus': clusterStatus,
      'clusterType': clusterType,
    };
  }

  factory KxVolumeAttachedCluster.fromMap(Map<String, dynamic> map) {
    return KxVolumeAttachedCluster(
      clusterName: map['clusterName'] as String,
      clusterStatus: map['clusterStatus'] as String,
      clusterType: map['clusterType'] as String,
    );
  }
}

