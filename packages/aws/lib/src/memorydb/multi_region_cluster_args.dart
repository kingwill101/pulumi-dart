// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multi_region_cluster_timeouts.dart';

/// {@template pulumi_memorydb_multi_region_cluster_multi_region_cluster_args_doc}
/// The set of arguments for MultiRegionCluster.
/// {@endtemplate}
/// {@macro pulumi_memorydb_multi_region_cluster_multi_region_cluster_args_doc}
class MultiRegionClusterArgs {
  /// description for the multi-region cluster.
  final pulumi.Input<String>? description;

  /// The name of the engine to be used for the multi-region cluster. Valid values are `redis` and `valkey`.
  final pulumi.Input<String>? engine;

  /// The version of the engine to be used for the multi-region cluster. Downgrades are not supported.
  final pulumi.Input<String>? engineVersion;

  /// A suffix to be added to the multi-region cluster name. An AWS generated prefix is automatically applied to the multi-region cluster name when it is created.
  final pulumi.Input<String> multiRegionClusterNameSuffix;

  /// The name of the multi-region parameter group to be associated with the cluster.
  final pulumi.Input<String>? multiRegionParameterGroupName;

  /// The node type to be used for the multi-region cluster.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> nodeType;

  /// The number of shards for the multi-region cluster.
  final pulumi.Input<int>? numShards;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<MultiRegionClusterTimeouts>? timeouts;

  /// A flag to enable in-transit encryption on the cluster.
  final pulumi.Input<bool>? tlsEnabled;
  final pulumi.Input<String>? updateStrategy;

  /// Creates a new [MultiRegionClusterArgs].
  /// [description] description for the multi-region cluster.
  /// [engine] The name of the engine to be used for the multi-region cluster. Valid values are `redis` and `valkey`.
  /// [engineVersion] The version of the engine to be used for the multi-region cluster. Downgrades are not supported.
  /// [multiRegionClusterNameSuffix] A suffix to be added to the multi-region cluster name. An AWS generated prefix is automatically applied to the multi-region cluster name when it is created.
  /// [multiRegionParameterGroupName] The name of the multi-region parameter group to be associated with the cluster.
  /// [nodeType] The node type to be used for the multi-region cluster.
  /// [numShards] The number of shards for the multi-region cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [tlsEnabled] A flag to enable in-transit encryption on the cluster.
  /// [updateStrategy] Optional.
  MultiRegionClusterArgs({
    String? description,
    String? engine,
    String? engineVersion,
    required String multiRegionClusterNameSuffix,
    String? multiRegionParameterGroupName,
    required String nodeType,
    int? numShards,
    String? region,
    Map<String, String>? tags,
    MultiRegionClusterTimeouts? timeouts,
    bool? tlsEnabled,
    String? updateStrategy,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       engine = pulumi.Input.asOptionalInput<String>(engine),
       engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
       multiRegionClusterNameSuffix = pulumi.Input.asInput<String>(
         multiRegionClusterNameSuffix,
       ),
       multiRegionParameterGroupName = pulumi.Input.asOptionalInput<String>(
         multiRegionParameterGroupName,
       ),
       nodeType = pulumi.Input.asInput<String>(nodeType),
       numShards = pulumi.Input.asOptionalInput<int>(numShards),
       region = pulumi.Input.asOptionalInput<String>(region),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       timeouts = pulumi.Input.asOptionalInput<MultiRegionClusterTimeouts>(
         timeouts,
       ),
       tlsEnabled = pulumi.Input.asOptionalInput<bool>(tlsEnabled),
       updateStrategy = pulumi.Input.asOptionalInput<String>(updateStrategy);

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
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            MultiRegionClusterTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'tlsEnabled': ?tlsEnabled,
      'updateStrategy': ?updateStrategy,
    };
  }

  factory MultiRegionClusterArgs.fromMap(Map<String, dynamic> map) {
    return MultiRegionClusterArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      engine: map['engine'] == null ? null : map['engine'] as String,
      engineVersion: map['engineVersion'] == null
          ? null
          : map['engineVersion'] as String,
      multiRegionClusterNameSuffix:
          map['multiRegionClusterNameSuffix'] as String,
      multiRegionParameterGroupName:
          map['multiRegionParameterGroupName'] == null
          ? null
          : map['multiRegionParameterGroupName'] as String,
      nodeType: map['nodeType'] as String,
      numShards: map['numShards'] == null ? null : map['numShards'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : MultiRegionClusterTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
      tlsEnabled: map['tlsEnabled'] == null ? null : map['tlsEnabled'] as bool,
      updateStrategy: map['updateStrategy'] == null
          ? null
          : map['updateStrategy'] as String,
    );
  }
}
