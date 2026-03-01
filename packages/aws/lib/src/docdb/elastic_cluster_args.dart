// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_cluster_timeouts.dart';

/// {@template pulumi_docdb_elastic_cluster_elastic_cluster_args_doc}
/// The set of arguments for ElasticCluster.
/// {@endtemplate}
/// {@macro pulumi_docdb_elastic_cluster_elastic_cluster_args_doc}
class ElasticClusterArgs {
  /// Name of the Elastic DocumentDB cluster administrator
  final pulumi.Input<String> adminUserName;

  /// Password for the Elastic DocumentDB cluster administrator. Can contain any printable ASCII characters. Must be at least 8 characters
  final pulumi.Input<String> adminUserPassword;

  /// Authentication type for the Elastic DocumentDB cluster. Valid values are `PLAIN_TEXT` and `SECRET_ARN`
  final pulumi.Input<String> authType;

  /// The number of days for which automatic snapshots are retained. It should be in between 1 and 35. If not specified, the default value of 1 is set.
  final pulumi.Input<int>? backupRetentionPeriod;

  /// ARN of a KMS key that is used to encrypt the Elastic DocumentDB cluster. If not specified, the default encryption key that KMS creates for your account is used.
  final pulumi.Input<String>? kmsKeyId;

  /// Name of the Elastic DocumentDB cluster
  final pulumi.Input<String>? name;

  /// The daily time range during which automated backups are created if automated backups are enabled, as determined by the `backup_retention_period`.
  final pulumi.Input<String>? preferredBackupWindow;

  /// Weekly time range during which system maintenance can occur in UTC. Format: `ddd:hh24:mi-ddd:hh24:mi`. If not specified, AWS will choose a random 30-minute window on a random day of the week.
  final pulumi.Input<String>? preferredMaintenanceWindow;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Number of vCPUs assigned to each elastic cluster shard. Maximum is 64. Allowed values are 2, 4, 8, 16, 32, 64
  final pulumi.Input<int> shardCapacity;

  /// Number of shards assigned to the elastic cluster. Maximum is 32
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> shardCount;

  /// IDs of subnets in which the Elastic DocumentDB Cluster operates.
  final pulumi.Input<List<String>>? subnetIds;

  /// A map of tags to assign to the collection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<ElasticClusterTimeouts>? timeouts;

  /// List of VPC security groups to associate with the Elastic DocumentDB Cluster
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/docdb-elastic/create-cluster.html).
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// Creates a new [ElasticClusterArgs].
  /// [adminUserName] Name of the Elastic DocumentDB cluster administrator
  /// [adminUserPassword] Password for the Elastic DocumentDB cluster administrator. Can contain any printable ASCII characters. Must be at least 8 characters
  /// [authType] Authentication type for the Elastic DocumentDB cluster. Valid values are `PLAIN_TEXT` and `SECRET_ARN`
  /// [backupRetentionPeriod] The number of days for which automatic snapshots are retained. It should be in between 1 and 35. If not specified, the default value of 1 is set.
  /// [kmsKeyId] ARN of a KMS key that is used to encrypt the Elastic DocumentDB cluster. If not specified, the default encryption key that KMS creates for your account is used.
  /// [name] Name of the Elastic DocumentDB cluster
  /// [preferredBackupWindow] The daily time range during which automated backups are created if automated backups are enabled, as determined by the `backup_retention_period`.
  /// [preferredMaintenanceWindow] Weekly time range during which system maintenance can occur in UTC. Format: `ddd:hh24:mi-ddd:hh24:mi`. If not specified, AWS will choose a random 30-minute window on a random day of the week.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [shardCapacity] Number of vCPUs assigned to each elastic cluster shard. Maximum is 64. Allowed values are 2, 4, 8, 16, 32, 64
  /// [shardCount] Number of shards assigned to the elastic cluster. Maximum is 32
  /// [subnetIds] IDs of subnets in which the Elastic DocumentDB Cluster operates.
  /// [tags] A map of tags to assign to the collection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [vpcSecurityGroupIds] List of VPC security groups to associate with the Elastic DocumentDB Cluster
  ElasticClusterArgs({
    required String adminUserName,
    required String adminUserPassword,
    required String authType,
    int? backupRetentionPeriod,
    String? kmsKeyId,
    String? name,
    String? preferredBackupWindow,
    String? preferredMaintenanceWindow,
    String? region,
    required int shardCapacity,
    required int shardCount,
    List<String>? subnetIds,
    Map<String, String>? tags,
    ElasticClusterTimeouts? timeouts,
    List<String>? vpcSecurityGroupIds,
  }) : adminUserName = pulumi.Input.asInput<String>(adminUserName),
       adminUserPassword = pulumi.Input.asInput<String>(adminUserPassword),
       authType = pulumi.Input.asInput<String>(authType),
       backupRetentionPeriod = pulumi.Input.asOptionalInput<int>(
         backupRetentionPeriod,
       ),
       kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
       name = pulumi.Input.asOptionalInput<String>(name),
       preferredBackupWindow = pulumi.Input.asOptionalInput<String>(
         preferredBackupWindow,
       ),
       preferredMaintenanceWindow = pulumi.Input.asOptionalInput<String>(
         preferredMaintenanceWindow,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       shardCapacity = pulumi.Input.asInput<int>(shardCapacity),
       shardCount = pulumi.Input.asInput<int>(shardCount),
       subnetIds = pulumi.Input.asOptionalInput<List<String>>(subnetIds),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
       timeouts = pulumi.Input.asOptionalInput<ElasticClusterTimeouts>(
         timeouts,
       ),
       vpcSecurityGroupIds = pulumi.Input.asOptionalInput<List<String>>(
         vpcSecurityGroupIds,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUserName': adminUserName,
      'adminUserPassword': adminUserPassword,
      'authType': authType,
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'preferredBackupWindow': ?preferredBackupWindow,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'region': ?region,
      'shardCapacity': shardCapacity,
      'shardCount': shardCount,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            ElasticClusterTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory ElasticClusterArgs.fromMap(Map<String, dynamic> map) {
    return ElasticClusterArgs(
      adminUserName: map['adminUserName'] as String,
      adminUserPassword: map['adminUserPassword'] as String,
      authType: map['authType'] as String,
      backupRetentionPeriod: map['backupRetentionPeriod'] == null
          ? null
          : map['backupRetentionPeriod'] as int,
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      preferredBackupWindow: map['preferredBackupWindow'] == null
          ? null
          : map['preferredBackupWindow'] as String,
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] == null
          ? null
          : map['preferredMaintenanceWindow'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      shardCapacity: map['shardCapacity'] as int,
      shardCount: map['shardCount'] as int,
      subnetIds: map['subnetIds'] == null
          ? null
          : (map['subnetIds'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      timeouts: map['timeouts'] == null
          ? null
          : ElasticClusterTimeouts.fromMap(
              (map['timeouts'] as Map).cast<String, dynamic>(),
            ),
      vpcSecurityGroupIds: map['vpcSecurityGroupIds'] == null
          ? null
          : (map['vpcSecurityGroupIds'] as List).cast<String>(),
    );
  }
}
