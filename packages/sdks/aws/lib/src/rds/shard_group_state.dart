// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shard_group_timeouts.dart';

/// Input properties used for looking up and filtering ShardGroup resources.
class ShardGroupState {
  /// ARN of the shard group.
  final pulumi.Input<String>? arn;

  /// Specifies whether to create standby DB shard groups for the DB shard group. Valid values are:
  final pulumi.Input<int>? computeRedundancy;

  /// The name of the primary DB cluster for the DB shard group.
  final pulumi.Input<String>? dbClusterIdentifier;

  /// The name of the DB shard group.
  final pulumi.Input<String>? dbShardGroupIdentifier;

  /// The AWS Region-unique, immutable identifier for the DB shard group.
  final pulumi.Input<String>? dbShardGroupResourceId;

  /// The connection endpoint for the DB shard group.
  final pulumi.Input<String>? endpoint;

  /// The maximum capacity of the DB shard group in Aurora capacity units (ACUs).
  final pulumi.Input<double>? maxAcu;

  /// The minimum capacity of the DB shard group in Aurora capacity units (ACUs).
  final pulumi.Input<double>? minAcu;

  /// Indicates whether the DB shard group is publicly accessible.
  final pulumi.Input<bool>? publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-shard-group.html).
  final pulumi.Input<Map<String, String>>? tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ShardGroupTimeouts>? timeouts;

  /// Creates a new [ShardGroupState].
  /// [arn] ARN of the shard group.
  /// [computeRedundancy] Specifies whether to create standby DB shard groups for the DB shard group. Valid values are:
  /// [dbClusterIdentifier] The name of the primary DB cluster for the DB shard group.
  /// [dbShardGroupIdentifier] The name of the DB shard group.
  /// [dbShardGroupResourceId] The AWS Region-unique, immutable identifier for the DB shard group.
  /// [endpoint] The connection endpoint for the DB shard group.
  /// [maxAcu] The maximum capacity of the DB shard group in Aurora capacity units (ACUs).
  /// [minAcu] The minimum capacity of the DB shard group in Aurora capacity units (ACUs).
  /// [publiclyAccessible] Indicates whether the DB shard group is publicly accessible.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  ShardGroupState({
    this.arn,
    this.computeRedundancy,
    this.dbClusterIdentifier,
    this.dbShardGroupIdentifier,
    this.dbShardGroupResourceId,
    this.endpoint,
    this.maxAcu,
    this.minAcu,
    this.publiclyAccessible,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'computeRedundancy': ?computeRedundancy,
      'dbClusterIdentifier': ?dbClusterIdentifier,
      'dbShardGroupIdentifier': ?dbShardGroupIdentifier,
      'dbShardGroupResourceId': ?dbShardGroupResourceId,
      'endpoint': ?endpoint,
      'maxAcu': ?maxAcu,
      'minAcu': ?minAcu,
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            ShardGroupTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory ShardGroupState.fromMap(Map<String, dynamic> map) {
    return ShardGroupState(
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      computeRedundancy: (() {
        final guardedValue = map['computeRedundancy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dbClusterIdentifier: (() {
        final guardedValue = map['dbClusterIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbShardGroupIdentifier: (() {
        final guardedValue = map['dbShardGroupIdentifier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbShardGroupResourceId: (() {
        final guardedValue = map['dbShardGroupResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxAcu: (() {
        final guardedValue = map['maxAcu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      minAcu: (() {
        final guardedValue = map['minAcu'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      publiclyAccessible: (() {
        final guardedValue = map['publiclyAccessible'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ShardGroupTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
