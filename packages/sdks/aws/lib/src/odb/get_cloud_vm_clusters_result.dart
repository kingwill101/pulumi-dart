// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_vm_clusters_cloud_vm_cluster.dart';

/// Result data returned by getCloudVmClusters.
class GetCloudVmClustersResult {
  /// List of Cloud VM Clusters. It returns only basic information about the cloud VM clusters.
  final List<GetCloudVmClustersCloudVmCluster> cloudVmClusters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Creates a new [GetCloudVmClustersResult].
  /// [cloudVmClusters] List of Cloud VM Clusters. It returns only basic information about the cloud VM clusters.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  GetCloudVmClustersResult({
    required this.cloudVmClusters,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudVmClusters': pulumi.Input.encodeList<GetCloudVmClustersCloudVmCluster, Map<String, dynamic>>(cloudVmClusters, (value) => value.toMap()),
      'id': id,
      'region': region,
    };
  }

  factory GetCloudVmClustersResult.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClustersResult(
      cloudVmClusters: pulumi.Input.decodeList<GetCloudVmClustersCloudVmCluster>(map['cloudVmClusters']!, (value) => GetCloudVmClustersCloudVmCluster.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}

