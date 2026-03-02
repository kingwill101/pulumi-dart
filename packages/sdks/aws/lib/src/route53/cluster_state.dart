// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_endpoint.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
  /// ARN of the cluster
  final pulumi.Input<String>? arn;
  /// List of 5 endpoints in 5 regions that can be used to talk to the cluster. See below.
  final pulumi.Input<List<ClusterClusterEndpoint>>? clusterEndpoints;
  /// Unique name describing the cluster.
  final pulumi.Input<String>? name;
  /// Network type of cluster. Valid values are `IPV4` and `DUALSTACK`. Defaults to `IPV4`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? networkType;
  /// Status of cluster. `PENDING` when it is being created, `PENDING_DELETION` when it is being deleted and `DEPLOYED` otherwise.
  final pulumi.Input<String>? status;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ClusterState].
  /// [arn] ARN of the cluster
  /// [clusterEndpoints] List of 5 endpoints in 5 regions that can be used to talk to the cluster. See below.
  /// [name] Unique name describing the cluster.
  /// [networkType] Network type of cluster. Valid values are `IPV4` and `DUALSTACK`. Defaults to `IPV4`.
  /// [status] Status of cluster. `PENDING` when it is being created, `PENDING_DELETION` when it is being deleted and `DEPLOYED` otherwise.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ClusterState({
    this.arn,
    this.clusterEndpoints,
    this.name,
    this.networkType,
    this.status,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'clusterEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ClusterClusterEndpoint>, List<Map<String, dynamic>>>(clusterEndpoints, (value) => pulumi.Input.encodeList<ClusterClusterEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'networkType': ?networkType,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      clusterEndpoints: map['clusterEndpoints'] == null ? null : (pulumi.Input.decodeList<ClusterClusterEndpoint>(map['clusterEndpoints'], (value) => ClusterClusterEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkType: map['networkType'] == null ? null : (map['networkType'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

