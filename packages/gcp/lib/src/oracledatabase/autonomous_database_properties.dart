// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autonomous_database_properties_apex_detail.dart';
import 'autonomous_database_properties_connection_string.dart';
import 'autonomous_database_properties_connection_url.dart';
import 'autonomous_database_properties_customer_contact.dart';
import 'autonomous_database_properties_local_standby_db.dart';
import 'autonomous_database_properties_scheduled_operation_detail.dart';

class AutonomousDatabaseProperties {
  /// (Output)
  /// The amount of storage currently being used for user and system data, in
  /// terabytes.
  final double? actualUsedDataStorageSizeTb;
  /// (Output)
  /// The amount of storage currently allocated for the database tables and
  /// billed for, rounded up in terabytes.
  final double? allocatedStorageSizeTb;
  /// (Output)
  /// Oracle APEX Application Development.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseApex
  /// Structure is documented below.
  final List<AutonomousDatabasePropertiesApexDetail>? apexDetails;
  /// (Output)
  /// This field indicates the status of Data Guard and Access control for the
  /// Autonomous Database. The field's value is null if Data Guard is disabled
  /// or Access Control is disabled. The field's value is TRUE if both Data Guard
  /// and Access Control are enabled, and the Autonomous Database is using
  /// primary IP access control list (ACL) for standby. The field's value is
  /// FALSE if both Data Guard and Access Control are enabled, and the Autonomous
  /// Database is using a different IP access control list (ACL) for standby
  /// compared to primary.
  final bool? arePrimaryAllowlistedIpsUsed;
  /// (Output)
  /// The Autonomous Container Database OCID.
  final String? autonomousContainerDatabaseId;
  /// (Output)
  /// The list of available Oracle Database upgrade versions for an Autonomous
  /// Database.
  final List<String>? availableUpgradeVersions;
  /// The retention period for the Autonomous Database. This field is specified
  /// in days, can range from 1 day to 60 days, and has a default value of
  /// 60 days.
  final int? backupRetentionPeriodDays;
  /// The character set for the Autonomous Database. The default is AL32UTF8.
  final String? characterSet;
  /// The number of compute servers for the Autonomous Database.
  final double? computeCount;
  /// (Output)
  /// The connection string used to connect to the Autonomous Database.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseConnectionStrings
  /// Structure is documented below.
  final List<AutonomousDatabasePropertiesConnectionString>? connectionStrings;
  /// (Output)
  /// The URLs for accessing Oracle Application Express (APEX) and SQL Developer
  /// Web with a browser from a Compute instance.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseConnectionUrls
  /// Structure is documented below.
  final List<AutonomousDatabasePropertiesConnectionUrl>? connectionUrls;
  /// The number of CPU cores to be made available to the database.
  final int? cpuCoreCount;
  /// The list of customer contacts.
  /// Structure is documented below.
  final List<AutonomousDatabasePropertiesCustomerContact>? customerContacts;
  /// (Output)
  /// The current state of the Data Safe registration for the
  /// Autonomous Database.
  /// Possible values:
  /// DATA_SAFE_STATE_UNSPECIFIED
  /// REGISTERING
  /// REGISTERED
  /// DEREGISTERING
  /// NOT_REGISTERED
  /// FAILED
  final String? dataSafeState;
  /// The size of the data stored in the database, in gigabytes.
  final int? dataStorageSizeGb;
  /// The size of the data stored in the database, in terabytes.
  final int? dataStorageSizeTb;
  /// (Output)
  /// The current state of database management for the Autonomous Database.
  /// Possible values:
  /// DATABASE_MANAGEMENT_STATE_UNSPECIFIED
  /// ENABLING
  /// ENABLED
  /// DISABLING
  /// NOT_ENABLED
  /// FAILED_ENABLING
  /// FAILED_DISABLING
  final String? databaseManagementState;
  /// The edition of the Autonomous Databases.
  /// Possible values:
  /// DATABASE_EDITION_UNSPECIFIED
  /// STANDARD_EDITION
  /// ENTERPRISE_EDITION
  final String? dbEdition;
  /// The Oracle Database version for the Autonomous Database.
  final String? dbVersion;
  /// Possible values:
  /// DB_WORKLOAD_UNSPECIFIED
  /// OLTP
  /// DW
  /// AJD
  /// APEX
  final String dbWorkload;
  /// (Output)
  /// This field indicates the number of seconds of data loss during a Data
  /// Guard failover.
  final String? failedDataRecoveryDuration;
  /// This field indicates if auto scaling is enabled for the Autonomous Database
  /// CPU core count.
  final bool? isAutoScalingEnabled;
  /// (Output)
  /// This field indicates whether the Autonomous Database has local (in-region)
  /// Data Guard enabled.
  final bool? isLocalDataGuardEnabled;
  /// This field indicates if auto scaling is enabled for the Autonomous Database
  /// storage.
  final bool? isStorageAutoScalingEnabled;
  /// The license type used for the Autonomous Database.
  /// Possible values:
  /// LICENSE_TYPE_UNSPECIFIED
  /// LICENSE_INCLUDED
  /// BRING_YOUR_OWN_LICENSE
  final String licenseType;
  /// (Output)
  /// The details of the current lifestyle state of the Autonomous Database.
  final String? lifecycleDetails;
  /// (Output)
  /// This field indicates the maximum data loss limit for an Autonomous
  /// Database, in seconds.
  final int? localAdgAutoFailoverMaxDataLossLimit;
  /// (Output)
  /// This field indicates the local disaster recovery (DR) type of an
  /// Autonomous Database.
  /// Possible values:
  /// LOCAL_DISASTER_RECOVERY_TYPE_UNSPECIFIED
  /// ADG
  /// BACKUP_BASED
  final String? localDisasterRecoveryType;
  /// (Output)
  /// Autonomous Data Guard standby database details.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseStandbySummary
  /// Structure is documented below.
  final List<AutonomousDatabasePropertiesLocalStandbyDb>? localStandbyDbs;
  /// (Output)
  /// The date and time when maintenance will begin.
  final String? maintenanceBeginTime;
  /// (Output)
  /// The date and time when maintenance will end.
  final String? maintenanceEndTime;
  /// The maintenance schedule of the Autonomous Database.
  /// Possible values:
  /// MAINTENANCE_SCHEDULE_TYPE_UNSPECIFIED
  /// EARLY
  /// REGULAR
  final String? maintenanceScheduleType;
  /// (Output)
  /// The amount of memory enabled per ECPU, in gigabytes.
  final int? memoryPerOracleComputeUnitGbs;
  /// (Output)
  /// The memory assigned to in-memory tables in an Autonomous Database.
  final int? memoryTableGbs;
  /// This field specifies if the Autonomous Database requires mTLS connections.
  final bool? mtlsConnectionRequired;
  /// The national character set for the Autonomous Database. The default is
  /// AL16UTF16.
  final String? nCharacterSet;
  /// (Output)
  /// The long term backup schedule of the Autonomous Database.
  final String? nextLongTermBackupTime;
  /// (Output)
  /// The Oracle Cloud Infrastructure link for the Autonomous Database.
  final String? ociUrl;
  /// (Output)
  /// OCID of the Autonomous Database.
  /// https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm#Oracle
  final String? ocid;
  /// (Output)
  /// This field indicates the current mode of the Autonomous Database.
  /// Possible values:
  /// OPEN_MODE_UNSPECIFIED
  /// READ_ONLY
  /// READ_WRITE
  final String? openMode;
  /// Possible values:
  /// OPERATIONS_INSIGHTS_STATE_UNSPECIFIED
  /// ENABLING
  /// ENABLED
  /// DISABLING
  /// NOT_ENABLED
  /// FAILED_ENABLING
  /// FAILED_DISABLING
  final String? operationsInsightsState;
  /// (Output)
  /// The list of OCIDs of standby databases located in Autonomous Data Guard
  /// remote regions that are associated with the source database.
  final List<String>? peerDbIds;
  /// (Output)
  /// The permission level of the Autonomous Database.
  /// Possible values:
  /// PERMISSION_LEVEL_UNSPECIFIED
  /// RESTRICTED
  /// UNRESTRICTED
  final String? permissionLevel;
  /// (Output)
  /// The private endpoint for the Autonomous Database.
  final String? privateEndpoint;
  /// The private endpoint IP address for the Autonomous Database.
  final String? privateEndpointIp;
  /// The private endpoint label for the Autonomous Database.
  final String? privateEndpointLabel;
  /// (Output)
  /// The refresh mode of the cloned Autonomous Database.
  /// Possible values:
  /// REFRESHABLE_MODE_UNSPECIFIED
  /// AUTOMATIC
  /// MANUAL
  final String? refreshableMode;
  /// (Output)
  /// The refresh State of the clone.
  /// Possible values:
  /// REFRESHABLE_STATE_UNSPECIFIED
  /// REFRESHING
  /// NOT_REFRESHING
  final String? refreshableState;
  /// (Output)
  /// The Data Guard role of the Autonomous Database.
  /// Possible values:
  /// ROLE_UNSPECIFIED
  /// PRIMARY
  /// STANDBY
  /// DISABLED_STANDBY
  /// BACKUP_COPY
  /// SNAPSHOT_STANDBY
  final String? role;
  /// (Output)
  /// The list and details of the scheduled operations of the Autonomous
  /// Database.
  /// Structure is documented below.
  final List<AutonomousDatabasePropertiesScheduledOperationDetail>? scheduledOperationDetails;
  /// The ID of the Oracle Cloud Infrastructure vault secret.
  final String? secretId;
  /// (Output)
  /// The SQL Web Developer URL for the Autonomous Database.
  final String? sqlWebDeveloperUrl;
  /// (Output)
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// PROVISIONING
  /// AVAILABLE
  /// STOPPING
  /// STOPPED
  /// STARTING
  /// TERMINATING
  /// TERMINATED
  /// UNAVAILABLE
  /// RESTORE_IN_PROGRESS
  /// RESTORE_FAILED
  /// BACKUP_IN_PROGRESS
  /// SCALE_IN_PROGRESS
  /// AVAILABLE_NEEDS_ATTENTION
  /// UPDATING
  /// MAINTENANCE_IN_PROGRESS
  /// RESTARTING
  /// RECREATING
  /// ROLE_CHANGE_IN_PROGRESS
  /// UPGRADING
  /// INACCESSIBLE
  /// STANDBY
  final String? state;
  /// (Output)
  /// The list of available regions that can be used to create a clone for the
  /// Autonomous Database.
  final List<String>? supportedCloneRegions;
  /// (Output)
  /// The storage space used by automatic backups of Autonomous Database, in
  /// gigabytes.
  final double? totalAutoBackupStorageSizeGbs;
  /// (Output)
  /// The storage space used by Autonomous Database, in gigabytes.
  final int? usedDataStorageSizeTbs;
  /// The ID of the Oracle Cloud Infrastructure vault.
  final String? vaultId;

  /// Creates a new [AutonomousDatabaseProperties].
  /// [actualUsedDataStorageSizeTb] (Output)
  /// [allocatedStorageSizeTb] (Output)
  /// [apexDetails] (Output)
  /// [arePrimaryAllowlistedIpsUsed] (Output)
  /// [autonomousContainerDatabaseId] (Output)
  /// [availableUpgradeVersions] (Output)
  /// [backupRetentionPeriodDays] The retention period for the Autonomous Database. This field is specified
  /// [characterSet] The character set for the Autonomous Database. The default is AL32UTF8.
  /// [computeCount] The number of compute servers for the Autonomous Database.
  /// [connectionStrings] (Output)
  /// [connectionUrls] (Output)
  /// [cpuCoreCount] The number of CPU cores to be made available to the database.
  /// [customerContacts] The list of customer contacts.
  /// [dataSafeState] (Output)
  /// [dataStorageSizeGb] The size of the data stored in the database, in gigabytes.
  /// [dataStorageSizeTb] The size of the data stored in the database, in terabytes.
  /// [databaseManagementState] (Output)
  /// [dbEdition] The edition of the Autonomous Databases.
  /// [dbVersion] The Oracle Database version for the Autonomous Database.
  /// [dbWorkload] Possible values:
  /// [failedDataRecoveryDuration] (Output)
  /// [isAutoScalingEnabled] This field indicates if auto scaling is enabled for the Autonomous Database
  /// [isLocalDataGuardEnabled] (Output)
  /// [isStorageAutoScalingEnabled] This field indicates if auto scaling is enabled for the Autonomous Database
  /// [licenseType] The license type used for the Autonomous Database.
  /// [lifecycleDetails] (Output)
  /// [localAdgAutoFailoverMaxDataLossLimit] (Output)
  /// [localDisasterRecoveryType] (Output)
  /// [localStandbyDbs] (Output)
  /// [maintenanceBeginTime] (Output)
  /// [maintenanceEndTime] (Output)
  /// [maintenanceScheduleType] The maintenance schedule of the Autonomous Database.
  /// [memoryPerOracleComputeUnitGbs] (Output)
  /// [memoryTableGbs] (Output)
  /// [mtlsConnectionRequired] This field specifies if the Autonomous Database requires mTLS connections.
  /// [nCharacterSet] The national character set for the Autonomous Database. The default is
  /// [nextLongTermBackupTime] (Output)
  /// [ociUrl] (Output)
  /// [ocid] (Output)
  /// [openMode] (Output)
  /// [operationsInsightsState] Possible values:
  /// [peerDbIds] (Output)
  /// [permissionLevel] (Output)
  /// [privateEndpoint] (Output)
  /// [privateEndpointIp] The private endpoint IP address for the Autonomous Database.
  /// [privateEndpointLabel] The private endpoint label for the Autonomous Database.
  /// [refreshableMode] (Output)
  /// [refreshableState] (Output)
  /// [role] (Output)
  /// [scheduledOperationDetails] (Output)
  /// [secretId] The ID of the Oracle Cloud Infrastructure vault secret.
  /// [sqlWebDeveloperUrl] (Output)
  /// [state] (Output)
  /// [supportedCloneRegions] (Output)
  /// [totalAutoBackupStorageSizeGbs] (Output)
  /// [usedDataStorageSizeTbs] (Output)
  /// [vaultId] The ID of the Oracle Cloud Infrastructure vault.
  AutonomousDatabaseProperties({
    this.actualUsedDataStorageSizeTb,
    this.allocatedStorageSizeTb,
    this.apexDetails,
    this.arePrimaryAllowlistedIpsUsed,
    this.autonomousContainerDatabaseId,
    this.availableUpgradeVersions,
    this.backupRetentionPeriodDays,
    this.characterSet,
    this.computeCount,
    this.connectionStrings,
    this.connectionUrls,
    this.cpuCoreCount,
    this.customerContacts,
    this.dataSafeState,
    this.dataStorageSizeGb,
    this.dataStorageSizeTb,
    this.databaseManagementState,
    this.dbEdition,
    this.dbVersion,
    required this.dbWorkload,
    this.failedDataRecoveryDuration,
    this.isAutoScalingEnabled,
    this.isLocalDataGuardEnabled,
    this.isStorageAutoScalingEnabled,
    required this.licenseType,
    this.lifecycleDetails,
    this.localAdgAutoFailoverMaxDataLossLimit,
    this.localDisasterRecoveryType,
    this.localStandbyDbs,
    this.maintenanceBeginTime,
    this.maintenanceEndTime,
    this.maintenanceScheduleType,
    this.memoryPerOracleComputeUnitGbs,
    this.memoryTableGbs,
    this.mtlsConnectionRequired,
    this.nCharacterSet,
    this.nextLongTermBackupTime,
    this.ociUrl,
    this.ocid,
    this.openMode,
    this.operationsInsightsState,
    this.peerDbIds,
    this.permissionLevel,
    this.privateEndpoint,
    this.privateEndpointIp,
    this.privateEndpointLabel,
    this.refreshableMode,
    this.refreshableState,
    this.role,
    this.scheduledOperationDetails,
    this.secretId,
    this.sqlWebDeveloperUrl,
    this.state,
    this.supportedCloneRegions,
    this.totalAutoBackupStorageSizeGbs,
    this.usedDataStorageSizeTbs,
    this.vaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actualUsedDataStorageSizeTb': ?actualUsedDataStorageSizeTb,
      'allocatedStorageSizeTb': ?allocatedStorageSizeTb,
      'apexDetails': ?apexDetails == null ? null : pulumi.Input.encodeList<AutonomousDatabasePropertiesApexDetail, Map<String, dynamic>>(apexDetails!, (value) => value.toMap()),
      'arePrimaryAllowlistedIpsUsed': ?arePrimaryAllowlistedIpsUsed,
      'autonomousContainerDatabaseId': ?autonomousContainerDatabaseId,
      'availableUpgradeVersions': ?availableUpgradeVersions,
      'backupRetentionPeriodDays': ?backupRetentionPeriodDays,
      'characterSet': ?characterSet,
      'computeCount': ?computeCount,
      'connectionStrings': ?connectionStrings == null ? null : pulumi.Input.encodeList<AutonomousDatabasePropertiesConnectionString, Map<String, dynamic>>(connectionStrings!, (value) => value.toMap()),
      'connectionUrls': ?connectionUrls == null ? null : pulumi.Input.encodeList<AutonomousDatabasePropertiesConnectionUrl, Map<String, dynamic>>(connectionUrls!, (value) => value.toMap()),
      'cpuCoreCount': ?cpuCoreCount,
      'customerContacts': ?customerContacts == null ? null : pulumi.Input.encodeList<AutonomousDatabasePropertiesCustomerContact, Map<String, dynamic>>(customerContacts!, (value) => value.toMap()),
      'dataSafeState': ?dataSafeState,
      'dataStorageSizeGb': ?dataStorageSizeGb,
      'dataStorageSizeTb': ?dataStorageSizeTb,
      'databaseManagementState': ?databaseManagementState,
      'dbEdition': ?dbEdition,
      'dbVersion': ?dbVersion,
      'dbWorkload': dbWorkload,
      'failedDataRecoveryDuration': ?failedDataRecoveryDuration,
      'isAutoScalingEnabled': ?isAutoScalingEnabled,
      'isLocalDataGuardEnabled': ?isLocalDataGuardEnabled,
      'isStorageAutoScalingEnabled': ?isStorageAutoScalingEnabled,
      'licenseType': licenseType,
      'lifecycleDetails': ?lifecycleDetails,
      'localAdgAutoFailoverMaxDataLossLimit': ?localAdgAutoFailoverMaxDataLossLimit,
      'localDisasterRecoveryType': ?localDisasterRecoveryType,
      'localStandbyDbs': ?localStandbyDbs == null ? null : pulumi.Input.encodeList<AutonomousDatabasePropertiesLocalStandbyDb, Map<String, dynamic>>(localStandbyDbs!, (value) => value.toMap()),
      'maintenanceBeginTime': ?maintenanceBeginTime,
      'maintenanceEndTime': ?maintenanceEndTime,
      'maintenanceScheduleType': ?maintenanceScheduleType,
      'memoryPerOracleComputeUnitGbs': ?memoryPerOracleComputeUnitGbs,
      'memoryTableGbs': ?memoryTableGbs,
      'mtlsConnectionRequired': ?mtlsConnectionRequired,
      'nCharacterSet': ?nCharacterSet,
      'nextLongTermBackupTime': ?nextLongTermBackupTime,
      'ociUrl': ?ociUrl,
      'ocid': ?ocid,
      'openMode': ?openMode,
      'operationsInsightsState': ?operationsInsightsState,
      'peerDbIds': ?peerDbIds,
      'permissionLevel': ?permissionLevel,
      'privateEndpoint': ?privateEndpoint,
      'privateEndpointIp': ?privateEndpointIp,
      'privateEndpointLabel': ?privateEndpointLabel,
      'refreshableMode': ?refreshableMode,
      'refreshableState': ?refreshableState,
      'role': ?role,
      'scheduledOperationDetails': ?scheduledOperationDetails == null ? null : pulumi.Input.encodeList<AutonomousDatabasePropertiesScheduledOperationDetail, Map<String, dynamic>>(scheduledOperationDetails!, (value) => value.toMap()),
      'secretId': ?secretId,
      'sqlWebDeveloperUrl': ?sqlWebDeveloperUrl,
      'state': ?state,
      'supportedCloneRegions': ?supportedCloneRegions,
      'totalAutoBackupStorageSizeGbs': ?totalAutoBackupStorageSizeGbs,
      'usedDataStorageSizeTbs': ?usedDataStorageSizeTbs,
      'vaultId': ?vaultId,
    };
  }

  factory AutonomousDatabaseProperties.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseProperties(
      actualUsedDataStorageSizeTb: map['actualUsedDataStorageSizeTb'] == null ? null : map['actualUsedDataStorageSizeTb'] as double,
      allocatedStorageSizeTb: map['allocatedStorageSizeTb'] == null ? null : map['allocatedStorageSizeTb'] as double,
      apexDetails: map['apexDetails'] == null ? null : pulumi.Input.decodeList<AutonomousDatabasePropertiesApexDetail>(map['apexDetails'], (value) => AutonomousDatabasePropertiesApexDetail.fromMap((value as Map).cast<String, dynamic>())),
      arePrimaryAllowlistedIpsUsed: map['arePrimaryAllowlistedIpsUsed'] == null ? null : map['arePrimaryAllowlistedIpsUsed'] as bool,
      autonomousContainerDatabaseId: map['autonomousContainerDatabaseId'] == null ? null : map['autonomousContainerDatabaseId'] as String,
      availableUpgradeVersions: map['availableUpgradeVersions'] == null ? null : (map['availableUpgradeVersions'] as List).cast<String>(),
      backupRetentionPeriodDays: map['backupRetentionPeriodDays'] == null ? null : map['backupRetentionPeriodDays'] as int,
      characterSet: map['characterSet'] == null ? null : map['characterSet'] as String,
      computeCount: map['computeCount'] == null ? null : map['computeCount'] as double,
      connectionStrings: map['connectionStrings'] == null ? null : pulumi.Input.decodeList<AutonomousDatabasePropertiesConnectionString>(map['connectionStrings'], (value) => AutonomousDatabasePropertiesConnectionString.fromMap((value as Map).cast<String, dynamic>())),
      connectionUrls: map['connectionUrls'] == null ? null : pulumi.Input.decodeList<AutonomousDatabasePropertiesConnectionUrl>(map['connectionUrls'], (value) => AutonomousDatabasePropertiesConnectionUrl.fromMap((value as Map).cast<String, dynamic>())),
      cpuCoreCount: map['cpuCoreCount'] == null ? null : map['cpuCoreCount'] as int,
      customerContacts: map['customerContacts'] == null ? null : pulumi.Input.decodeList<AutonomousDatabasePropertiesCustomerContact>(map['customerContacts'], (value) => AutonomousDatabasePropertiesCustomerContact.fromMap((value as Map).cast<String, dynamic>())),
      dataSafeState: map['dataSafeState'] == null ? null : map['dataSafeState'] as String,
      dataStorageSizeGb: map['dataStorageSizeGb'] == null ? null : map['dataStorageSizeGb'] as int,
      dataStorageSizeTb: map['dataStorageSizeTb'] == null ? null : map['dataStorageSizeTb'] as int,
      databaseManagementState: map['databaseManagementState'] == null ? null : map['databaseManagementState'] as String,
      dbEdition: map['dbEdition'] == null ? null : map['dbEdition'] as String,
      dbVersion: map['dbVersion'] == null ? null : map['dbVersion'] as String,
      dbWorkload: map['dbWorkload'] as String,
      failedDataRecoveryDuration: map['failedDataRecoveryDuration'] == null ? null : map['failedDataRecoveryDuration'] as String,
      isAutoScalingEnabled: map['isAutoScalingEnabled'] == null ? null : map['isAutoScalingEnabled'] as bool,
      isLocalDataGuardEnabled: map['isLocalDataGuardEnabled'] == null ? null : map['isLocalDataGuardEnabled'] as bool,
      isStorageAutoScalingEnabled: map['isStorageAutoScalingEnabled'] == null ? null : map['isStorageAutoScalingEnabled'] as bool,
      licenseType: map['licenseType'] as String,
      lifecycleDetails: map['lifecycleDetails'] == null ? null : map['lifecycleDetails'] as String,
      localAdgAutoFailoverMaxDataLossLimit: map['localAdgAutoFailoverMaxDataLossLimit'] == null ? null : map['localAdgAutoFailoverMaxDataLossLimit'] as int,
      localDisasterRecoveryType: map['localDisasterRecoveryType'] == null ? null : map['localDisasterRecoveryType'] as String,
      localStandbyDbs: map['localStandbyDbs'] == null ? null : pulumi.Input.decodeList<AutonomousDatabasePropertiesLocalStandbyDb>(map['localStandbyDbs'], (value) => AutonomousDatabasePropertiesLocalStandbyDb.fromMap((value as Map).cast<String, dynamic>())),
      maintenanceBeginTime: map['maintenanceBeginTime'] == null ? null : map['maintenanceBeginTime'] as String,
      maintenanceEndTime: map['maintenanceEndTime'] == null ? null : map['maintenanceEndTime'] as String,
      maintenanceScheduleType: map['maintenanceScheduleType'] == null ? null : map['maintenanceScheduleType'] as String,
      memoryPerOracleComputeUnitGbs: map['memoryPerOracleComputeUnitGbs'] == null ? null : map['memoryPerOracleComputeUnitGbs'] as int,
      memoryTableGbs: map['memoryTableGbs'] == null ? null : map['memoryTableGbs'] as int,
      mtlsConnectionRequired: map['mtlsConnectionRequired'] == null ? null : map['mtlsConnectionRequired'] as bool,
      nCharacterSet: map['nCharacterSet'] == null ? null : map['nCharacterSet'] as String,
      nextLongTermBackupTime: map['nextLongTermBackupTime'] == null ? null : map['nextLongTermBackupTime'] as String,
      ociUrl: map['ociUrl'] == null ? null : map['ociUrl'] as String,
      ocid: map['ocid'] == null ? null : map['ocid'] as String,
      openMode: map['openMode'] == null ? null : map['openMode'] as String,
      operationsInsightsState: map['operationsInsightsState'] == null ? null : map['operationsInsightsState'] as String,
      peerDbIds: map['peerDbIds'] == null ? null : (map['peerDbIds'] as List).cast<String>(),
      permissionLevel: map['permissionLevel'] == null ? null : map['permissionLevel'] as String,
      privateEndpoint: map['privateEndpoint'] == null ? null : map['privateEndpoint'] as String,
      privateEndpointIp: map['privateEndpointIp'] == null ? null : map['privateEndpointIp'] as String,
      privateEndpointLabel: map['privateEndpointLabel'] == null ? null : map['privateEndpointLabel'] as String,
      refreshableMode: map['refreshableMode'] == null ? null : map['refreshableMode'] as String,
      refreshableState: map['refreshableState'] == null ? null : map['refreshableState'] as String,
      role: map['role'] == null ? null : map['role'] as String,
      scheduledOperationDetails: map['scheduledOperationDetails'] == null ? null : pulumi.Input.decodeList<AutonomousDatabasePropertiesScheduledOperationDetail>(map['scheduledOperationDetails'], (value) => AutonomousDatabasePropertiesScheduledOperationDetail.fromMap((value as Map).cast<String, dynamic>())),
      secretId: map['secretId'] == null ? null : map['secretId'] as String,
      sqlWebDeveloperUrl: map['sqlWebDeveloperUrl'] == null ? null : map['sqlWebDeveloperUrl'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      supportedCloneRegions: map['supportedCloneRegions'] == null ? null : (map['supportedCloneRegions'] as List).cast<String>(),
      totalAutoBackupStorageSizeGbs: map['totalAutoBackupStorageSizeGbs'] == null ? null : map['totalAutoBackupStorageSizeGbs'] as double,
      usedDataStorageSizeTbs: map['usedDataStorageSizeTbs'] == null ? null : map['usedDataStorageSizeTbs'] as int,
      vaultId: map['vaultId'] == null ? null : map['vaultId'] as String,
    );
  }
}

