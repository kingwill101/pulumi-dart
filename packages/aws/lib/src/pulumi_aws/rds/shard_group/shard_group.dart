import 'package:pulumi/pulumi.dart';
import '../shard_group_timeouts/shard_group_timeouts.dart';
import 'shard_group_args.dart';

/// Resource for managing an Amazon Aurora Limitless Database DB shard group
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import shard group using the `db_shard_group_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/shardGroup:ShardGroup example example-shard-group
/// ```
class ShardGroup extends CustomResource {
  /// ARN of the shard group.
  late final Output<String> arn;

  /// Specifies whether to create standby DB shard groups for the DB shard group. Valid values are:
  late final Output<int> computeRedundancy;

  /// The name of the primary DB cluster for the DB shard group.
  late final Output<String> dbClusterIdentifier;

  /// The name of the DB shard group.
  late final Output<String> dbShardGroupIdentifier;

  /// The AWS Region-unique, immutable identifier for the DB shard group.
  late final Output<String> dbShardGroupResourceId;

  /// The connection endpoint for the DB shard group.
  late final Output<String> endpoint;

  /// The maximum capacity of the DB shard group in Aurora capacity units (ACUs).
  late final Output<double> maxAcu;

  /// The minimum capacity of the DB shard group in Aurora capacity units (ACUs).
  late final Output<double> minAcu;

  /// Indicates whether the DB shard group is publicly accessible.
  late final Output<bool> publiclyAccessible;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For more detailed documentation about each argument, refer to the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/rds/create-shard-group.html).
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<ShardGroupTimeouts?> timeouts;

  ShardGroup(
    String name, {
    ShardGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rds/shardGroup:ShardGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.computeRedundancy = registerOutput<int>('computeRedundancy');
    this.dbClusterIdentifier = registerOutput<String>('dbClusterIdentifier');
    this.dbShardGroupIdentifier =
        registerOutput<String>('dbShardGroupIdentifier');
    this.dbShardGroupResourceId =
        registerOutput<String>('dbShardGroupResourceId');
    this.endpoint = registerOutput<String>('endpoint');
    this.maxAcu = registerOutput<double>('maxAcu');
    this.minAcu = registerOutput<double>('minAcu');
    this.publiclyAccessible = registerOutput<bool>('publiclyAccessible');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ShardGroupTimeouts?>('timeouts');
  }
}
