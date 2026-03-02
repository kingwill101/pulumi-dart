// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_emrv2_get_cluster_instances_get_cluster_instances_args_doc}
/// Arguments for getClusterInstances.
/// {@endtemplate}
/// {@macro pulumi_emrv2_get_cluster_instances_get_cluster_instances_args_doc}
class GetClusterInstancesArgs {
  /// The emr cluster ID.
  final pulumi.Input<String>? clusterId;
  /// A list of Cluster IDs.
  final pulumi.Input<List<String>>? ids;
  /// The cluster ecs instance states.
  final pulumi.Input<List<String>>? instanceStates;
  /// The max results is used to list emr cluster ecs instances for next page.
  final pulumi.Input<int>? maxResults;
  /// The next token is used to list emr cluster ecs instances for next page.
  final pulumi.Input<String>? nextToken;
  /// The cluster node group ids.
  final pulumi.Input<List<String>>? nodeGroupIds;
  /// The cluster node group names.
  final pulumi.Input<List<String>>? nodeGroupNames;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetClusterInstancesArgs].
  /// [clusterId] The emr cluster ID.
  /// [ids] A list of Cluster IDs.
  /// [instanceStates] The cluster ecs instance states.
  /// [maxResults] The max results is used to list emr cluster ecs instances for next page.
  /// [nextToken] The next token is used to list emr cluster ecs instances for next page.
  /// [nodeGroupIds] The cluster node group ids.
  /// [nodeGroupNames] The cluster node group names.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [tags] A mapping of tags to assign to the resource.
  GetClusterInstancesArgs({
    this.clusterId,
    this.ids,
    this.instanceStates,
    this.maxResults,
    this.nextToken,
    this.nodeGroupIds,
    this.nodeGroupNames,
    this.outputFile,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'ids': ?ids,
      'instanceStates': ?instanceStates,
      'maxResults': ?maxResults,
      'nextToken': ?nextToken,
      'nodeGroupIds': ?nodeGroupIds,
      'nodeGroupNames': ?nodeGroupNames,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetClusterInstancesArgs.fromMap(Map<String, dynamic> map) {
    return GetClusterInstancesArgs(
      clusterId: map['clusterId'] == null ? null : (map['clusterId'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      instanceStates: map['instanceStates'] == null ? null : ((map['instanceStates'] as List).cast<String>()).input(),
      maxResults: map['maxResults'] == null ? null : (map['maxResults'] as int).input(),
      nextToken: map['nextToken'] == null ? null : (map['nextToken'] as String).input(),
      nodeGroupIds: map['nodeGroupIds'] == null ? null : ((map['nodeGroupIds'] as List).cast<String>()).input(),
      nodeGroupNames: map['nodeGroupNames'] == null ? null : ((map['nodeGroupNames'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

