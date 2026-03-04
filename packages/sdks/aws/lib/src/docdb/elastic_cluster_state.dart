// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_cluster_timeouts.dart';

/// Input properties used for looking up and filtering ElasticCluster resources.
class ElasticClusterState {
  /// Name of the Elastic DocumentDB cluster administrator
  final pulumi.Input<String>? adminUserName;

  /// Password for the Elastic DocumentDB cluster administrator. Can contain any printable ASCII characters. Must be at least 8 characters
  final pulumi.Input<String>? adminUserPassword;

  /// ARN of the DocumentDB Elastic Cluster
  final pulumi.Input<String>? arn;

  /// Authentication type for the Elastic DocumentDB cluster. Valid values are `PLAIN_TEXT` and `SECRET_ARN`
  final pulumi.Input<String>? authType;

  /// The number of days for which automatic snapshots are retained. It should be in between 1 and 35. If not specified, the default value of 1 is set.
  final pulumi.Input<int>? backupRetentionPeriod;

  /// The DNS address of the DocDB instance
  final pulumi.Input<String>? endpoint;

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
  final pulumi.Input<int>? shardCapacity;

  /// Number of shards assigned to the elastic cluster. Maximum is 32
  ///
  /// The following arguments are optional:
  final pulumi.Input<int>? shardCount;

  /// IDs of subnets in which the Elastic DocumentDB Cluster operates.
  final pulumi.Input<List<String>>? subnetIds;

  /// A map of tags to assign to the collection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<ElasticClusterTimeouts>? timeouts;

  /// List of VPC security groups to associate with the Elastic DocumentDB Cluster
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/docdb-elastic/create-cluster.html).
  final pulumi.Input<List<String>>? vpcSecurityGroupIds;

  /// Creates a new [ElasticClusterState].
  /// [adminUserName] Name of the Elastic DocumentDB cluster administrator
  /// [adminUserPassword] Password for the Elastic DocumentDB cluster administrator. Can contain any printable ASCII characters. Must be at least 8 characters
  /// [arn] ARN of the DocumentDB Elastic Cluster
  /// [authType] Authentication type for the Elastic DocumentDB cluster. Valid values are `PLAIN_TEXT` and `SECRET_ARN`
  /// [backupRetentionPeriod] The number of days for which automatic snapshots are retained. It should be in between 1 and 35. If not specified, the default value of 1 is set.
  /// [endpoint] The DNS address of the DocDB instance
  /// [kmsKeyId] ARN of a KMS key that is used to encrypt the Elastic DocumentDB cluster. If not specified, the default encryption key that KMS creates for your account is used.
  /// [name] Name of the Elastic DocumentDB cluster
  /// [preferredBackupWindow] The daily time range during which automated backups are created if automated backups are enabled, as determined by the `backup_retention_period`.
  /// [preferredMaintenanceWindow] Weekly time range during which system maintenance can occur in UTC. Format: `ddd:hh24:mi-ddd:hh24:mi`. If not specified, AWS will choose a random 30-minute window on a random day of the week.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [shardCapacity] Number of vCPUs assigned to each elastic cluster shard. Maximum is 64. Allowed values are 2, 4, 8, 16, 32, 64
  /// [shardCount] Number of shards assigned to the elastic cluster. Maximum is 32
  /// [subnetIds] IDs of subnets in which the Elastic DocumentDB Cluster operates.
  /// [tags] A map of tags to assign to the collection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [timeouts] Optional.
  /// [vpcSecurityGroupIds] List of VPC security groups to associate with the Elastic DocumentDB Cluster
  ElasticClusterState({
    this.adminUserName,
    this.adminUserPassword,
    this.arn,
    this.authType,
    this.backupRetentionPeriod,
    this.endpoint,
    this.kmsKeyId,
    this.name,
    this.preferredBackupWindow,
    this.preferredMaintenanceWindow,
    this.region,
    this.shardCapacity,
    this.shardCount,
    this.subnetIds,
    this.tags,
    this.tagsAll,
    this.timeouts,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminUserName': ?adminUserName,
      'adminUserPassword': ?adminUserPassword,
      'arn': ?arn,
      'authType': ?authType,
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'endpoint': ?endpoint,
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'preferredBackupWindow': ?preferredBackupWindow,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'region': ?region,
      'shardCapacity': ?shardCapacity,
      'shardCount': ?shardCount,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            ElasticClusterTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
      'vpcSecurityGroupIds': ?vpcSecurityGroupIds,
    };
  }

  factory ElasticClusterState.fromMap(Map<String, dynamic> map) {
    return ElasticClusterState(
      adminUserName: (() {
        final guardedValue = map['adminUserName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      adminUserPassword: (() {
        final guardedValue = map['adminUserPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authType: (() {
        final guardedValue = map['authType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      backupRetentionPeriod: (() {
        final guardedValue = map['backupRetentionPeriod'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKeyId: (() {
        final guardedValue = map['kmsKeyId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preferredBackupWindow: (() {
        final guardedValue = map['preferredBackupWindow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preferredMaintenanceWindow: (() {
        final guardedValue = map['preferredMaintenanceWindow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      shardCapacity: (() {
        final guardedValue = map['shardCapacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      shardCount: (() {
        final guardedValue = map['shardCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      subnetIds: (() {
        final guardedValue = map['subnetIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
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
          ElasticClusterTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      vpcSecurityGroupIds: (() {
        final guardedValue = map['vpcSecurityGroupIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
