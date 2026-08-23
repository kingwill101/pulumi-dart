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
  /// The daily time range during which automated backups are created if automated backups are enabled, as determined by the `backupRetentionPeriod`.
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
  /// Number of replica instances applying to all shards in the elastic cluster. If not specified, the default value of 2 is set.
  final pulumi.Input<int>? shardInstanceCount;
  /// IDs of subnets in which the Elastic DocumentDB Cluster operates.
  final pulumi.Input<List<String>>? subnetIds;
  /// A map of tags to assign to the collection. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
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
  /// [preferredBackupWindow] The daily time range during which automated backups are created if automated backups are enabled, as determined by the `backupRetentionPeriod`.
  /// [preferredMaintenanceWindow] Weekly time range during which system maintenance can occur in UTC. Format: `ddd:hh24:mi-ddd:hh24:mi`. If not specified, AWS will choose a random 30-minute window on a random day of the week.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [shardCapacity] Number of vCPUs assigned to each elastic cluster shard. Maximum is 64. Allowed values are 2, 4, 8, 16, 32, 64
  /// [shardCount] Number of shards assigned to the elastic cluster. Maximum is 32
  /// [shardInstanceCount] Number of replica instances applying to all shards in the elastic cluster. If not specified, the default value of 2 is set.
  /// [subnetIds] IDs of subnets in which the Elastic DocumentDB Cluster operates.
  /// [tags] A map of tags to assign to the collection. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [timeouts] Optional.
  /// [vpcSecurityGroupIds] List of VPC security groups to associate with the Elastic DocumentDB Cluster
  const ElasticClusterArgs({
    required this.adminUserName,
    required this.adminUserPassword,
    required this.authType,
    this.backupRetentionPeriod,
    this.kmsKeyId,
    this.name,
    this.preferredBackupWindow,
    this.preferredMaintenanceWindow,
    this.region,
    required this.shardCapacity,
    required this.shardCount,
    this.shardInstanceCount,
    this.subnetIds,
    this.tags,
    this.timeouts,
    this.vpcSecurityGroupIds,
  });

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
      'shardInstanceCount': ?shardInstanceCount,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ElasticClusterTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory ElasticClusterArgs.fromMap(Map<String, dynamic> map) {
    return ElasticClusterArgs(
      adminUserName: pulumi.Input.fromValue(map['adminUserName'] as String),
      adminUserPassword: pulumi.Input.fromValue(map['adminUserPassword'] as String),
      authType: pulumi.Input.fromValue(map['authType'] as String),
      backupRetentionPeriod: (() { final guardedValue = map['backupRetentionPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredBackupWindow: (() { final guardedValue = map['preferredBackupWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredMaintenanceWindow: (() { final guardedValue = map['preferredMaintenanceWindow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shardCapacity: pulumi.Input.fromValue(map['shardCapacity'] as int),
      shardCount: pulumi.Input.fromValue(map['shardCount'] as int),
      shardInstanceCount: (() { final guardedValue = map['shardInstanceCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticClusterTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vpcSecurityGroupIds: (() { final guardedValue = map['vpcSecurityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
