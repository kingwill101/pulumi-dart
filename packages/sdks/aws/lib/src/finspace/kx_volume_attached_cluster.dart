// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KxVolumeAttachedCluster {
  final pulumi.Input<String> clusterName;
  final pulumi.Input<String> clusterStatus;
  final pulumi.Input<String> clusterType;

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
      clusterName: (map['clusterName'] as String).input(),
      clusterStatus: (map['clusterStatus'] as String).input(),
      clusterType: (map['clusterType'] as String).input(),
    );
  }
}

