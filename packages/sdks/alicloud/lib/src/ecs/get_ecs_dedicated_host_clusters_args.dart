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
      dedicatedHostClusterIds: (() { final guardedValue = map['dedicatedHostClusterIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dedicatedHostClusterName: (() { final guardedValue = map['dedicatedHostClusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

