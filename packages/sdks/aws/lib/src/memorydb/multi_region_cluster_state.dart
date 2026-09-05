// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_cluster_timeouts.dart';

/// Input properties used for looking up and filtering MultiRegionCluster resources.
class MultiRegionClusterState {
  /// The ARN of the multi-region cluster.
  final pulumi.Input<String?>? arn;
  /// description for the multi-region cluster.
  final pulumi.Input<String?>? description;
  /// The name of the engine to be used for the multi-region cluster. Valid values are `redis` and `valkey`.
  final pulumi.Input<String?>? engine;
  /// The version of the engine to be used for the multi-region cluster. Downgrades are not supported.
  final pulumi.Input<String?>? engineVersion;
  /// The name of the multi-region cluster.
  final pulumi.Input<String?>? multiRegionClusterName;
  /// A suffix to be added to the multi-region cluster name. An AWS generated prefix is automatically applied to the multi-region cluster name when it is created.
  final pulumi.Input<String?>? multiRegionClusterNameSuffix;
  /// The name of the multi-region parameter group to be associated with the cluster.
  final pulumi.Input<String?>? multiRegionParameterGroupName;
  /// The node type to be used for the multi-region cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? nodeType;
  /// The number of shards for the multi-region cluster.
  final pulumi.Input<int?>? numShards;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<String?>? status;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<MultiRegionClusterTimeouts?>? timeouts;
  /// A flag to enable in-transit encryption on the cluster.
  final pulumi.Input<bool?>? tlsEnabled;
  final pulumi.Input<String?>? updateStrategy;

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
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  /// [tlsEnabled] A flag to enable in-transit encryption on the cluster.
  /// [updateStrategy] Optional.
  const MultiRegionClusterState({
    this.arn,
    this.description,
    this.engine,
    this.engineVersion,
    this.multiRegionClusterName,
    this.multiRegionClusterNameSuffix,
    this.multiRegionParameterGroupName,
    this.nodeType,
    this.numShards,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.tlsEnabled,
    this.updateStrategy,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiRegionClusterName: (() { final guardedValue = map['multiRegionClusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiRegionClusterNameSuffix: (() { final guardedValue = map['multiRegionClusterNameSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiRegionParameterGroupName: (() { final guardedValue = map['multiRegionParameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numShards: (() { final guardedValue = map['numShards']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiRegionClusterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tlsEnabled: (() { final guardedValue = map['tlsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      updateStrategy: (() { final guardedValue = map['updateStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
