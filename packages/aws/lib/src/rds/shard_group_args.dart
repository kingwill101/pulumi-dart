// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'shard_group_timeouts.dart';

/// {@template pulumi_rds_shard_group_shard_group_args_doc}
/// The set of arguments for ShardGroup.
/// {@endtemplate}
/// {@macro pulumi_rds_shard_group_shard_group_args_doc}
class ShardGroupArgs {
  /// Specifies whether to create standby DB shard groups for the DB shard group. Valid values are:
  final pulumi.Input<int>? computeRedundancy;

  /// The name of the primary DB cluster for the DB shard group.
  final pulumi.Input<String> dbClusterIdentifier;

  /// The name of the DB shard group.
  final pulumi.Input<String> dbShardGroupIdentifier;

  /// The maximum capacity of the DB shard group in Aurora capacity units (ACUs).
  final pulumi.Input<double> maxAcu;

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
  final pulumi.Input<ShardGroupTimeouts>? timeouts;

  /// Creates a new [ShardGroupArgs].
  /// [computeRedundancy] Specifies whether to create standby DB shard groups for the DB shard group. Valid values are:
  /// [dbClusterIdentifier] The name of the primary DB cluster for the DB shard group.
  /// [dbShardGroupIdentifier] The name of the DB shard group.
  /// [maxAcu] The maximum capacity of the DB shard group in Aurora capacity units (ACUs).
  /// [minAcu] The minimum capacity of the DB shard group in Aurora capacity units (ACUs).
  /// [publiclyAccessible] Indicates whether the DB shard group is publicly accessible.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  ShardGroupArgs({
    int? computeRedundancy,
    required String dbClusterIdentifier,
    required String dbShardGroupIdentifier,
    required double maxAcu,
    double? minAcu,
    bool? publiclyAccessible,
    String? region,
    Map<String, String>? tags,
    ShardGroupTimeouts? timeouts,
  })  : computeRedundancy =
            pulumi.Input.asOptionalInput<int>(computeRedundancy),
        dbClusterIdentifier = pulumi.Input.asInput<String>(dbClusterIdentifier),
        dbShardGroupIdentifier =
            pulumi.Input.asInput<String>(dbShardGroupIdentifier),
        maxAcu = pulumi.Input.asInput<double>(maxAcu),
        minAcu = pulumi.Input.asOptionalInput<double>(minAcu),
        publiclyAccessible =
            pulumi.Input.asOptionalInput<bool>(publiclyAccessible),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        timeouts = pulumi.Input.asOptionalInput<ShardGroupTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final computeRedundancyValue = computeRedundancy;
    if (computeRedundancyValue != null) {
      map['computeRedundancy'] = computeRedundancyValue;
    }
    map['dbClusterIdentifier'] = dbClusterIdentifier;
    map['dbShardGroupIdentifier'] = dbShardGroupIdentifier;
    map['maxAcu'] = maxAcu;
    final minAcuValue = minAcu;
    if (minAcuValue != null) {
      map['minAcu'] = minAcuValue;
    }
    final publiclyAccessibleValue = publiclyAccessible;
    if (publiclyAccessibleValue != null) {
      map['publiclyAccessible'] = publiclyAccessibleValue;
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
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<ShardGroupTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ShardGroupArgs.fromMap(Map<String, dynamic> map) {
    return ShardGroupArgs(
      computeRedundancy: map['computeRedundancy'] == null
          ? null
          : map['computeRedundancy'] as int,
      dbClusterIdentifier: map['dbClusterIdentifier'] as String,
      dbShardGroupIdentifier: map['dbShardGroupIdentifier'] as String,
      maxAcu: map['maxAcu'] as double,
      minAcu: map['minAcu'] == null ? null : map['minAcu'] as double,
      publiclyAccessible: map['publiclyAccessible'] == null
          ? null
          : map['publiclyAccessible'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : ShardGroupTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}
