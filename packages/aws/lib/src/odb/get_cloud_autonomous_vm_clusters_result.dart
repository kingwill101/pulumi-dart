// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_autonomous_vm_clusters_cloud_autonomous_vm_cluster.dart';

/// Result data returned by getCloudAutonomousVmClusters.
class GetCloudAutonomousVmClustersResult {
  /// List of Cloud Autonomous VM Clusters. The list going to contain basic information about the cloud autonomous VM clusters.
  final List<GetCloudAutonomousVmClustersCloudAutonomousVmCluster>
  cloudAutonomousVmClusters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetCloudAutonomousVmClustersResult].
  /// [cloudAutonomousVmClusters] List of Cloud Autonomous VM Clusters. The list going to contain basic information about the cloud autonomous VM clusters.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetCloudAutonomousVmClustersResult({
    required this.cloudAutonomousVmClusters,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudAutonomousVmClusters':
          pulumi.Input.encodeList<
            GetCloudAutonomousVmClustersCloudAutonomousVmCluster,
            Map<String, dynamic>
          >(cloudAutonomousVmClusters, (value) => value.toMap()),
      'id': id,
      'region': region,
    };
  }

  factory GetCloudAutonomousVmClustersResult.fromMap(Map<String, dynamic> map) {
    return GetCloudAutonomousVmClustersResult(
      cloudAutonomousVmClusters:
          pulumi.Input.decodeList<
            GetCloudAutonomousVmClustersCloudAutonomousVmCluster
          >(
            map['cloudAutonomousVmClusters'],
            (value) =>
                GetCloudAutonomousVmClustersCloudAutonomousVmCluster.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
