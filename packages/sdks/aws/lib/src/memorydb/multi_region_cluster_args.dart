// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_cluster_timeouts.dart';

/// {@template pulumi_memorydb_multi_region_cluster_multi_region_cluster_args_doc}
/// The set of arguments for MultiRegionCluster.
/// {@endtemplate}
/// {@macro pulumi_memorydb_multi_region_cluster_multi_region_cluster_args_doc}
class MultiRegionClusterArgs {
  /// Description for the multi-region cluster.
  final pulumi.Input<String?>? description;
  /// Name of the engine to be used for the multi-region cluster. Valid values are `redis` and `valkey`.
  final pulumi.Input<String?>? engine;
  /// Version of the engine to be used for the multi-region cluster. Downgrades are not supported.
  final pulumi.Input<String?>? engineVersion;
  /// Suffix to be added to the multi-region cluster name. An AWS generated prefix is automatically applied to the multi-region cluster name when it is created.
  final pulumi.Input<String> multiRegionClusterNameSuffix;
  /// Name of the multi-region parameter group to be associated with the cluster.
  final pulumi.Input<String?>? multiRegionParameterGroupName;
  /// Node type to be used for the multi-region cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> nodeType;
  /// Number of shards for the multi-region cluster.
  final pulumi.Input<int?>? numShards;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<MultiRegionClusterTimeouts?>? timeouts;
  /// Whether to enable in-transit encryption on the cluster.
  final pulumi.Input<bool?>? tlsEnabled;
  /// Strategy to use for the multi-region cluster update. Valid values are `coordinated` and `uncoordinated`.
  final pulumi.Input<String?>? updateStrategy;

  /// Creates a new [MultiRegionClusterArgs].
  /// [description] Description for the multi-region cluster.
  /// [engine] Name of the engine to be used for the multi-region cluster. Valid values are `redis` and `valkey`.
  /// [engineVersion] Version of the engine to be used for the multi-region cluster. Downgrades are not supported.
  /// [multiRegionClusterNameSuffix] Suffix to be added to the multi-region cluster name. An AWS generated prefix is automatically applied to the multi-region cluster name when it is created.
  /// [multiRegionParameterGroupName] Name of the multi-region parameter group to be associated with the cluster.
  /// [nodeType] Node type to be used for the multi-region cluster.
  /// [numShards] Number of shards for the multi-region cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [tlsEnabled] Whether to enable in-transit encryption on the cluster.
  /// [updateStrategy] Strategy to use for the multi-region cluster update. Valid values are `coordinated` and `uncoordinated`.
  const MultiRegionClusterArgs({
    this.description,
    this.engine,
    this.engineVersion,
    required this.multiRegionClusterNameSuffix,
    this.multiRegionParameterGroupName,
    required this.nodeType,
    this.numShards,
    this.region,
    this.tags,
    this.timeouts,
    this.tlsEnabled,
    this.updateStrategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'multiRegionClusterNameSuffix': multiRegionClusterNameSuffix,
      'multiRegionParameterGroupName': ?multiRegionParameterGroupName,
      'nodeType': nodeType,
      'numShards': ?numShards,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<MultiRegionClusterTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'tlsEnabled': ?tlsEnabled,
      'updateStrategy': ?updateStrategy,
    };
  }

  factory MultiRegionClusterArgs.fromMap(Map<String, dynamic> map) {
    return MultiRegionClusterArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiRegionClusterNameSuffix: pulumi.Input.fromValue(map['multiRegionClusterNameSuffix'] as String),
      multiRegionParameterGroupName: (() { final guardedValue = map['multiRegionParameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeType: pulumi.Input.fromValue(map['nodeType'] as String),
      numShards: (() { final guardedValue = map['numShards']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MultiRegionClusterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tlsEnabled: (() { final guardedValue = map['tlsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      updateStrategy: (() { final guardedValue = map['updateStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
