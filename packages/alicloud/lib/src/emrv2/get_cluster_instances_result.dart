// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_instances_instance.dart';

/// Result data returned by getClusterInstances.
class GetClusterInstancesResult {
  final String clusterId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Cluster ecs instance IDS.
  final List<String> ids;
  final List<String>? instanceStates;
  /// A list of Emr Cluster ecs instances. Each element contains the following attributes:
  final List<GetClusterInstancesInstance> instances;
  final int? maxResults;
  /// A list of Cluster ecs instance names.
  final List<String> names;
  final String nextToken;
  final List<String>? nodeGroupIds;
  final List<String>? nodeGroupNames;
  final String? outputFile;
  final Map<String, String>? tags;
  /// The total count of list emr cluster ecs instances.
  final int totalCount;

  /// Creates a new [GetClusterInstancesResult].
  /// [clusterId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Cluster ecs instance IDS.
  /// [instanceStates] Optional.
  /// [instances] A list of Emr Cluster ecs instances. Each element contains the following attributes:
  /// [maxResults] Optional.
  /// [names] A list of Cluster ecs instance names.
  /// [nextToken] Required.
  /// [nodeGroupIds] Optional.
  /// [nodeGroupNames] Optional.
  /// [outputFile] Optional.
  /// [tags] Optional.
  /// [totalCount] The total count of list emr cluster ecs instances.
  GetClusterInstancesResult({
    required this.clusterId,
    required this.id,
    required this.ids,
    this.instanceStates,
    required this.instances,
    this.maxResults,
    required this.names,
    required this.nextToken,
    this.nodeGroupIds,
    this.nodeGroupNames,
    this.outputFile,
    this.tags,
    required this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'id': id,
      'ids': ids,
      'instanceStates': ?instanceStates,
      'instances': pulumi.Input.encodeList<GetClusterInstancesInstance, Map<String, dynamic>>(instances, (value) => value.toMap()),
      'maxResults': ?maxResults,
      'names': names,
      'nextToken': nextToken,
      'nodeGroupIds': ?nodeGroupIds,
      'nodeGroupNames': ?nodeGroupNames,
      'outputFile': ?outputFile,
      'tags': ?tags,
      'totalCount': totalCount,
    };
  }

  factory GetClusterInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetClusterInstancesResult(
      clusterId: map['clusterId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      instanceStates: map['instanceStates'] == null ? null : (map['instanceStates'] as List).cast<String>(),
      instances: pulumi.Input.decodeList<GetClusterInstancesInstance>(map['instances'], (value) => GetClusterInstancesInstance.fromMap((value as Map).cast<String, dynamic>())),
      maxResults: map['maxResults'] == null ? null : map['maxResults'] as int,
      names: (map['names'] as List).cast<String>(),
      nextToken: map['nextToken'] as String,
      nodeGroupIds: map['nodeGroupIds'] == null ? null : (map['nodeGroupIds'] as List).cast<String>(),
      nodeGroupNames: map['nodeGroupNames'] == null ? null : (map['nodeGroupNames'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      totalCount: map['totalCount'] as int,
    );
  }
}

