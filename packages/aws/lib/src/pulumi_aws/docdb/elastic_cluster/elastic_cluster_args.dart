// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../elastic_cluster_timeouts/elastic_cluster_timeouts.dart';

/// The set of arguments for ElasticCluster.
class ElasticClusterArgs {
  /// Name of the Elastic DocumentDB cluster administrator
  final Input<String> adminUserName;

  /// Password for the Elastic DocumentDB cluster administrator. Can contain any printable ASCII characters. Must be at least 8 characters
  final Input<String> adminUserPassword;

  /// Authentication type for the Elastic DocumentDB cluster. Valid values are `PLAIN_TEXT` and `SECRET_ARN`
  final Input<String> authType;

  /// The number of days for which automatic snapshots are retained. It should be in between 1 and 35. If not specified, the default value of 1 is set.
  final Input<int>? backupRetentionPeriod;

  /// ARN of a KMS key that is used to encrypt the Elastic DocumentDB cluster. If not specified, the default encryption key that KMS creates for your account is used.
  final Input<String>? kmsKeyId;

  /// Name of the Elastic DocumentDB cluster
  final Input<String>? name;

  /// The daily time range during which automated backups are created if automated backups are enabled, as determined by the <span pulumi-lang-nodejs="`backupRetentionPeriod`" pulumi-lang-dotnet="`BackupRetentionPeriod`" pulumi-lang-go="`backupRetentionPeriod`" pulumi-lang-python="`backup_retention_period`" pulumi-lang-yaml="`backupRetentionPeriod`" pulumi-lang-java="`backupRetentionPeriod`">`backup_retention_period`</span>.
  final Input<String>? preferredBackupWindow;

  /// Weekly time range during which system maintenance can occur in UTC. Format: `ddd:hh24:mi-ddd:hh24:mi`. If not specified, AWS will choose a random 30-minute window on a random day of the week.
  final Input<String>? preferredMaintenanceWindow;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Number of vCPUs assigned to each elastic cluster shard. Maximum is 64. Allowed values are 2, 4, 8, 16, 32, 64
  final Input<int> shardCapacity;

  /// Number of shards assigned to the elastic cluster. Maximum is 32
  ///
  /// The following arguments are optional:
  final Input<int> shardCount;

  /// IDs of subnets in which the Elastic DocumentDB Cluster operates.
  final Input<List<String>>? subnetIds;

  /// A map of tags to assign to the collection. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;
  final Input<ElasticClusterTimeouts>? timeouts;

  /// List of VPC security groups to associate with the Elastic DocumentDB Cluster
  ///
  /// For more detailed documentation about each argument, refer to
  /// the [AWS official documentation](https://docs.aws.amazon.com/cli/latest/reference/docdb-elastic/create-cluster.html).
  final Input<List<String>>? vpcSecurityGroupIds;

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
      map['timeouts'] = Input.mapOptionalInputValue<ElasticClusterTimeouts,
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
      adminUserName: Input.asInput<String>(map['adminUserName']),
      adminUserPassword: Input.asInput<String>(map['adminUserPassword']),
      authType: Input.asInput<String>(map['authType']),
      backupRetentionPeriod:
          Input.asOptionalInput<int>(map['backupRetentionPeriod']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      name: Input.asOptionalInput<String>(map['name']),
      preferredBackupWindow:
          Input.asOptionalInput<String>(map['preferredBackupWindow']),
      preferredMaintenanceWindow:
          Input.asOptionalInput<String>(map['preferredMaintenanceWindow']),
      region: Input.asOptionalInput<String>(map['region']),
      shardCapacity: Input.asInput<int>(map['shardCapacity']),
      shardCount: Input.asInput<int>(map['shardCount']),
      subnetIds: Input.asOptionalInput<List<String>>(map['subnetIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      timeouts: Input.asOptionalInput<ElasticClusterTimeouts>(map['timeouts']),
      vpcSecurityGroupIds:
          Input.asOptionalInput<List<String>>(map['vpcSecurityGroupIds']),
    );
  }
}
