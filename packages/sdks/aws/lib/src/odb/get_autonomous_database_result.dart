// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_autonomous_database_admin_password_source.dart';
import 'get_autonomous_database_customer_contacts_to_send_to_oci.dart';
import 'get_autonomous_database_db_tools_detail.dart';
import 'get_autonomous_database_long_term_backup_schedule.dart';
import 'get_autonomous_database_resource_pool_summary.dart';
import 'get_autonomous_database_scheduled_operation.dart';

/// Result data returned by getAutonomousDatabase.
class GetAutonomousDatabaseResult {
  /// Actual data storage currently in use, in TB.
  final double? actualUsedDataStorageSizeInTbs;
  /// Source of the ADMIN password. See `adminPasswordSource` Block below.
  final List<GetAutonomousDatabaseAdminPasswordSource>? adminPasswordSources;
  /// Storage currently allocated, in TB.
  final double? allocatedStorageSizeInTbs;
  /// IP addresses allowed to access the database.
  final List<String>? allowlistedIps;
  /// ARN of the Autonomous Database.
  final String? arn;
  /// Automatic refresh frequency in seconds.
  final int? autoRefreshFrequencyInSeconds;
  /// Refresh lag from the source in seconds.
  final int? autoRefreshPointLagInSeconds;
  /// Maintenance schedule type.
  final String? autonomousMaintenanceScheduleType;
  /// Availability Zone of the database.
  final String? availabilityZone;
  /// Availability Zone ID of the database.
  final String? availabilityZoneId;
  /// Oracle Database versions available for upgrade.
  final List<String>? availableUpgradeVersions;
  /// Automatic backup retention period in days.
  final int? backupRetentionPeriodInDays;
  /// Maximum BYOL compute capacity.
  final double? byolComputeCountLimit;
  /// Database character set.
  final String? characterSet;
  /// Compute capacity allocated to the database tool.
  final double? computeCount;
  /// Compute model, either `ECPU` or `OCPU`.
  final String? computeModel;
  /// Allocated CPU core count.
  final int? cpuCoreCount;
  /// Creation date and time.
  final String? createdAt;
  /// Customer contacts that receive operational notifications from OCI.
  final List<GetAutonomousDatabaseCustomerContactsToSendToOci>? customerContactsToSendToOcis;
  /// Data volume size in GB.
  final int? dataStorageSizeInGbs;
  /// Data volume size in TB.
  final double? dataStorageSizeInTbs;
  /// Oracle Database edition.
  final String? databaseEdition;
  /// Autonomous Database type.
  final String? databaseType;
  /// Database name.
  final String? dbName;
  /// Database management tools enabled for the database.
  final List<GetAutonomousDatabaseDbToolsDetail>? dbToolsDetails;
  /// Oracle Database software version.
  final String? dbVersion;
  /// Database workload.
  final String? dbWorkload;
  /// User-friendly database name.
  final String? displayName;
  /// Encryption key provider.
  final String? encryptionKeyProvider;
  final String? id;
  /// Whether automatic compute scaling is enabled.
  final bool? isAutoScalingEnabled;
  /// Whether automatic storage scaling is enabled.
  final bool? isAutoScalingForStorageEnabled;
  /// Whether the backup retention period is locked.
  final bool? isBackupRetentionLocked;
  /// Whether local Oracle Data Guard is enabled.
  final bool? isLocalDataGuardEnabled;
  /// Whether mutual TLS is required.
  final bool? isMtlsConnectionRequired;
  /// Whether the database is a refreshable clone.
  final bool? isRefreshableClone;
  /// ARN of the AWS KMS encryption key, when configured.
  final String? kmsKeyId;
  /// Oracle license model.
  final String? licenseModel;
  /// Maximum automatic-failover data-loss limit in seconds.
  final int? localAdgAutoFailoverMaxDataLossLimit;
  /// Long-term backup schedule.
  final List<GetAutonomousDatabaseLongTermBackupSchedule>? longTermBackupSchedules;
  /// National character set.
  final String? ncharacterSet;
  /// OCI resource anchor name.
  final String? ociResourceAnchorName;
  /// OCI console URL.
  final String? ociUrl;
  /// Oracle Cloud Identifier.
  final String? ocid;
  /// ARN of the associated ODB network.
  final String? odbNetworkArn;
  /// ID of the associated ODB network.
  final String? odbNetworkId;
  /// Database open mode.
  final String? openMode;
  /// Progress of the current operation.
  final double? percentProgress;
  /// Database permission level.
  final String? permissionLevel;
  /// Private endpoint hostname.
  final String? privateEndpoint;
  /// Private endpoint IP address.
  final String? privateEndpointIp;
  /// Private endpoint label.
  final String? privateEndpointLabel;
  /// Refresh mode of a refreshable clone.
  final String? refreshableMode;
  final String? region;
  /// Resource-pool leader database ID.
  final String? resourcePoolLeaderId;
  /// Resource pool configuration.
  final List<GetAutonomousDatabaseResourcePoolSummary>? resourcePoolSummaries;
  /// Scheduled database start and stop times.
  final List<GetAutonomousDatabaseScheduledOperation>? scheduledOperations;
  /// Oracle service console URL.
  final String? serviceConsoleUrl;
  /// ID of the source database or backup.
  final String? sourceId;
  /// Oracle SQL Developer Web URL.
  final String? sqlWebDeveloperUrl;
  /// IP addresses allowed to access the standby database.
  final List<String>? standbyAllowlistedIps;
  /// Source of standby allowlisted IPs.
  final String? standbyAllowlistedIpsSource;
  /// Current database lifecycle status.
  final String? status;
  /// Additional lifecycle status information.
  final String? statusReason;
  /// Map of tags assigned to the Autonomous Database.
  final Map<String, String>? tags;
  /// Automatic refresh start date and time.
  final String? timeOfAutoRefreshStart;

  /// Creates a new [GetAutonomousDatabaseResult].
  /// [actualUsedDataStorageSizeInTbs] Actual data storage currently in use, in TB.
  /// [adminPasswordSources] Source of the ADMIN password. See `adminPasswordSource` Block below.
  /// [allocatedStorageSizeInTbs] Storage currently allocated, in TB.
  /// [allowlistedIps] IP addresses allowed to access the database.
  /// [arn] ARN of the Autonomous Database.
  /// [autoRefreshFrequencyInSeconds] Automatic refresh frequency in seconds.
  /// [autoRefreshPointLagInSeconds] Refresh lag from the source in seconds.
  /// [autonomousMaintenanceScheduleType] Maintenance schedule type.
  /// [availabilityZone] Availability Zone of the database.
  /// [availabilityZoneId] Availability Zone ID of the database.
  /// [availableUpgradeVersions] Oracle Database versions available for upgrade.
  /// [backupRetentionPeriodInDays] Automatic backup retention period in days.
  /// [byolComputeCountLimit] Maximum BYOL compute capacity.
  /// [characterSet] Database character set.
  /// [computeCount] Compute capacity allocated to the database tool.
  /// [computeModel] Compute model, either `ECPU` or `OCPU`.
  /// [cpuCoreCount] Allocated CPU core count.
  /// [createdAt] Creation date and time.
  /// [customerContactsToSendToOcis] Customer contacts that receive operational notifications from OCI.
  /// [dataStorageSizeInGbs] Data volume size in GB.
  /// [dataStorageSizeInTbs] Data volume size in TB.
  /// [databaseEdition] Oracle Database edition.
  /// [databaseType] Autonomous Database type.
  /// [dbName] Database name.
  /// [dbToolsDetails] Database management tools enabled for the database.
  /// [dbVersion] Oracle Database software version.
  /// [dbWorkload] Database workload.
  /// [displayName] User-friendly database name.
  /// [encryptionKeyProvider] Encryption key provider.
  /// [id] Optional.
  /// [isAutoScalingEnabled] Whether automatic compute scaling is enabled.
  /// [isAutoScalingForStorageEnabled] Whether automatic storage scaling is enabled.
  /// [isBackupRetentionLocked] Whether the backup retention period is locked.
  /// [isLocalDataGuardEnabled] Whether local Oracle Data Guard is enabled.
  /// [isMtlsConnectionRequired] Whether mutual TLS is required.
  /// [isRefreshableClone] Whether the database is a refreshable clone.
  /// [kmsKeyId] ARN of the AWS KMS encryption key, when configured.
  /// [licenseModel] Oracle license model.
  /// [localAdgAutoFailoverMaxDataLossLimit] Maximum automatic-failover data-loss limit in seconds.
  /// [longTermBackupSchedules] Long-term backup schedule.
  /// [ncharacterSet] National character set.
  /// [ociResourceAnchorName] OCI resource anchor name.
  /// [ociUrl] OCI console URL.
  /// [ocid] Oracle Cloud Identifier.
  /// [odbNetworkArn] ARN of the associated ODB network.
  /// [odbNetworkId] ID of the associated ODB network.
  /// [openMode] Database open mode.
  /// [percentProgress] Progress of the current operation.
  /// [permissionLevel] Database permission level.
  /// [privateEndpoint] Private endpoint hostname.
  /// [privateEndpointIp] Private endpoint IP address.
  /// [privateEndpointLabel] Private endpoint label.
  /// [refreshableMode] Refresh mode of a refreshable clone.
  /// [region] Optional.
  /// [resourcePoolLeaderId] Resource-pool leader database ID.
  /// [resourcePoolSummaries] Resource pool configuration.
  /// [scheduledOperations] Scheduled database start and stop times.
  /// [serviceConsoleUrl] Oracle service console URL.
  /// [sourceId] ID of the source database or backup.
  /// [sqlWebDeveloperUrl] Oracle SQL Developer Web URL.
  /// [standbyAllowlistedIps] IP addresses allowed to access the standby database.
  /// [standbyAllowlistedIpsSource] Source of standby allowlisted IPs.
  /// [status] Current database lifecycle status.
  /// [statusReason] Additional lifecycle status information.
  /// [tags] Map of tags assigned to the Autonomous Database.
  /// [timeOfAutoRefreshStart] Automatic refresh start date and time.
  const GetAutonomousDatabaseResult({
    this.actualUsedDataStorageSizeInTbs,
    this.adminPasswordSources,
    this.allocatedStorageSizeInTbs,
    this.allowlistedIps,
    this.arn,
    this.autoRefreshFrequencyInSeconds,
    this.autoRefreshPointLagInSeconds,
    this.autonomousMaintenanceScheduleType,
    this.availabilityZone,
    this.availabilityZoneId,
    this.availableUpgradeVersions,
    this.backupRetentionPeriodInDays,
    this.byolComputeCountLimit,
    this.characterSet,
    this.computeCount,
    this.computeModel,
    this.cpuCoreCount,
    this.createdAt,
    this.customerContactsToSendToOcis,
    this.dataStorageSizeInGbs,
    this.dataStorageSizeInTbs,
    this.databaseEdition,
    this.databaseType,
    this.dbName,
    this.dbToolsDetails,
    this.dbVersion,
    this.dbWorkload,
    this.displayName,
    this.encryptionKeyProvider,
    this.id,
    this.isAutoScalingEnabled,
    this.isAutoScalingForStorageEnabled,
    this.isBackupRetentionLocked,
    this.isLocalDataGuardEnabled,
    this.isMtlsConnectionRequired,
    this.isRefreshableClone,
    this.kmsKeyId,
    this.licenseModel,
    this.localAdgAutoFailoverMaxDataLossLimit,
    this.longTermBackupSchedules,
    this.ncharacterSet,
    this.ociResourceAnchorName,
    this.ociUrl,
    this.ocid,
    this.odbNetworkArn,
    this.odbNetworkId,
    this.openMode,
    this.percentProgress,
    this.permissionLevel,
    this.privateEndpoint,
    this.privateEndpointIp,
    this.privateEndpointLabel,
    this.refreshableMode,
    this.region,
    this.resourcePoolLeaderId,
    this.resourcePoolSummaries,
    this.scheduledOperations,
    this.serviceConsoleUrl,
    this.sourceId,
    this.sqlWebDeveloperUrl,
    this.standbyAllowlistedIps,
    this.standbyAllowlistedIpsSource,
    this.status,
    this.statusReason,
    this.tags,
    this.timeOfAutoRefreshStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualUsedDataStorageSizeInTbs': ?actualUsedDataStorageSizeInTbs,
      'adminPasswordSources': ?(() { final guardedValue = adminPasswordSources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAutonomousDatabaseAdminPasswordSource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'allocatedStorageSizeInTbs': ?allocatedStorageSizeInTbs,
      'allowlistedIps': ?allowlistedIps,
      'arn': ?arn,
      'autoRefreshFrequencyInSeconds': ?autoRefreshFrequencyInSeconds,
      'autoRefreshPointLagInSeconds': ?autoRefreshPointLagInSeconds,
      'autonomousMaintenanceScheduleType': ?autonomousMaintenanceScheduleType,
      'availabilityZone': ?availabilityZone,
      'availabilityZoneId': ?availabilityZoneId,
      'availableUpgradeVersions': ?availableUpgradeVersions,
      'backupRetentionPeriodInDays': ?backupRetentionPeriodInDays,
      'byolComputeCountLimit': ?byolComputeCountLimit,
      'characterSet': ?characterSet,
      'computeCount': ?computeCount,
      'computeModel': ?computeModel,
      'cpuCoreCount': ?cpuCoreCount,
      'createdAt': ?createdAt,
      'customerContactsToSendToOcis': ?(() { final guardedValue = customerContactsToSendToOcis; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAutonomousDatabaseCustomerContactsToSendToOci, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dataStorageSizeInGbs': ?dataStorageSizeInGbs,
      'dataStorageSizeInTbs': ?dataStorageSizeInTbs,
      'databaseEdition': ?databaseEdition,
      'databaseType': ?databaseType,
      'dbName': ?dbName,
      'dbToolsDetails': ?(() { final guardedValue = dbToolsDetails; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAutonomousDatabaseDbToolsDetail, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dbVersion': ?dbVersion,
      'dbWorkload': ?dbWorkload,
      'displayName': ?displayName,
      'encryptionKeyProvider': ?encryptionKeyProvider,
      'id': ?id,
      'isAutoScalingEnabled': ?isAutoScalingEnabled,
      'isAutoScalingForStorageEnabled': ?isAutoScalingForStorageEnabled,
      'isBackupRetentionLocked': ?isBackupRetentionLocked,
      'isLocalDataGuardEnabled': ?isLocalDataGuardEnabled,
      'isMtlsConnectionRequired': ?isMtlsConnectionRequired,
      'isRefreshableClone': ?isRefreshableClone,
      'kmsKeyId': ?kmsKeyId,
      'licenseModel': ?licenseModel,
      'localAdgAutoFailoverMaxDataLossLimit': ?localAdgAutoFailoverMaxDataLossLimit,
      'longTermBackupSchedules': ?(() { final guardedValue = longTermBackupSchedules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAutonomousDatabaseLongTermBackupSchedule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'ncharacterSet': ?ncharacterSet,
      'ociResourceAnchorName': ?ociResourceAnchorName,
      'ociUrl': ?ociUrl,
      'ocid': ?ocid,
      'odbNetworkArn': ?odbNetworkArn,
      'odbNetworkId': ?odbNetworkId,
      'openMode': ?openMode,
      'percentProgress': ?percentProgress,
      'permissionLevel': ?permissionLevel,
      'privateEndpoint': ?privateEndpoint,
      'privateEndpointIp': ?privateEndpointIp,
      'privateEndpointLabel': ?privateEndpointLabel,
      'refreshableMode': ?refreshableMode,
      'region': ?region,
      'resourcePoolLeaderId': ?resourcePoolLeaderId,
      'resourcePoolSummaries': ?(() { final guardedValue = resourcePoolSummaries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAutonomousDatabaseResourcePoolSummary, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'scheduledOperations': ?(() { final guardedValue = scheduledOperations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAutonomousDatabaseScheduledOperation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serviceConsoleUrl': ?serviceConsoleUrl,
      'sourceId': ?sourceId,
      'sqlWebDeveloperUrl': ?sqlWebDeveloperUrl,
      'standbyAllowlistedIps': ?standbyAllowlistedIps,
      'standbyAllowlistedIpsSource': ?standbyAllowlistedIpsSource,
      'status': ?status,
      'statusReason': ?statusReason,
      'tags': ?tags,
      'timeOfAutoRefreshStart': ?timeOfAutoRefreshStart,
    };
  }

  factory GetAutonomousDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseResult(
      actualUsedDataStorageSizeInTbs: (() { final guardedValue = map['actualUsedDataStorageSizeInTbs']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      adminPasswordSources: (() { final guardedValue = map['adminPasswordSources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAutonomousDatabaseAdminPasswordSource>(guardedValue, (value) => GetAutonomousDatabaseAdminPasswordSource.fromMap((value as Map).cast<String, dynamic>())); })(),
      allocatedStorageSizeInTbs: (() { final guardedValue = map['allocatedStorageSizeInTbs']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      allowlistedIps: (() { final guardedValue = map['allowlistedIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoRefreshFrequencyInSeconds: (() { final guardedValue = map['autoRefreshFrequencyInSeconds']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      autoRefreshPointLagInSeconds: (() { final guardedValue = map['autoRefreshPointLagInSeconds']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      autonomousMaintenanceScheduleType: (() { final guardedValue = map['autonomousMaintenanceScheduleType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availableUpgradeVersions: (() { final guardedValue = map['availableUpgradeVersions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      backupRetentionPeriodInDays: (() { final guardedValue = map['backupRetentionPeriodInDays']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      byolComputeCountLimit: (() { final guardedValue = map['byolComputeCountLimit']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      characterSet: (() { final guardedValue = map['characterSet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      computeCount: (() { final guardedValue = map['computeCount']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      computeModel: (() { final guardedValue = map['computeModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cpuCoreCount: (() { final guardedValue = map['cpuCoreCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customerContactsToSendToOcis: (() { final guardedValue = map['customerContactsToSendToOcis']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAutonomousDatabaseCustomerContactsToSendToOci>(guardedValue, (value) => GetAutonomousDatabaseCustomerContactsToSendToOci.fromMap((value as Map).cast<String, dynamic>())); })(),
      dataStorageSizeInGbs: (() { final guardedValue = map['dataStorageSizeInGbs']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      dataStorageSizeInTbs: (() { final guardedValue = map['dataStorageSizeInTbs']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      databaseEdition: (() { final guardedValue = map['databaseEdition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      databaseType: (() { final guardedValue = map['databaseType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbName: (() { final guardedValue = map['dbName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbToolsDetails: (() { final guardedValue = map['dbToolsDetails']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAutonomousDatabaseDbToolsDetail>(guardedValue, (value) => GetAutonomousDatabaseDbToolsDetail.fromMap((value as Map).cast<String, dynamic>())); })(),
      dbVersion: (() { final guardedValue = map['dbVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dbWorkload: (() { final guardedValue = map['dbWorkload']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptionKeyProvider: (() { final guardedValue = map['encryptionKeyProvider']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isAutoScalingEnabled: (() { final guardedValue = map['isAutoScalingEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isAutoScalingForStorageEnabled: (() { final guardedValue = map['isAutoScalingForStorageEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isBackupRetentionLocked: (() { final guardedValue = map['isBackupRetentionLocked']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isLocalDataGuardEnabled: (() { final guardedValue = map['isLocalDataGuardEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isMtlsConnectionRequired: (() { final guardedValue = map['isMtlsConnectionRequired']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isRefreshableClone: (() { final guardedValue = map['isRefreshableClone']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      licenseModel: (() { final guardedValue = map['licenseModel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      localAdgAutoFailoverMaxDataLossLimit: (() { final guardedValue = map['localAdgAutoFailoverMaxDataLossLimit']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      longTermBackupSchedules: (() { final guardedValue = map['longTermBackupSchedules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAutonomousDatabaseLongTermBackupSchedule>(guardedValue, (value) => GetAutonomousDatabaseLongTermBackupSchedule.fromMap((value as Map).cast<String, dynamic>())); })(),
      ncharacterSet: (() { final guardedValue = map['ncharacterSet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ociResourceAnchorName: (() { final guardedValue = map['ociResourceAnchorName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ociUrl: (() { final guardedValue = map['ociUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ocid: (() { final guardedValue = map['ocid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbNetworkArn: (() { final guardedValue = map['odbNetworkArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      odbNetworkId: (() { final guardedValue = map['odbNetworkId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      openMode: (() { final guardedValue = map['openMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      percentProgress: (() { final guardedValue = map['percentProgress']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      permissionLevel: (() { final guardedValue = map['permissionLevel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpoint: (() { final guardedValue = map['privateEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointIp: (() { final guardedValue = map['privateEndpointIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateEndpointLabel: (() { final guardedValue = map['privateEndpointLabel']; if (guardedValue == null) return null; return guardedValue as String; })(),
      refreshableMode: (() { final guardedValue = map['refreshableMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourcePoolLeaderId: (() { final guardedValue = map['resourcePoolLeaderId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourcePoolSummaries: (() { final guardedValue = map['resourcePoolSummaries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAutonomousDatabaseResourcePoolSummary>(guardedValue, (value) => GetAutonomousDatabaseResourcePoolSummary.fromMap((value as Map).cast<String, dynamic>())); })(),
      scheduledOperations: (() { final guardedValue = map['scheduledOperations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAutonomousDatabaseScheduledOperation>(guardedValue, (value) => GetAutonomousDatabaseScheduledOperation.fromMap((value as Map).cast<String, dynamic>())); })(),
      serviceConsoleUrl: (() { final guardedValue = map['serviceConsoleUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceId: (() { final guardedValue = map['sourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sqlWebDeveloperUrl: (() { final guardedValue = map['sqlWebDeveloperUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      standbyAllowlistedIps: (() { final guardedValue = map['standbyAllowlistedIps']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      standbyAllowlistedIpsSource: (() { final guardedValue = map['standbyAllowlistedIpsSource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      timeOfAutoRefreshStart: (() { final guardedValue = map['timeOfAutoRefreshStart']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
