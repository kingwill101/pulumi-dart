// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_master_user_secret.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  /// Hostname of the RDS instance. See also `endpoint` and `port`.
  final String? address;
  /// Allocated storage size specified in gigabytes.
  final int? allocatedStorage;
  /// Indicates that minor version patches are applied automatically.
  final bool? autoMinorVersionUpgrade;
  /// Name of the Availability Zone the DB instance is located in.
  final String? availabilityZone;
  /// Specifies the number of days for which automatic DB snapshots are retained.
  final int? backupRetentionPeriod;
  /// Identifier of the CA certificate for the DB instance.
  final String? caCertIdentifier;
  /// The mode of Database Insights that is enabled for the DB instance.
  final String? databaseInsightsMode;
  /// If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of.
  final String? dbClusterIdentifier;
  /// ARN for the DB instance.
  final String? dbInstanceArn;
  /// Contains the name of the compute and memory capacity class of the DB instance.
  final String? dbInstanceClass;
  final String? dbInstanceIdentifier;
  /// Port that the DB instance listens on.
  final int? dbInstancePort;
  /// Contains the name of the initial database of this instance that was provided at create time, if one was specified when the DB instance was created. This same name is returned for the life of the DB instance.
  final String? dbName;
  /// Provides the list of DB parameter groups applied to this DB instance.
  final List<String>? dbParameterGroups;
  /// Name of the subnet group associated with the DB instance.
  final String? dbSubnetGroup;
  /// List of log types to export to cloudwatch.
  final List<String>? enabledCloudwatchLogsExports;
  /// Connection endpoint in `address:port` format.
  final String? endpoint;
  /// Provides the name of the database engine to be used for this DB instance.
  final String? engine;
  /// Database engine version.
  final String? engineVersion;
  /// Canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record).
  final String? hostedZoneId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Provisioned IOPS (I/O operations per second) value.
  final int? iops;
  /// The Amazon Web Services KMS key identifier that is used to encrypt the secret.
  final String? kmsKeyId;
  /// License model information for this DB instance.
  final String? licenseModel;
  /// Provides the master user secret. Only available when `manageMasterUserPassword` is set to true. Documented below.
  final List<GetInstanceMasterUserSecret>? masterUserSecrets;
  /// Contains the master username for the DB instance.
  final String? masterUsername;
  /// The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.
  final int? maxAllocatedStorage;
  /// Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance.
  final int? monitoringInterval;
  /// ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to CloudWatch Logs.
  final String? monitoringRoleArn;
  /// If the DB instance is a Multi-AZ deployment.
  final bool? multiAz;
  /// Network type of the DB instance.
  final String? networkType;
  /// Provides the list of option group memberships for this DB instance.
  final List<String>? optionGroupMemberships;
  /// Database endpoint port, primarily used by an Aurora DB cluster. For a conventional RDS DB instance, the `dbInstancePort` is typically the preferred choice.
  final int? port;
  /// Specifies the daily time range during which automated backups are created.
  final String? preferredBackupWindow;
  /// Specifies the weekly time range during which system maintenance can occur in UTC.
  final String? preferredMaintenanceWindow;
  /// Accessibility options for the DB instance.
  final bool? publiclyAccessible;
  final String? region;
  /// Identifier of the source DB that this is a replica of.
  final String? replicateSourceDb;
  /// RDS Resource ID of this instance.
  final String? resourceId;
  /// Whether the DB instance is encrypted.
  final bool? storageEncrypted;
  /// Storage throughput value for the DB instance.
  final int? storageThroughput;
  /// Storage type associated with DB instance.
  final String? storageType;
  final Map<String, String>? tags;
  /// Time zone of the DB instance.
  final String? timezone;
  /// Order in which the instances are upgraded (`first`, `second`, `last`). See [the AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Maintenance.AMVU.UpgradeRollout.html) for details.
  final String? upgradeRolloutOrder;
  /// Provides a list of VPC security group elements that the DB instance belongs to.
  final List<String>? vpcSecurityGroups;

  /// Creates a new [GetInstanceResult].
  /// [address] Hostname of the RDS instance. See also `endpoint` and `port`.
  /// [allocatedStorage] Allocated storage size specified in gigabytes.
  /// [autoMinorVersionUpgrade] Indicates that minor version patches are applied automatically.
  /// [availabilityZone] Name of the Availability Zone the DB instance is located in.
  /// [backupRetentionPeriod] Specifies the number of days for which automatic DB snapshots are retained.
  /// [caCertIdentifier] Identifier of the CA certificate for the DB instance.
  /// [databaseInsightsMode] The mode of Database Insights that is enabled for the DB instance.
  /// [dbClusterIdentifier] If the DB instance is a member of a DB cluster, contains the name of the DB cluster that the DB instance is a member of.
  /// [dbInstanceArn] ARN for the DB instance.
  /// [dbInstanceClass] Contains the name of the compute and memory capacity class of the DB instance.
  /// [dbInstanceIdentifier] Optional.
  /// [dbInstancePort] Port that the DB instance listens on.
  /// [dbName] Contains the name of the initial database of this instance that was provided at create time, if one was specified when the DB instance was created. This same name is returned for the life of the DB instance.
  /// [dbParameterGroups] Provides the list of DB parameter groups applied to this DB instance.
  /// [dbSubnetGroup] Name of the subnet group associated with the DB instance.
  /// [enabledCloudwatchLogsExports] List of log types to export to cloudwatch.
  /// [endpoint] Connection endpoint in `address:port` format.
  /// [engine] Provides the name of the database engine to be used for this DB instance.
  /// [engineVersion] Database engine version.
  /// [hostedZoneId] Canonical hosted zone ID of the DB instance (to be used in a Route 53 Alias record).
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [iops] Provisioned IOPS (I/O operations per second) value.
  /// [kmsKeyId] The Amazon Web Services KMS key identifier that is used to encrypt the secret.
  /// [licenseModel] License model information for this DB instance.
  /// [masterUserSecrets] Provides the master user secret. Only available when `manageMasterUserPassword` is set to true. Documented below.
  /// [masterUsername] Contains the master username for the DB instance.
  /// [maxAllocatedStorage] The upper limit to which Amazon RDS can automatically scale the storage of the DB instance.
  /// [monitoringInterval] Interval, in seconds, between points when Enhanced Monitoring metrics are collected for the DB instance.
  /// [monitoringRoleArn] ARN for the IAM role that permits RDS to send Enhanced Monitoring metrics to CloudWatch Logs.
  /// [multiAz] If the DB instance is a Multi-AZ deployment.
  /// [networkType] Network type of the DB instance.
  /// [optionGroupMemberships] Provides the list of option group memberships for this DB instance.
  /// [port] Database endpoint port, primarily used by an Aurora DB cluster. For a conventional RDS DB instance, the `dbInstancePort` is typically the preferred choice.
  /// [preferredBackupWindow] Specifies the daily time range during which automated backups are created.
  /// [preferredMaintenanceWindow] Specifies the weekly time range during which system maintenance can occur in UTC.
  /// [publiclyAccessible] Accessibility options for the DB instance.
  /// [region] Optional.
  /// [replicateSourceDb] Identifier of the source DB that this is a replica of.
  /// [resourceId] RDS Resource ID of this instance.
  /// [storageEncrypted] Whether the DB instance is encrypted.
  /// [storageThroughput] Storage throughput value for the DB instance.
  /// [storageType] Storage type associated with DB instance.
  /// [tags] Optional.
  /// [timezone] Time zone of the DB instance.
  /// [upgradeRolloutOrder] Order in which the instances are upgraded (`first`, `second`, `last`). See [the AWS documentation](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Maintenance.AMVU.UpgradeRollout.html) for details.
  /// [vpcSecurityGroups] Provides a list of VPC security group elements that the DB instance belongs to.
  const GetInstanceResult({
    this.address,
    this.allocatedStorage,
    this.autoMinorVersionUpgrade,
    this.availabilityZone,
    this.backupRetentionPeriod,
    this.caCertIdentifier,
    this.databaseInsightsMode,
    this.dbClusterIdentifier,
    this.dbInstanceArn,
    this.dbInstanceClass,
    this.dbInstanceIdentifier,
    this.dbInstancePort,
    this.dbName,
    this.dbParameterGroups,
    this.dbSubnetGroup,
    this.enabledCloudwatchLogsExports,
    this.endpoint,
    this.engine,
    this.engineVersion,
    this.hostedZoneId,
    this.id,
    this.iops,
    this.kmsKeyId,
    this.licenseModel,
    this.masterUserSecrets,
    this.masterUsername,
    this.maxAllocatedStorage,
    this.monitoringInterval,
    this.monitoringRoleArn,
    this.multiAz,
    this.networkType,
    this.optionGroupMemberships,
    this.port,
    this.preferredBackupWindow,
    this.preferredMaintenanceWindow,
    this.publiclyAccessible,
    this.region,
    this.replicateSourceDb,
    this.resourceId,
    this.storageEncrypted,
    this.storageThroughput,
    this.storageType,
    this.tags,
    this.timezone,
    this.upgradeRolloutOrder,
    this.vpcSecurityGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'allocatedStorage': ?allocatedStorage,
      'autoMinorVersionUpgrade': ?autoMinorVersionUpgrade,
      'availabilityZone': ?availabilityZone,
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'caCertIdentifier': ?caCertIdentifier,
      'databaseInsightsMode': ?databaseInsightsMode,
      'dbClusterIdentifier': ?dbClusterIdentifier,
      'dbInstanceArn': ?dbInstanceArn,
      'dbInstanceClass': ?dbInstanceClass,
      'dbInstanceIdentifier': ?dbInstanceIdentifier,
      'dbInstancePort': ?dbInstancePort,
      'dbName': ?dbName,
      'dbParameterGroups': ?dbParameterGroups,
      'dbSubnetGroup': ?dbSubnetGroup,
      'enabledCloudwatchLogsExports': ?enabledCloudwatchLogsExports,
      'endpoint': ?endpoint,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'hostedZoneId': ?hostedZoneId,
      'id': ?id,
      'iops': ?iops,
      'kmsKeyId': ?kmsKeyId,
      'licenseModel': ?licenseModel,
      'masterUserSecrets': ?(() { final guardedValue = masterUserSecrets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceMasterUserSecret, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'masterUsername': ?masterUsername,
      'maxAllocatedStorage': ?maxAllocatedStorage,
      'monitoringInterval': ?monitoringInterval,
      'monitoringRoleArn': ?monitoringRoleArn,
      'multiAz': ?multiAz,
      'networkType': ?networkType,
      'optionGroupMemberships': ?optionGroupMemberships,
      'port': ?port,
      'preferredBackupWindow': ?preferredBackupWindow,
      'preferredMaintenanceWindow': ?preferredMaintenanceWindow,
      'publiclyAccessible': ?publiclyAccessible,
      'region': ?region,
      'replicateSourceDb': ?replicateSourceDb,
      'resourceId': ?resourceId,
      'storageEncrypted': ?storageEncrypted,
      'storageThroughput': ?storageThroughput,
      'storageType': ?storageType,
      'tags': ?tags,
      'timezone': ?timezone,
      'upgradeRolloutOrder': ?upgradeRolloutOrder,
      'vpcSecurityGroups': ?vpcSecurityGroups,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return guardedValue as String; })(),
      allocatedStorage: (() { final guardedValue = map['allocatedStorage']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      autoMinorVersionUpgrade: (() { final guardedValue = map['autoMinorVersionUpgrade']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupRetentionPeriod: (() { final guardedValue = map['backupRetentionPeriod']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      caCertIdentifier: (() { final guardedValue = map['caCertIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseInsightsMode: (() { final guardedValue = map['databaseInsightsMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbClusterIdentifier: (() { final guardedValue = map['dbClusterIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbInstanceArn: (() { final guardedValue = map['dbInstanceArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbInstanceClass: (() { final guardedValue = map['dbInstanceClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbInstanceIdentifier: (() { final guardedValue = map['dbInstanceIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbInstancePort: (() { final guardedValue = map['dbInstancePort']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      dbName: (() { final guardedValue = map['dbName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbParameterGroups: (() { final guardedValue = map['dbParameterGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dbSubnetGroup: (() { final guardedValue = map['dbSubnetGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enabledCloudwatchLogsExports: (() { final guardedValue = map['enabledCloudwatchLogsExports']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostedZoneId: (() { final guardedValue = map['hostedZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      iops: (() { final guardedValue = map['iops']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      masterUserSecrets: (() { final guardedValue = map['masterUserSecrets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceMasterUserSecret>(guardedValue, (value) => GetInstanceMasterUserSecret.fromMap((value as Map).cast<String, dynamic>())); })(),
      masterUsername: (() { final guardedValue = map['masterUsername']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxAllocatedStorage: (() { final guardedValue = map['maxAllocatedStorage']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      monitoringInterval: (() { final guardedValue = map['monitoringInterval']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      monitoringRoleArn: (() { final guardedValue = map['monitoringRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      multiAz: (() { final guardedValue = map['multiAz']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      optionGroupMemberships: (() { final guardedValue = map['optionGroupMemberships']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      preferredBackupWindow: (() { final guardedValue = map['preferredBackupWindow']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preferredMaintenanceWindow: (() { final guardedValue = map['preferredMaintenanceWindow']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publiclyAccessible: (() { final guardedValue = map['publiclyAccessible']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicateSourceDb: (() { final guardedValue = map['replicateSourceDb']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageEncrypted: (() { final guardedValue = map['storageEncrypted']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      storageThroughput: (() { final guardedValue = map['storageThroughput']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upgradeRolloutOrder: (() { final guardedValue = map['upgradeRolloutOrder']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcSecurityGroups: (() { final guardedValue = map['vpcSecurityGroups']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
