// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_vm_clusters_cloud_vm_cluster.dart';

/// Result data returned by getCloudVmClusters.
class GetCloudVmClustersResult {
  /// List of Cloud VM Clusters. It returns only basic information about the cloud VM clusters.
  final List<GetCloudVmClustersCloudVmCluster>? cloudVmClusters;
  final String? region;

  /// Creates a new [GetCloudVmClustersResult].
  /// [cloudVmClusters] List of Cloud VM Clusters. It returns only basic information about the cloud VM clusters.
  /// [region] Optional.
  const GetCloudVmClustersResult({
    this.cloudVmClusters,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudVmClusters': ?(() { final guardedValue = cloudVmClusters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCloudVmClustersCloudVmCluster, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
    };
  }

  factory GetCloudVmClustersResult.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClustersResult(
      cloudVmClusters: (() { final guardedValue = map['cloudVmClusters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCloudVmClustersCloudVmCluster>(guardedValue, (value) => GetCloudVmClustersCloudVmCluster.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
