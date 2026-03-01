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
    pulumi.Output<String>? arn,
    pulumi.Output<int>? computeRedundancy,
    pulumi.Output<String>? dbClusterIdentifier,
    pulumi.Output<String>? dbShardGroupIdentifier,
    pulumi.Output<String>? dbShardGroupResourceId,
    pulumi.Output<String>? endpoint,
    pulumi.Output<double>? maxAcu,
    pulumi.Output<double>? minAcu,
    pulumi.Output<bool>? publiclyAccessible,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ShardGroupTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      computeRedundancy = pulumi.Input.asOptionalInput<int>(computeRedundancy),
      dbClusterIdentifier = pulumi.Input.asOptionalInput<String>(dbClusterIdentifier),
      dbShardGroupIdentifier = pulumi.Input.asOptionalInput<String>(dbShardGroupIdentifier),
      dbShardGroupResourceId = pulumi.Input.asOptionalInput<String>(dbShardGroupResourceId),
      endpoint = pulumi.Input.asOptionalInput<String>(endpoint),
      maxAcu = pulumi.Input.asOptionalInput<double>(maxAcu),
      minAcu = pulumi.Input.asOptionalInput<double>(minAcu),
      publiclyAccessible = pulumi.Input.asOptionalInput<bool>(publiclyAccessible),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<ShardGroupTimeouts>(timeouts);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      computeRedundancy: map['computeRedundancy'] == null ? null : pulumi.Output.create<int>(map['computeRedundancy'] as int),
      dbClusterIdentifier: map['dbClusterIdentifier'] == null ? null : pulumi.Output.create<String>(map['dbClusterIdentifier'] as String),
      dbShardGroupIdentifier: map['dbShardGroupIdentifier'] == null ? null : pulumi.Output.create<String>(map['dbShardGroupIdentifier'] as String),
      dbShardGroupResourceId: map['dbShardGroupResourceId'] == null ? null : pulumi.Output.create<String>(map['dbShardGroupResourceId'] as String),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<String>(map['endpoint'] as String),
      maxAcu: map['maxAcu'] == null ? null : pulumi.Output.create<double>(map['maxAcu'] as double),
      minAcu: map['minAcu'] == null ? null : pulumi.Output.create<double>(map['minAcu'] as double),
      publiclyAccessible: map['publiclyAccessible'] == null ? null : pulumi.Output.create<bool>(map['publiclyAccessible'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<ShardGroupTimeouts>(ShardGroupTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

