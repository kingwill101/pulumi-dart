// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shard_group_timeouts.dart';

/// {@template pulumi_rds_shard_group_shard_group_args_doc}
/// The set of arguments for ShardGroup.
/// {@endtemplate}
/// {@macro pulumi_rds_shard_group_shard_group_args_doc}
class ShardGroupArgs {
  /// Whether to create standby DB shard groups for the DB shard group. Valid values are `0` (no standby DB shard group, the default), `1` (one standby DB shard group in a different Availability Zone), and `2` (two standby DB shard groups in two different Availability Zones).
  final pulumi.Input<int?>? computeRedundancy;
  /// Name of the primary DB cluster for the DB shard group.
  final pulumi.Input<String> dbClusterIdentifier;
  /// Name of the DB shard group.
  final pulumi.Input<String> dbShardGroupIdentifier;
  /// Maximum capacity of the DB shard group in Aurora capacity units (ACUs).
  final pulumi.Input<double> maxAcu;
  /// Minimum capacity of the DB shard group in Aurora capacity units (ACUs).
  final pulumi.Input<double?>? minAcu;
  /// Whether the DB shard group is publicly accessible.
  final pulumi.Input<bool?>? publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  final pulumi.Input<ShardGroupTimeouts?>? timeouts;

  /// Creates a new [ShardGroupArgs].
  /// [computeRedundancy] Whether to create standby DB shard groups for the DB shard group. Valid values are `0` (no standby DB shard group, the default), `1` (one standby DB shard group in a different Availability Zone), and `2` (two standby DB shard groups in two different Availability Zones).
  /// [dbClusterIdentifier] Name of the primary DB cluster for the DB shard group.
  /// [dbShardGroupIdentifier] Name of the DB shard group.
  /// [maxAcu] Maximum capacity of the DB shard group in Aurora capacity units (ACUs).
  /// [minAcu] Minimum capacity of the DB shard group in Aurora capacity units (ACUs).
  /// [publiclyAccessible] Whether the DB shard group is publicly accessible.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  const ShardGroupArgs({
    this.computeRedundancy,
    required this.dbClusterIdentifier,
    required this.dbShardGroupIdentifier,
    required this.maxAcu,
    this.minAcu,
    this.publiclyAccessible,
    this.region,
    this.tags,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeRedundancy': ?computeRedundancy,
      'dbClusterIdentifier': dbClusterIdentifier,
      'dbShardGroupIdentifier': dbShardGroupIdentifier,
      'maxAcu': maxAcu,
      'minAcu': ?minAcu,
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ShardGroupTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ShardGroupArgs.fromMap(Map<String, dynamic> map) {
    return ShardGroupArgs(
      computeRedundancy: (() { final guardedValue = map['computeRedundancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      dbClusterIdentifier: pulumi.Input.fromValue(map['dbClusterIdentifier'] as String),
      dbShardGroupIdentifier: pulumi.Input.fromValue(map['dbShardGroupIdentifier'] as String),
      maxAcu: pulumi.Input.fromValue((map['maxAcu'] as num).toDouble()),
      minAcu: (() { final guardedValue = map['minAcu']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShardGroupTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
