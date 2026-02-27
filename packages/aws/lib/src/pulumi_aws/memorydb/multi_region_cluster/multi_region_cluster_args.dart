// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../multi_region_cluster_timeouts/multi_region_cluster_timeouts.dart';

/// The set of arguments for MultiRegionCluster.
class MultiRegionClusterArgs {
  /// description for the multi-region cluster.
  final Input<String>? description;

  /// The name of the engine to be used for the multi-region cluster. Valid values are `redis` and `valkey`.
  final Input<String>? engine;

  /// The version of the engine to be used for the multi-region cluster. Downgrades are not supported.
  final Input<String>? engineVersion;

  /// A suffix to be added to the multi-region cluster name. An AWS generated prefix is automatically applied to the multi-region cluster name when it is created.
  final Input<String> multiRegionClusterNameSuffix;

  /// The name of the multi-region parameter group to be associated with the cluster.
  final Input<String>? multiRegionParameterGroupName;

  /// The node type to be used for the multi-region cluster.
  ///
  /// The following arguments are optional:
  final Input<String> nodeType;

  /// The number of shards for the multi-region cluster.
  final Input<int>? numShards;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<MultiRegionClusterTimeouts>? timeouts;

  /// A flag to enable in-transit encryption on the cluster.
  final Input<bool>? tlsEnabled;
  final Input<String>? updateStrategy;

  MultiRegionClusterArgs({
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
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    final engineVersionValue = engineVersion;
    if (engineVersionValue != null) {
      map['engineVersion'] = engineVersionValue;
    }
    map['multiRegionClusterNameSuffix'] = multiRegionClusterNameSuffix;
    final multiRegionParameterGroupNameValue = multiRegionParameterGroupName;
    if (multiRegionParameterGroupNameValue != null) {
      map['multiRegionParameterGroupName'] = multiRegionParameterGroupNameValue;
    }
    map['nodeType'] = nodeType;
    final numShardsValue = numShards;
    if (numShardsValue != null) {
      map['numShards'] = numShardsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<MultiRegionClusterTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final tlsEnabledValue = tlsEnabled;
    if (tlsEnabledValue != null) {
      map['tlsEnabled'] = tlsEnabledValue;
    }
    final updateStrategyValue = updateStrategy;
    if (updateStrategyValue != null) {
      map['updateStrategy'] = updateStrategyValue;
    }
    return map;
  }

  factory MultiRegionClusterArgs.fromMap(Map<String, dynamic> map) {
    return MultiRegionClusterArgs(
      description: Input.asOptionalInput<String>(map['description']),
      engine: Input.asOptionalInput<String>(map['engine']),
      engineVersion: Input.asOptionalInput<String>(map['engineVersion']),
      multiRegionClusterNameSuffix:
          Input.asInput<String>(map['multiRegionClusterNameSuffix']),
      multiRegionParameterGroupName:
          Input.asOptionalInput<String>(map['multiRegionParameterGroupName']),
      nodeType: Input.asInput<String>(map['nodeType']),
      numShards: Input.asOptionalInput<int>(map['numShards']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          Input.asOptionalInput<MultiRegionClusterTimeouts>(map['timeouts']),
      tlsEnabled: Input.asOptionalInput<bool>(map['tlsEnabled']),
      updateStrategy: Input.asOptionalInput<String>(map['updateStrategy']),
    );
  }
}
