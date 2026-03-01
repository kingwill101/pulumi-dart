// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_cluster_timeouts.dart';

/// Input properties used for looking up and filtering MultiRegionCluster resources.
class MultiRegionClusterState {
  /// The ARN of the multi-region cluster.
  final pulumi.Input<String>? arn;
  /// description for the multi-region cluster.
  final pulumi.Input<String>? description;
  /// The name of the engine to be used for the multi-region cluster. Valid values are `redis` and `valkey`.
  final pulumi.Input<String>? engine;
  /// The version of the engine to be used for the multi-region cluster. Downgrades are not supported.
  final pulumi.Input<String>? engineVersion;
  /// The name of the multi-region cluster.
  final pulumi.Input<String>? multiRegionClusterName;
  /// A suffix to be added to the multi-region cluster name. An AWS generated prefix is automatically applied to the multi-region cluster name when it is created.
  final pulumi.Input<String>? multiRegionClusterNameSuffix;
  /// The name of the multi-region parameter group to be associated with the cluster.
  final pulumi.Input<String>? multiRegionParameterGroupName;
  /// The node type to be used for the multi-region cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? nodeType;
  /// The number of shards for the multi-region cluster.
  final pulumi.Input<int>? numShards;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<String>? status;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<MultiRegionClusterTimeouts>? timeouts;
  /// A flag to enable in-transit encryption on the cluster.
  final pulumi.Input<bool>? tlsEnabled;
  final pulumi.Input<String>? updateStrategy;

  /// Creates a new [MultiRegionClusterState].
  /// [arn] The ARN of the multi-region cluster.
  /// [description] description for the multi-region cluster.
  /// [engine] The name of the engine to be used for the multi-region cluster. Valid values are `redis` and `valkey`.
  /// [engineVersion] The version of the engine to be used for the multi-region cluster. Downgrades are not supported.
  /// [multiRegionClusterName] The name of the multi-region cluster.
  /// [multiRegionClusterNameSuffix] A suffix to be added to the multi-region cluster name. An AWS generated prefix is automatically applied to the multi-region cluster name when it is created.
  /// [multiRegionParameterGroupName] The name of the multi-region parameter group to be associated with the cluster.
  /// [nodeType] The node type to be used for the multi-region cluster.
  /// [numShards] The number of shards for the multi-region cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Optional.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [tlsEnabled] A flag to enable in-transit encryption on the cluster.
  /// [updateStrategy] Optional.
  MultiRegionClusterState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? multiRegionClusterName,
    pulumi.Output<String>? multiRegionClusterNameSuffix,
    pulumi.Output<String>? multiRegionParameterGroupName,
    pulumi.Output<String>? nodeType,
    pulumi.Output<int>? numShards,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<MultiRegionClusterTimeouts>? timeouts,
    pulumi.Output<bool>? tlsEnabled,
    pulumi.Output<String>? updateStrategy,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      multiRegionClusterName = pulumi.Input.asOptionalInput<String>(multiRegionClusterName),
      multiRegionClusterNameSuffix = pulumi.Input.asOptionalInput<String>(multiRegionClusterNameSuffix),
      multiRegionParameterGroupName = pulumi.Input.asOptionalInput<String>(multiRegionParameterGroupName),
      nodeType = pulumi.Input.asOptionalInput<String>(nodeType),
      numShards = pulumi.Input.asOptionalInput<int>(numShards),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<MultiRegionClusterTimeouts>(timeouts),
      tlsEnabled = pulumi.Input.asOptionalInput<bool>(tlsEnabled),
      updateStrategy = pulumi.Input.asOptionalInput<String>(updateStrategy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'multiRegionClusterName': ?multiRegionClusterName,
      'multiRegionClusterNameSuffix': ?multiRegionClusterNameSuffix,
      'multiRegionParameterGroupName': ?multiRegionParameterGroupName,
      'nodeType': ?nodeType,
      'numShards': ?numShards,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<MultiRegionClusterTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'tlsEnabled': ?tlsEnabled,
      'updateStrategy': ?updateStrategy,
    };
  }

  factory MultiRegionClusterState.fromMap(Map<String, dynamic> map) {
    return MultiRegionClusterState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      multiRegionClusterName: map['multiRegionClusterName'] == null ? null : pulumi.Output.create<String>(map['multiRegionClusterName'] as String),
      multiRegionClusterNameSuffix: map['multiRegionClusterNameSuffix'] == null ? null : pulumi.Output.create<String>(map['multiRegionClusterNameSuffix'] as String),
      multiRegionParameterGroupName: map['multiRegionParameterGroupName'] == null ? null : pulumi.Output.create<String>(map['multiRegionParameterGroupName'] as String),
      nodeType: map['nodeType'] == null ? null : pulumi.Output.create<String>(map['nodeType'] as String),
      numShards: map['numShards'] == null ? null : pulumi.Output.create<int>(map['numShards'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<MultiRegionClusterTimeouts>(MultiRegionClusterTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      tlsEnabled: map['tlsEnabled'] == null ? null : pulumi.Output.create<bool>(map['tlsEnabled'] as bool),
      updateStrategy: map['updateStrategy'] == null ? null : pulumi.Output.create<String>(map['updateStrategy'] as String),
    );
  }
}

