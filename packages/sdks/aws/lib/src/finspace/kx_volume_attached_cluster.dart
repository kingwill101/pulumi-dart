// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KxVolumeAttachedCluster {
  /// Name of the KX cluster.
  final pulumi.Input<String> clusterName;
  /// Status of the KX cluster.
  final pulumi.Input<String> clusterStatus;
  /// Type of the KX cluster.
  final pulumi.Input<String> clusterType;

  /// Creates a new [KxVolumeAttachedCluster].
  /// [clusterName] Name of the KX cluster.
  /// [clusterStatus] Status of the KX cluster.
  /// [clusterType] Type of the KX cluster.
  const KxVolumeAttachedCluster({
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
      clusterName: pulumi.Input.fromValue(map['clusterName'] as String),
      clusterStatus: pulumi.Input.fromValue(map['clusterStatus'] as String),
      clusterType: pulumi.Input.fromValue(map['clusterType'] as String),
    );
  }
}
