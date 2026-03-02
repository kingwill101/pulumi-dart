// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecs_get_ecs_dedicated_host_clusters_get_ecs_dedicated_host_clusters_args_doc}
/// Arguments for getEcsDedicatedHostClusters.
/// {@endtemplate}
/// {@macro pulumi_ecs_get_ecs_dedicated_host_clusters_get_ecs_dedicated_host_clusters_args_doc}
class GetEcsDedicatedHostClustersArgs {
  /// The IDs of dedicated host clusters.
  final pulumi.Input<List<String>>? dedicatedHostClusterIds;
  /// The name of the dedicated host cluster.
  final pulumi.Input<String>? dedicatedHostClusterName;
  /// A list of Dedicated Host Cluster IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Dedicated Host Cluster name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The zone ID of the dedicated host cluster.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetEcsDedicatedHostClustersArgs].
  /// [dedicatedHostClusterIds] The IDs of dedicated host clusters.
  /// [dedicatedHostClusterName] The name of the dedicated host cluster.
  /// [ids] A list of Dedicated Host Cluster IDs.
  /// [nameRegex] A regex string to filter results by Dedicated Host Cluster name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneId] The zone ID of the dedicated host cluster.
  GetEcsDedicatedHostClustersArgs({
    this.dedicatedHostClusterIds,
    this.dedicatedHostClusterName,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.tags,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedHostClusterIds': ?dedicatedHostClusterIds,
      'dedicatedHostClusterName': ?dedicatedHostClusterName,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'tags': ?tags,
      'zoneId': ?zoneId,
    };
  }

  factory GetEcsDedicatedHostClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetEcsDedicatedHostClustersArgs(
      dedicatedHostClusterIds: map['dedicatedHostClusterIds'] == null ? null : ((map['dedicatedHostClusterIds']! as List).cast<String>()).input(),
      dedicatedHostClusterName: map['dedicatedHostClusterName'] == null ? null : (map['dedicatedHostClusterName']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
    );
  }
}

