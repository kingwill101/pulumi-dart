// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_master_user_secret/get_instance_master_user_secret.dart';

/// Result data returned by getInstance.
class GetInstanceResult3 {
  /// Hostname of the RDS instance. See also `endpoint` and `port`.
  final String address;

  /// Allocated storage size specified in gigabytes.
  final int allocatedStorage;

  /// Indicates that minor version patches are applied automatically.
  final bool autoMinorVersionUpgrade;

  /// Name of the Availability Zone the DB instance is located in.
  final String availabilityZone;

  /// Specifies the number of days for which automatic DB snapshots are retained.
  final int backupRetentionPeriod;

  /// Identifier of the CA certificate for the DB instance.
  final String caCertIdentifier;

  /// The mode of Database Insights that is enabled for the DB instance.
  final String databaseInsightsMode;

  /// If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of.
  final String dbClusterIdentifier;

  /// ARN for the DB instance.
  final String dbInstanceArn;

  /// Contains the name of the compute and memory capacity class of the DB instance.
  final String dbInstanceClass;
  final String dbInstanceIdentifier;

  /// Port that the DB instance listens on.
  final int dbInstancePort;

  /// Contains the name of the initial database of this instance that was provided at create time, if one was specified when the DB instance was created. This same name is returned for the life of the DB instance.
  final String dbName;

  /// Provides the list of DB parameter groups applied to this DB instance.
  final List<String> dbParameterGroups;

  /// Name of the subnet group associated with the DB instance.
  final String dbSubnetGroup;

  /// List of log types to export to cloudwatch.
  final List<String> enabledCloudwatchLogsExports;

  /// Connection endpoint in `address:port` format.
  final String endpoint;

  /// Provides the name of the database engine to be used for this DB instance.
  final String engine;

  /// Database engine version.
  final String engineVersion;

  /// Canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record).
  final String hostedZoneId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Provisioned IOPS (I/O operations per second) value.
  final int iops;

  /// The Amazon Web Services KMS key identifier that is used to encrypt the secret.
  final String kmsKeyId;

  /// License model information for this DB instance.
  final String licenseModel;

  /// Provides the master user secret. Only available when `manage_master_user_password` is set to true. Documented below.
  final List<GetInstanceMasterUserSecret> masterUserSecrets;

  /// Contains the master username for the DB instance.
  final String masterUsername;

  /// The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.
  final int maxAllocatedStorage;

  /// Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance.
  final int monitoringInterval;

  /// ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to CloudWatch Logs.
  final String monitoringRoleArn;

  /// If the DB instance is a Multi-AZ deployment.
  final bool multiAz;

  /// Network type of the DB instance.
  final String networkType;

  /// Provides the list of option group memberships for this DB instance.
  final List<String> optionGroupMemberships;

  /// Database endpoint port, primarily used by an Aurora DB cluster. For a conventional RDS DB instance, the `db_instance_port` is typically the preferred choice.
  final int port;

  /// Specifies the daily time range during which automated backups are created.
  final String preferredBackupWindow;

  /// Specifies the weekly time range during which system maintenance can occur in UTC.
  final String preferredMaintenanceWindow;

  /// Accessibility options for the DB instance.
  final bool publiclyAccessible;
  final String region;

  /// Identifier of the source DB that this is a replica of.
  final String replicateSourceDb;

  /// RDS Resource ID of this instance.
  final String resourceId;

  /// Whether the DB instance is encrypted.
  final bool storageEncrypted;

  /// Storage throughput value for the DB instance.
  final int storageThroughput;

  /// Storage type associated with DB instance.
  final String storageType;
  final Map<String, String> tags;

  /// Time zone of the DB instance.
  final String timezone;

  /// Order in which the instances are upgraded (`first`, `second`, `last`). See [the AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Maintenance.AMVU.UpgradeRollout.html) for details.
  final String upgradeRolloutOrder;

  /// Provides a list of VPC security group elements that the DB instance belongs to.
  final List<String> vpcSecurityGroups;

  GetInstanceResult3({
    required this.address,
    required this.allocatedStorage,
    required this.autoMinorVersionUpgrade,
    required this.availabilityZone,
    required this.backupRetentionPeriod,
    required this.caCertIdentifier,
    required this.databaseInsightsMode,
    required this.dbClusterIdentifier,
    required this.dbInstanceArn,
    required this.dbInstanceClass,
    required this.dbInstanceIdentifier,
    required this.dbInstancePort,
    required this.dbName,
    required this.dbParameterGroups,
    required this.dbSubnetGroup,
    required this.enabledCloudwatchLogsExports,
    required this.endpoint,
    required this.engine,
    required this.engineVersion,
    required this.hostedZoneId,
    required this.id,
    required this.iops,
    required this.kmsKeyId,
    required this.licenseModel,
    required this.masterUserSecrets,
    required this.masterUsername,
    required this.maxAllocatedStorage,
    required this.monitoringInterval,
    required this.monitoringRoleArn,
    required this.multiAz,
    required this.networkType,
    required this.optionGroupMemberships,
    required this.port,
    required this.preferredBackupWindow,
    required this.preferredMaintenanceWindow,
    required this.publiclyAccessible,
    required this.region,
    required this.replicateSourceDb,
    required this.resourceId,
    required this.storageEncrypted,
    required this.storageThroughput,
    required this.storageType,
    required this.tags,
    required this.timezone,
    required this.upgradeRolloutOrder,
    required this.vpcSecurityGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['allocatedStorage'] = allocatedStorage;
    map['autoMinorVersionUpgrade'] = autoMinorVersionUpgrade;
    map['availabilityZone'] = availabilityZone;
    map['backupRetentionPeriod'] = backupRetentionPeriod;
    map['caCertIdentifier'] = caCertIdentifier;
    map['databaseInsightsMode'] = databaseInsightsMode;
    map['dbClusterIdentifier'] = dbClusterIdentifier;
    map['dbInstanceArn'] = dbInstanceArn;
    map['dbInstanceClass'] = dbInstanceClass;
    map['dbInstanceIdentifier'] = dbInstanceIdentifier;
    map['dbInstancePort'] = dbInstancePort;
    map['dbName'] = dbName;
    map['dbParameterGroups'] = dbParameterGroups;
    map['dbSubnetGroup'] = dbSubnetGroup;
    map['enabledCloudwatchLogsExports'] = enabledCloudwatchLogsExports;
    map['endpoint'] = endpoint;
    map['engine'] = engine;
    map['engineVersion'] = engineVersion;
    map['hostedZoneId'] = hostedZoneId;
    map['id'] = id;
    map['iops'] = iops;
    map['kmsKeyId'] = kmsKeyId;
    map['licenseModel'] = licenseModel;
    map['masterUserSecrets'] =
        Input.encodeList<GetInstanceMasterUserSecret, Map<String, dynamic>>(
            masterUserSecrets, (value) => value.toMap());
    map['masterUsername'] = masterUsername;
    map['maxAllocatedStorage'] = maxAllocatedStorage;
    map['monitoringInterval'] = monitoringInterval;
    map['monitoringRoleArn'] = monitoringRoleArn;
    map['multiAz'] = multiAz;
    map['networkType'] = networkType;
    map['optionGroupMemberships'] = optionGroupMemberships;
    map['port'] = port;
    map['preferredBackupWindow'] = preferredBackupWindow;
    map['preferredMaintenanceWindow'] = preferredMaintenanceWindow;
    map['publiclyAccessible'] = publiclyAccessible;
    map['region'] = region;
    map['replicateSourceDb'] = replicateSourceDb;
    map['resourceId'] = resourceId;
    map['storageEncrypted'] = storageEncrypted;
    map['storageThroughput'] = storageThroughput;
    map['storageType'] = storageType;
    map['tags'] = tags;
    map['timezone'] = timezone;
    map['upgradeRolloutOrder'] = upgradeRolloutOrder;
    map['vpcSecurityGroups'] = vpcSecurityGroups;
    return map;
  }

  factory GetInstanceResult3.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult3(
      address: map['address'] as String,
      allocatedStorage: map['allocatedStorage'] as int,
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] as bool,
      availabilityZone: map['availabilityZone'] as String,
      backupRetentionPeriod: map['backupRetentionPeriod'] as int,
      caCertIdentifier: map['caCertIdentifier'] as String,
      databaseInsightsMode: map['databaseInsightsMode'] as String,
      dbClusterIdentifier: map['dbClusterIdentifier'] as String,
      dbInstanceArn: map['dbInstanceArn'] as String,
      dbInstanceClass: map['dbInstanceClass'] as String,
      dbInstanceIdentifier: map['dbInstanceIdentifier'] as String,
      dbInstancePort: map['dbInstancePort'] as int,
      dbName: map['dbName'] as String,
      dbParameterGroups: (map['dbParameterGroups'] as List).cast<String>(),
      dbSubnetGroup: map['dbSubnetGroup'] as String,
      enabledCloudwatchLogsExports:
          (map['enabledCloudwatchLogsExports'] as List).cast<String>(),
      endpoint: map['endpoint'] as String,
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      hostedZoneId: map['hostedZoneId'] as String,
      id: map['id'] as String,
      iops: map['iops'] as int,
      kmsKeyId: map['kmsKeyId'] as String,
      licenseModel: map['licenseModel'] as String,
      masterUserSecrets: Input.decodeList<GetInstanceMasterUserSecret>(
          map['masterUserSecrets'],
          (value) => GetInstanceMasterUserSecret.fromMap(
              (value as Map).cast<String, dynamic>())),
      masterUsername: map['masterUsername'] as String,
      maxAllocatedStorage: map['maxAllocatedStorage'] as int,
      monitoringInterval: map['monitoringInterval'] as int,
      monitoringRoleArn: map['monitoringRoleArn'] as String,
      multiAz: map['multiAz'] as bool,
      networkType: map['networkType'] as String,
      optionGroupMemberships:
          (map['optionGroupMemberships'] as List).cast<String>(),
      port: map['port'] as int,
      preferredBackupWindow: map['preferredBackupWindow'] as String,
      preferredMaintenanceWindow: map['preferredMaintenanceWindow'] as String,
      publiclyAccessible: map['publiclyAccessible'] as bool,
      region: map['region'] as String,
      replicateSourceDb: map['replicateSourceDb'] as String,
      resourceId: map['resourceId'] as String,
      storageEncrypted: map['storageEncrypted'] as bool,
      storageThroughput: map['storageThroughput'] as int,
      storageType: map['storageType'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      timezone: map['timezone'] as String,
      upgradeRolloutOrder: map['upgradeRolloutOrder'] as String,
      vpcSecurityGroups: (map['vpcSecurityGroups'] as List).cast<String>(),
    );
  }
}
