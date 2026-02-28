// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cloud_vm_clusters_cloud_vm_cluster.dart';

/// Result data returned by getCloudVmClusters.
class GetCloudVmClustersResult {
  final List<GetCloudVmClustersCloudVmCluster> cloudVmClusters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? project;

  /// Creates a new [GetCloudVmClustersResult].
  /// [cloudVmClusters] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [project] Optional.
  GetCloudVmClustersResult({
    required this.cloudVmClusters,
    required this.id,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudVmClusters'] = pulumi.Input.encodeList<
        GetCloudVmClustersCloudVmCluster,
        Map<String, dynamic>>(cloudVmClusters, (value) => value.toMap());
    map['id'] = id;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCloudVmClustersResult.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClustersResult(
      cloudVmClusters:
          pulumi.Input.decodeList<GetCloudVmClustersCloudVmCluster>(
              map['cloudVmClusters'],
              (value) => GetCloudVmClustersCloudVmCluster.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
