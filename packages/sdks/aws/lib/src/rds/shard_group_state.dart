// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shard_group_timeouts.dart';

/// Input properties used for looking up and filtering ShardGroup resources.
class ShardGroupState {
  /// ARN of the shard group.
  final pulumi.Input<String?>? arn;
  /// Whether to create standby DB shard groups for the DB shard group. Valid values are `0` (no standby DB shard group, the default), `1` (one standby DB shard group in a different Availability Zone), and `2` (two standby DB shard groups in two different Availability Zones).
  final pulumi.Input<int?>? computeRedundancy;
  /// Name of the primary DB cluster for the DB shard group.
  final pulumi.Input<String?>? dbClusterIdentifier;
  /// Name of the DB shard group.
  final pulumi.Input<String?>? dbShardGroupIdentifier;
  /// AWS Region-unique, immutable identifier for the DB shard group.
  final pulumi.Input<String?>? dbShardGroupResourceId;
  /// Connection endpoint for the DB shard group.
  final pulumi.Input<String?>? endpoint;
  /// Maximum capacity of the DB shard group in Aurora capacity units (ACUs).
  final pulumi.Input<double?>? maxAcu;
  /// Minimum capacity of the DB shard group in Aurora capacity units (ACUs).
  final pulumi.Input<double?>? minAcu;
  /// Whether the DB shard group is publicly accessible.
  final pulumi.Input<bool?>? publiclyAccessible;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  final pulumi.Input<ShardGroupTimeouts?>? timeouts;

  /// Creates a new [ShardGroupState].
  /// [arn] ARN of the shard group.
  /// [computeRedundancy] Whether to create standby DB shard groups for the DB shard group. Valid values are `0` (no standby DB shard group, the default), `1` (one standby DB shard group in a different Availability Zone), and `2` (two standby DB shard groups in two different Availability Zones).
  /// [dbClusterIdentifier] Name of the primary DB cluster for the DB shard group.
  /// [dbShardGroupIdentifier] Name of the DB shard group.
  /// [dbShardGroupResourceId] AWS Region-unique, immutable identifier for the DB shard group.
  /// [endpoint] Connection endpoint for the DB shard group.
  /// [maxAcu] Maximum capacity of the DB shard group in Aurora capacity units (ACUs).
  /// [minAcu] Minimum capacity of the DB shard group in Aurora capacity units (ACUs).
  /// [publiclyAccessible] Whether the DB shard group is publicly accessible.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [timeouts] Optional.
  const ShardGroupState({
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
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ShardGroupTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ShardGroupState.fromMap(Map<String, dynamic> map) {
    return ShardGroupState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeRedundancy: (() { final guardedValue = map['computeRedundancy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      dbClusterIdentifier: (() { final guardedValue = map['dbClusterIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbShardGroupIdentifier: (() { final guardedValue = map['dbShardGroupIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbShardGroupResourceId: (() { final guardedValue = map['dbShardGroupResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxAcu: (() { final guardedValue = map['maxAcu']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      minAcu: (() { final guardedValue = map['minAcu']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ShardGroupTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
