// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../shard_group_timeouts/shard_group_timeouts.dart';

/// The set of arguments for ShardGroup.
class ShardGroupArgs {
  /// Specifies whether to create standby DB shard groups for the DB shard group. Valid values are:
  final Input<int>? computeRedundancy;

  /// The name of the primary DB cluster for the DB shard group.
  final Input<String> dbClusterIdentifier;

  /// The name of the DB shard group.
  final Input<String> dbShardGroupIdentifier;

  /// The maximum capacity of the DB shard group in Aurora capacity units (ACUs).
  final Input<double> maxAcu;

  /// The minimum capacity of the DB shard group in Aurora capacity units (ACUs).
  final Input<double>? minAcu;

  /// Indicates whether the DB shard group is publicly accessible.
  final Input<bool>? publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-shard-group.html).
  final Input<Map<String, String>>? tags;
  final Input<ShardGroupTimeouts>? timeouts;

  ShardGroupArgs({
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
      map['timeouts'] =
          Input.mapOptionalInputValue<ShardGroupTimeouts, Map<String, dynamic>>(
              timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ShardGroupArgs.fromMap(Map<String, dynamic> map) {
    return ShardGroupArgs(
      computeRedundancy: Input.asOptionalInput<int>(map['computeRedundancy']),
      dbClusterIdentifier: Input.asInput<String>(map['dbClusterIdentifier']),
      dbShardGroupIdentifier:
          Input.asInput<String>(map['dbShardGroupIdentifier']),
      maxAcu: Input.asInput<double>(map['maxAcu']),
      minAcu: Input.asOptionalInput<double>(map['minAcu']),
      publiclyAccessible:
          Input.asOptionalInput<bool>(map['publiclyAccessible']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<ShardGroupTimeouts>(map['timeouts']),
    );
  }
}
