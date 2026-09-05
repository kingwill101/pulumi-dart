// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_autonomous_vm_clusters_cloud_autonomous_vm_cluster.dart';

/// Result data returned by getCloudAutonomousVmClusters.
class GetCloudAutonomousVmClustersResult {
  /// List of Cloud Autonomous VM Clusters. The list going to contain basic information about the cloud autonomous VM clusters.
  final List<GetCloudAutonomousVmClustersCloudAutonomousVmCluster>? cloudAutonomousVmClusters;
  final String? region;

  /// Creates a new [GetCloudAutonomousVmClustersResult].
  /// [cloudAutonomousVmClusters] List of Cloud Autonomous VM Clusters. The list going to contain basic information about the cloud autonomous VM clusters.
  /// [region] Optional.
  const GetCloudAutonomousVmClustersResult({
    this.cloudAutonomousVmClusters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudAutonomousVmClusters': ?(() { final guardedValue = cloudAutonomousVmClusters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCloudAutonomousVmClustersCloudAutonomousVmCluster, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetCloudAutonomousVmClustersResult.fromMap(Map<String, dynamic> map) {
    return GetCloudAutonomousVmClustersResult(
      cloudAutonomousVmClusters: (() { final guardedValue = map['cloudAutonomousVmClusters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCloudAutonomousVmClustersCloudAutonomousVmCluster>(guardedValue, (value) => GetCloudAutonomousVmClustersCloudAutonomousVmCluster.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
