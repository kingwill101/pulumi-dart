// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../elastic_cluster_timeouts/elastic_cluster_timeouts.dart';

/// The set of arguments for ElasticCluster.
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

  ElasticClusterArgs({
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
    this.subnetIds,
    this.tags,
    this.timeouts,
    this.vpcSecurityGroupIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['adminUserName'] = adminUserName;
    map['adminUserPassword'] = adminUserPassword;
    map['authType'] = authType;
    final backupRetentionPeriodValue = backupRetentionPeriod;
    if (backupRetentionPeriodValue != null) {
      map['backupRetentionPeriod'] = backupRetentionPeriodValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final preferredBackupWindowValue = preferredBackupWindow;
    if (preferredBackupWindowValue != null) {
      map['preferredBackupWindow'] = preferredBackupWindowValue;
    }
    final preferredMaintenanceWindowValue = preferredMaintenanceWindow;
    if (preferredMaintenanceWindowValue != null) {
      map['preferredMaintenanceWindow'] = preferredMaintenanceWindowValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['shardCapacity'] = shardCapacity;
    map['shardCount'] = shardCount;
    final subnetIdsValue = subnetIds;
    if (subnetIdsValue != null) {
      map['subnetIds'] = subnetIdsValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          ElasticClusterTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    final vpcSecurityGroupIdsValue = vpcSecurityGroupIds;
    if (vpcSecurityGroupIdsValue != null) {
      map['vpcSecurityGroupIds'] = vpcSecurityGroupIdsValue;
    }
    return map;
  }

  factory ElasticClusterArgs.fromMap(Map<String, dynamic> map) {
    return ElasticClusterArgs(
      adminUserName: pulumi.Input.asInput<String>(map['adminUserName']),
      adminUserPassword: pulumi.Input.asInput<String>(map['adminUserPassword']),
      authType: pulumi.Input.asInput<String>(map['authType']),
      backupRetentionPeriod:
          pulumi.Input.asOptionalInput<int>(map['backupRetentionPeriod']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      preferredBackupWindow:
          pulumi.Input.asOptionalInput<String>(map['preferredBackupWindow']),
      preferredMaintenanceWindow: pulumi.Input.asOptionalInput<String>(
          map['preferredMaintenanceWindow']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      shardCapacity: pulumi.Input.asInput<int>(map['shardCapacity']),
      shardCount: pulumi.Input.asInput<int>(map['shardCount']),
      subnetIds: pulumi.Input.asOptionalInput<List<String>>(map['subnetIds']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts:
          pulumi.Input.asOptionalInput<ElasticClusterTimeouts>(map['timeouts']),
      vpcSecurityGroupIds: pulumi.Input.asOptionalInput<List<String>>(
          map['vpcSecurityGroupIds']),
    );
  }
}
