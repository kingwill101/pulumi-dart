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
    String? clusterId,
    List<String>? ids,
    List<String>? instanceStates,
    int? maxResults,
    String? nextToken,
    List<String>? nodeGroupIds,
    List<String>? nodeGroupNames,
    String? outputFile,
    Map<String, String>? tags,
  }) :
      clusterId = pulumi.Input.asOptionalInput<String>(clusterId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      instanceStates = pulumi.Input.asOptionalInput<List<String>>(instanceStates),
      maxResults = pulumi.Input.asOptionalInput<int>(maxResults),
      nextToken = pulumi.Input.asOptionalInput<String>(nextToken),
      nodeGroupIds = pulumi.Input.asOptionalInput<List<String>>(nodeGroupIds),
      nodeGroupNames = pulumi.Input.asOptionalInput<List<String>>(nodeGroupNames),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      clusterId: map['clusterId'] == null ? null : map['clusterId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      instanceStates: map['instanceStates'] == null ? null : (map['instanceStates'] as List).cast<String>(),
      maxResults: map['maxResults'] == null ? null : map['maxResults'] as int,
      nextToken: map['nextToken'] == null ? null : map['nextToken'] as String,
      nodeGroupIds: map['nodeGroupIds'] == null ? null : (map['nodeGroupIds'] as List).cast<String>(),
      nodeGroupNames: map['nodeGroupNames'] == null ? null : (map['nodeGroupNames'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

