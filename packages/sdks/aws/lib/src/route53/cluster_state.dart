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
    pulumi.Output<String>? arn,
    pulumi.Output<List<ClusterClusterEndpoint>>? clusterEndpoints,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkType,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      clusterEndpoints = pulumi.Input.asOptionalInput<List<ClusterClusterEndpoint>>(clusterEndpoints),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      clusterEndpoints: map['clusterEndpoints'] == null ? null : pulumi.Output.create<List<ClusterClusterEndpoint>>(pulumi.Input.decodeList<ClusterClusterEndpoint>(map['clusterEndpoints'], (value) => ClusterClusterEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

