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
    pulumi.Output<List<String>>? dedicatedHostClusterIds,
    pulumi.Output<String>? dedicatedHostClusterName,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? zoneId,
  }) :
      dedicatedHostClusterIds = pulumi.Input.asOptionalInput<List<String>>(dedicatedHostClusterIds),
      dedicatedHostClusterName = pulumi.Input.asOptionalInput<String>(dedicatedHostClusterName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      dedicatedHostClusterIds: map['dedicatedHostClusterIds'] == null ? null : pulumi.Output.create<List<String>>((map['dedicatedHostClusterIds'] as List).cast<String>()),
      dedicatedHostClusterName: map['dedicatedHostClusterName'] == null ? null : pulumi.Output.create<String>(map['dedicatedHostClusterName'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

