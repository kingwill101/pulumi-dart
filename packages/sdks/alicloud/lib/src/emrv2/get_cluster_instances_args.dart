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
  const GetClusterInstancesArgs({
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
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceStates: (() { final guardedValue = map['instanceStates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxResults: (() { final guardedValue = map['maxResults']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nextToken: (() { final guardedValue = map['nextToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroupIds: (() { final guardedValue = map['nodeGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nodeGroupNames: (() { final guardedValue = map['nodeGroupNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

