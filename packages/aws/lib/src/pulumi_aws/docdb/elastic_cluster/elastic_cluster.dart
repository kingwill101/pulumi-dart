import 'package:pulumi/pulumi.dart';
import '../elastic_cluster_timeouts/elastic_cluster_timeouts.dart';
import 'elastic_cluster_args.dart';

/// Manages an AWS DocDB (DocumentDB) Elastic Cluster.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the DocDB Elastic cluster.
///
///
/// Using `pulumi import`, import DocDB (DocumentDB) Elastic Cluster using the `arn` argument. For example,
///
/// ```sh
/// $ pulumi import aws:docdb/elasticCluster:ElasticCluster example arn:aws:docdb-elastic:us-east-1:000011112222:cluster/12345678-7abc-def0-1234-56789abcdef
/// ```
class ElasticCluster extends CustomResource {
  /// Name of the Elastic DocumentDB cluster administrator
  late final Output<String> adminUserName;

  /// Password for the Elastic DocumentDB cluster administrator. Can contain any printable ASCII characters. Must be at least 8 characters
  late final Output<String> adminUserPassword;

  /// ARN of the DocumentDB Elastic Cluster
  late final Output<String> arn;

  /// Authentication type for the Elastic DocumentDB cluster. Valid values are `PLAIN_TEXT` and `SECRET_ARN`
  late final Output<String> authType;

  /// The number of days for which automatic snapshots are retained. It should be in between 1 and 35. If not specified, the default value of 1 is set.
  late final Output<int> backupRetentionPeriod;

  /// The DNS address of the DocDB instance
  late final Output<String> endpoint;

  /// ARN of a KMS key that is used to encrypt the Elastic DocumentDB cluster. If not specified, the default encryption key that KMS creates for your account is used.
  late final Output<String> kmsKeyId;

  /// Name of the Elastic DocumentDB cluster
  late final Output<String> name;

  /// The daily time range during which automated backups are created if automated backups are enabled, as determined by the `backup_retention_period`.
  late final Output<String> preferredBackupWindow;

  /// Weekly time range during which system maintenance can occur in UTC. Format: `ddd:hh24:mi-ddd:hh24:mi`. If not specified, AWS will choose a random 30-minute window on a random day of the week.
  late final Output<String> preferredMaintenanceWindow;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Number of vCPUs assigned to each elastic cluster shard. Maximum is 64. Allowed values are 2, 4, 8, 16, 32, 64
  late final Output<int> shardCapacity;

  /// Number of shards assigned to the elastic cluster. Maximum is 32
  ///
  /// The following arguments are optional:
  late final Output<int> shardCount;

  /// IDs of subnets in which the Elastic DocumentDB Cluster operates.
  late final Output<List<String>> subnetIds;

  /// A map of tags to assign to the collection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;
  late final Output<ElasticClusterTimeouts?> timeouts;

  /// List of VPC security groups to associate with the Elastic DocumentDB Cluster
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/docdb-elastic/create-cluster.html).
  late final Output<List<String>> vpcSecurityGroupIds;

  ElasticCluster(
    String name, {
    ElasticClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:docdb/elasticCluster:ElasticCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.adminUserName = registerOutput<String>('adminUserName');
    this.adminUserPassword = registerOutput<String>('adminUserPassword');
    this.arn = registerOutput<String>('arn');
    this.authType = registerOutput<String>('authType');
    this.backupRetentionPeriod = registerOutput<int>('backupRetentionPeriod');
    this.endpoint = registerOutput<String>('endpoint');
    this.kmsKeyId = registerOutput<String>('kmsKeyId');
    this.name = registerOutput<String>('name');
    this.preferredBackupWindow =
        registerOutput<String>('preferredBackupWindow');
    this.preferredMaintenanceWindow =
        registerOutput<String>('preferredMaintenanceWindow');
    this.region = registerOutput<String>('region');
    this.shardCapacity = registerOutput<int>('shardCapacity');
    this.shardCount = registerOutput<int>('shardCount');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ElasticClusterTimeouts?>('timeouts');
    this.vpcSecurityGroupIds =
        registerOutput<List<String>>('vpcSecurityGroupIds');
  }
}
