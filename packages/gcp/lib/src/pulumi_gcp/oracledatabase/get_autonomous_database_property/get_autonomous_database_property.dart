// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_autonomous_database_property_apex_detail/get_autonomous_database_property_apex_detail.dart';
import '../get_autonomous_database_property_connection_string/get_autonomous_database_property_connection_string.dart';
import '../get_autonomous_database_property_connection_url/get_autonomous_database_property_connection_url.dart';
import '../get_autonomous_database_property_customer_contact/get_autonomous_database_property_customer_contact.dart';
import '../get_autonomous_database_property_local_standby_db/get_autonomous_database_property_local_standby_db.dart';
import '../get_autonomous_database_property_scheduled_operation_detail/get_autonomous_database_property_scheduled_operation_detail.dart';

class GetAutonomousDatabaseProperty {
  /// The amount of storage currently being used for user and system data, in
  /// terabytes.
  final double actualUsedDataStorageSizeTb;

  /// The amount of storage currently allocated for the database tables and
  /// billed for, rounded up in terabytes.
  final double allocatedStorageSizeTb;

  /// Oracle APEX Application Development.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseApex
  final List<GetAutonomousDatabasePropertyApexDetail> apexDetails;

  /// This field indicates the status of Data Guard and Access control for the
  /// Autonomous Database. The field's value is null if Data Guard is disabled
  /// or Access Control is disabled. The field's value is TRUE if both Data Guard
  /// and Access Control are enabled, and the Autonomous Database is using
  /// primary IP access control list (ACL) for standby. The field's value is
  /// FALSE if both Data Guard and Access Control are enabled, and the Autonomous
  /// Database is using a different IP access control list (ACL) for standby
  /// compared to primary.
  final bool arePrimaryAllowlistedIpsUsed;

  /// The Autonomous Container Database OCID.
  final String autonomousContainerDatabaseId;

  /// The list of available Oracle Database upgrade versions for an Autonomous
  /// Database.
  final List<String> availableUpgradeVersions;

  /// The retention period for the Autonomous Database. This field is specified
  /// in days, can range from 1 day to 60 days, and has a default value of
  /// 60 days.
  final int backupRetentionPeriodDays;

  /// The character set for the Autonomous Database. The default is AL32UTF8.
  final String characterSet;

  /// The number of compute servers for the Autonomous Database.
  final double computeCount;

  /// The connection string used to connect to the Autonomous Database.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseConnectionStrings
  final List<GetAutonomousDatabasePropertyConnectionString> connectionStrings;

  /// The URLs for accessing Oracle Application Express (APEX) and SQL Developer
  /// Web with a browser from a Compute instance.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseConnectionUrls
  final List<GetAutonomousDatabasePropertyConnectionUrl> connectionUrls;

  /// The number of CPU cores to be made available to the database.
  final int cpuCoreCount;

  /// The list of customer contacts.
  final List<GetAutonomousDatabasePropertyCustomerContact> customerContacts;

  /// The current state of the Data Safe registration for the
  /// Autonomous Database.
  /// Possible values:
  /// DATA_SAFE_STATE_UNSPECIFIED
  /// REGISTERING
  /// REGISTERED
  /// DEREGISTERING
  /// NOT_REGISTERED
  /// FAILED
  final String dataSafeState;

  /// The size of the data stored in the database, in gigabytes.
  final int dataStorageSizeGb;

  /// The size of the data stored in the database, in terabytes.
  final int dataStorageSizeTb;

  /// The current state of database management for the Autonomous Database.
  /// Possible values:
  /// DATABASE_MANAGEMENT_STATE_UNSPECIFIED
  /// ENABLING
  /// ENABLED
  /// DISABLING
  /// NOT_ENABLED
  /// FAILED_ENABLING
  /// FAILED_DISABLING
  final String databaseManagementState;

  /// The edition of the Autonomous Databases.
  /// Possible values:
  /// DATABASE_EDITION_UNSPECIFIED
  /// STANDARD_EDITION
  /// ENTERPRISE_EDITION
  final String dbEdition;

  /// The Oracle Database version for the Autonomous Database.
  final String dbVersion;

  /// Possible values:
  /// DB_WORKLOAD_UNSPECIFIED
  /// OLTP
  /// DW
  /// AJD
  /// APEX
  final String dbWorkload;

  /// This field indicates the number of seconds of data loss during a Data
  /// Guard failover.
  final String failedDataRecoveryDuration;

  /// This field indicates if auto scaling is enabled for the Autonomous Database
  /// CPU core count.
  final bool isAutoScalingEnabled;

  /// This field indicates whether the Autonomous Database has local (in-region)
  /// Data Guard enabled.
  final bool isLocalDataGuardEnabled;

  /// This field indicates if auto scaling is enabled for the Autonomous Database
  /// storage.
  final bool isStorageAutoScalingEnabled;

  /// The license type used for the Autonomous Database.
  /// Possible values:
  /// LICENSE_TYPE_UNSPECIFIED
  /// LICENSE_INCLUDED
  /// BRING_YOUR_OWN_LICENSE
  final String licenseType;

  /// The details of the current lifestyle state of the Autonomous Database.
  final String lifecycleDetails;

  /// This field indicates the maximum data loss limit for an Autonomous
  /// Database, in seconds.
  final int localAdgAutoFailoverMaxDataLossLimit;

  /// This field indicates the local disaster recovery (DR) type of an
  /// Autonomous Database.
  /// Possible values:
  /// LOCAL_DISASTER_RECOVERY_TYPE_UNSPECIFIED
  /// ADG
  /// BACKUP_BASED
  final String localDisasterRecoveryType;

  /// Autonomous Data Guard standby database details.
  /// https://docs.oracle.com/en-us/iaas/api/#/en/database/20160918/datatypes/AutonomousDatabaseStandbySummary
  final List<GetAutonomousDatabasePropertyLocalStandbyDb> localStandbyDbs;

  /// The date and time when maintenance will begin.
  final String maintenanceBeginTime;

  /// The date and time when maintenance will end.
  final String maintenanceEndTime;

  /// The maintenance schedule of the Autonomous Database.
  /// Possible values:
  /// MAINTENANCE_SCHEDULE_TYPE_UNSPECIFIED
  /// EARLY
  /// REGULAR
  final String maintenanceScheduleType;

  /// The amount of memory enabled per ECPU, in gigabytes.
  final int memoryPerOracleComputeUnitGbs;

  /// The memory assigned to in-memory tables in an Autonomous Database.
  final int memoryTableGbs;

  /// This field specifies if the Autonomous Database requires mTLS connections.
  final bool mtlsConnectionRequired;

  /// The national character set for the Autonomous Database. The default is
  /// AL16UTF16.
  final String nCharacterSet;

  /// The long term backup schedule of the Autonomous Database.
  final String nextLongTermBackupTime;

  /// The Oracle Cloud Infrastructure link for the Autonomous Database.
  final String ociUrl;

  /// OCID of the Autonomous Database.
  /// https://docs.oracle.com/en-us/iaas/Content/General/Concepts/identifiers.htm#Oracle
  final String ocid;

  /// This field indicates the current mode of the Autonomous Database.
  /// Possible values:
  /// OPEN_MODE_UNSPECIFIED
  /// READ_ONLY
  /// READ_WRITE
  final String openMode;

  /// Possible values:
  /// OPERATIONS_INSIGHTS_STATE_UNSPECIFIED
  /// ENABLING
  /// ENABLED
  /// DISABLING
  /// NOT_ENABLED
  /// FAILED_ENABLING
  /// FAILED_DISABLING
  final String operationsInsightsState;

  /// The list of OCIDs of standby databases located in Autonomous Data Guard
  /// remote regions that are associated with the source database.
  final List<String> peerDbIds;

  /// The permission level of the Autonomous Database.
  /// Possible values:
  /// PERMISSION_LEVEL_UNSPECIFIED
  /// RESTRICTED
  /// UNRESTRICTED
  final String permissionLevel;

  /// The private endpoint for the Autonomous Database.
  final String privateEndpoint;

  /// The private endpoint IP address for the Autonomous Database.
  final String privateEndpointIp;

  /// The private endpoint label for the Autonomous Database.
  final String privateEndpointLabel;

  /// The refresh mode of the cloned Autonomous Database.
  /// Possible values:
  /// REFRESHABLE_MODE_UNSPECIFIED
  /// AUTOMATIC
  /// MANUAL
  final String refreshableMode;

  /// The refresh State of the clone.
  /// Possible values:
  /// REFRESHABLE_STATE_UNSPECIFIED
  /// REFRESHING
  /// NOT_REFRESHING
  final String refreshableState;

  /// The Data Guard role of the Autonomous Database.
  /// Possible values:
  /// ROLE_UNSPECIFIED
  /// PRIMARY
  /// STANDBY
  /// DISABLED_STANDBY
  /// BACKUP_COPY
  /// SNAPSHOT_STANDBY
  final String role;

  /// The list and details of the scheduled operations of the Autonomous
  /// Database.
  final List<GetAutonomousDatabasePropertyScheduledOperationDetail>
      scheduledOperationDetails;

  /// The ID of the Oracle Cloud Infrastructure vault secret.
  final String secretId;

  /// The SQL Web Developer URL for the Autonomous Database.
  final String sqlWebDeveloperUrl;

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
  final String state;

  /// The list of available regions that can be used to create a clone for the
  /// Autonomous Database.
  final List<String> supportedCloneRegions;

  /// The storage space used by automatic backups of Autonomous Database, in
  /// gigabytes.
  final double totalAutoBackupStorageSizeGbs;

  /// The storage space used by Autonomous Database, in gigabytes.
  final int usedDataStorageSizeTbs;

  /// The ID of the Oracle Cloud Infrastructure vault.
  final String vaultId;

  GetAutonomousDatabaseProperty({
    required this.actualUsedDataStorageSizeTb,
    required this.allocatedStorageSizeTb,
    required this.apexDetails,
    required this.arePrimaryAllowlistedIpsUsed,
    required this.autonomousContainerDatabaseId,
    required this.availableUpgradeVersions,
    required this.backupRetentionPeriodDays,
    required this.characterSet,
    required this.computeCount,
    required this.connectionStrings,
    required this.connectionUrls,
    required this.cpuCoreCount,
    required this.customerContacts,
    required this.dataSafeState,
    required this.dataStorageSizeGb,
    required this.dataStorageSizeTb,
    required this.databaseManagementState,
    required this.dbEdition,
    required this.dbVersion,
    required this.dbWorkload,
    required this.failedDataRecoveryDuration,
    required this.isAutoScalingEnabled,
    required this.isLocalDataGuardEnabled,
    required this.isStorageAutoScalingEnabled,
    required this.licenseType,
    required this.lifecycleDetails,
    required this.localAdgAutoFailoverMaxDataLossLimit,
    required this.localDisasterRecoveryType,
    required this.localStandbyDbs,
    required this.maintenanceBeginTime,
    required this.maintenanceEndTime,
    required this.maintenanceScheduleType,
    required this.memoryPerOracleComputeUnitGbs,
    required this.memoryTableGbs,
    required this.mtlsConnectionRequired,
    required this.nCharacterSet,
    required this.nextLongTermBackupTime,
    required this.ociUrl,
    required this.ocid,
    required this.openMode,
    required this.operationsInsightsState,
    required this.peerDbIds,
    required this.permissionLevel,
    required this.privateEndpoint,
    required this.privateEndpointIp,
    required this.privateEndpointLabel,
    required this.refreshableMode,
    required this.refreshableState,
    required this.role,
    required this.scheduledOperationDetails,
    required this.secretId,
    required this.sqlWebDeveloperUrl,
    required this.state,
    required this.supportedCloneRegions,
    required this.totalAutoBackupStorageSizeGbs,
    required this.usedDataStorageSizeTbs,
    required this.vaultId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actualUsedDataStorageSizeTb'] = actualUsedDataStorageSizeTb;
    map['allocatedStorageSizeTb'] = allocatedStorageSizeTb;
    map['apexDetails'] = Input.encodeList<
        GetAutonomousDatabasePropertyApexDetail,
        Map<String, dynamic>>(apexDetails, (value) => value.toMap());
    map['arePrimaryAllowlistedIpsUsed'] = arePrimaryAllowlistedIpsUsed;
    map['autonomousContainerDatabaseId'] = autonomousContainerDatabaseId;
    map['availableUpgradeVersions'] = availableUpgradeVersions;
    map['backupRetentionPeriodDays'] = backupRetentionPeriodDays;
    map['characterSet'] = characterSet;
    map['computeCount'] = computeCount;
    map['connectionStrings'] = Input.encodeList<
        GetAutonomousDatabasePropertyConnectionString,
        Map<String, dynamic>>(connectionStrings, (value) => value.toMap());
    map['connectionUrls'] = Input.encodeList<
        GetAutonomousDatabasePropertyConnectionUrl,
        Map<String, dynamic>>(connectionUrls, (value) => value.toMap());
    map['cpuCoreCount'] = cpuCoreCount;
    map['customerContacts'] = Input.encodeList<
        GetAutonomousDatabasePropertyCustomerContact,
        Map<String, dynamic>>(customerContacts, (value) => value.toMap());
    map['dataSafeState'] = dataSafeState;
    map['dataStorageSizeGb'] = dataStorageSizeGb;
    map['dataStorageSizeTb'] = dataStorageSizeTb;
    map['databaseManagementState'] = databaseManagementState;
    map['dbEdition'] = dbEdition;
    map['dbVersion'] = dbVersion;
    map['dbWorkload'] = dbWorkload;
    map['failedDataRecoveryDuration'] = failedDataRecoveryDuration;
    map['isAutoScalingEnabled'] = isAutoScalingEnabled;
    map['isLocalDataGuardEnabled'] = isLocalDataGuardEnabled;
    map['isStorageAutoScalingEnabled'] = isStorageAutoScalingEnabled;
    map['licenseType'] = licenseType;
    map['lifecycleDetails'] = lifecycleDetails;
    map['localAdgAutoFailoverMaxDataLossLimit'] =
        localAdgAutoFailoverMaxDataLossLimit;
    map['localDisasterRecoveryType'] = localDisasterRecoveryType;
    map['localStandbyDbs'] = Input.encodeList<
        GetAutonomousDatabasePropertyLocalStandbyDb,
        Map<String, dynamic>>(localStandbyDbs, (value) => value.toMap());
    map['maintenanceBeginTime'] = maintenanceBeginTime;
    map['maintenanceEndTime'] = maintenanceEndTime;
    map['maintenanceScheduleType'] = maintenanceScheduleType;
    map['memoryPerOracleComputeUnitGbs'] = memoryPerOracleComputeUnitGbs;
    map['memoryTableGbs'] = memoryTableGbs;
    map['mtlsConnectionRequired'] = mtlsConnectionRequired;
    map['nCharacterSet'] = nCharacterSet;
    map['nextLongTermBackupTime'] = nextLongTermBackupTime;
    map['ociUrl'] = ociUrl;
    map['ocid'] = ocid;
    map['openMode'] = openMode;
    map['operationsInsightsState'] = operationsInsightsState;
    map['peerDbIds'] = peerDbIds;
    map['permissionLevel'] = permissionLevel;
    map['privateEndpoint'] = privateEndpoint;
    map['privateEndpointIp'] = privateEndpointIp;
    map['privateEndpointLabel'] = privateEndpointLabel;
    map['refreshableMode'] = refreshableMode;
    map['refreshableState'] = refreshableState;
    map['role'] = role;
    map['scheduledOperationDetails'] = Input.encodeList<
            GetAutonomousDatabasePropertyScheduledOperationDetail,
            Map<String, dynamic>>(
        scheduledOperationDetails, (value) => value.toMap());
    map['secretId'] = secretId;
    map['sqlWebDeveloperUrl'] = sqlWebDeveloperUrl;
    map['state'] = state;
    map['supportedCloneRegions'] = supportedCloneRegions;
    map['totalAutoBackupStorageSizeGbs'] = totalAutoBackupStorageSizeGbs;
    map['usedDataStorageSizeTbs'] = usedDataStorageSizeTbs;
    map['vaultId'] = vaultId;
    return map;
  }

  factory GetAutonomousDatabaseProperty.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseProperty(
      actualUsedDataStorageSizeTb: map['actualUsedDataStorageSizeTb'] as double,
      allocatedStorageSizeTb: map['allocatedStorageSizeTb'] as double,
      apexDetails: Input.decodeList<GetAutonomousDatabasePropertyApexDetail>(
          map['apexDetails'],
          (value) => GetAutonomousDatabasePropertyApexDetail.fromMap(
              (value as Map).cast<String, dynamic>())),
      arePrimaryAllowlistedIpsUsed: map['arePrimaryAllowlistedIpsUsed'] as bool,
      autonomousContainerDatabaseId:
          map['autonomousContainerDatabaseId'] as String,
      availableUpgradeVersions:
          (map['availableUpgradeVersions'] as List).cast<String>(),
      backupRetentionPeriodDays: map['backupRetentionPeriodDays'] as int,
      characterSet: map['characterSet'] as String,
      computeCount: map['computeCount'] as double,
      connectionStrings:
          Input.decodeList<GetAutonomousDatabasePropertyConnectionString>(
              map['connectionStrings'],
              (value) => GetAutonomousDatabasePropertyConnectionString.fromMap(
                  (value as Map).cast<String, dynamic>())),
      connectionUrls:
          Input.decodeList<GetAutonomousDatabasePropertyConnectionUrl>(
              map['connectionUrls'],
              (value) => GetAutonomousDatabasePropertyConnectionUrl.fromMap(
                  (value as Map).cast<String, dynamic>())),
      cpuCoreCount: map['cpuCoreCount'] as int,
      customerContacts:
          Input.decodeList<GetAutonomousDatabasePropertyCustomerContact>(
              map['customerContacts'],
              (value) => GetAutonomousDatabasePropertyCustomerContact.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dataSafeState: map['dataSafeState'] as String,
      dataStorageSizeGb: map['dataStorageSizeGb'] as int,
      dataStorageSizeTb: map['dataStorageSizeTb'] as int,
      databaseManagementState: map['databaseManagementState'] as String,
      dbEdition: map['dbEdition'] as String,
      dbVersion: map['dbVersion'] as String,
      dbWorkload: map['dbWorkload'] as String,
      failedDataRecoveryDuration: map['failedDataRecoveryDuration'] as String,
      isAutoScalingEnabled: map['isAutoScalingEnabled'] as bool,
      isLocalDataGuardEnabled: map['isLocalDataGuardEnabled'] as bool,
      isStorageAutoScalingEnabled: map['isStorageAutoScalingEnabled'] as bool,
      licenseType: map['licenseType'] as String,
      lifecycleDetails: map['lifecycleDetails'] as String,
      localAdgAutoFailoverMaxDataLossLimit:
          map['localAdgAutoFailoverMaxDataLossLimit'] as int,
      localDisasterRecoveryType: map['localDisasterRecoveryType'] as String,
      localStandbyDbs:
          Input.decodeList<GetAutonomousDatabasePropertyLocalStandbyDb>(
              map['localStandbyDbs'],
              (value) => GetAutonomousDatabasePropertyLocalStandbyDb.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maintenanceBeginTime: map['maintenanceBeginTime'] as String,
      maintenanceEndTime: map['maintenanceEndTime'] as String,
      maintenanceScheduleType: map['maintenanceScheduleType'] as String,
      memoryPerOracleComputeUnitGbs:
          map['memoryPerOracleComputeUnitGbs'] as int,
      memoryTableGbs: map['memoryTableGbs'] as int,
      mtlsConnectionRequired: map['mtlsConnectionRequired'] as bool,
      nCharacterSet: map['nCharacterSet'] as String,
      nextLongTermBackupTime: map['nextLongTermBackupTime'] as String,
      ociUrl: map['ociUrl'] as String,
      ocid: map['ocid'] as String,
      openMode: map['openMode'] as String,
      operationsInsightsState: map['operationsInsightsState'] as String,
      peerDbIds: (map['peerDbIds'] as List).cast<String>(),
      permissionLevel: map['permissionLevel'] as String,
      privateEndpoint: map['privateEndpoint'] as String,
      privateEndpointIp: map['privateEndpointIp'] as String,
      privateEndpointLabel: map['privateEndpointLabel'] as String,
      refreshableMode: map['refreshableMode'] as String,
      refreshableState: map['refreshableState'] as String,
      role: map['role'] as String,
      scheduledOperationDetails: Input.decodeList<
              GetAutonomousDatabasePropertyScheduledOperationDetail>(
          map['scheduledOperationDetails'],
          (value) =>
              GetAutonomousDatabasePropertyScheduledOperationDetail.fromMap(
                  (value as Map).cast<String, dynamic>())),
      secretId: map['secretId'] as String,
      sqlWebDeveloperUrl: map['sqlWebDeveloperUrl'] as String,
      state: map['state'] as String,
      supportedCloneRegions:
          (map['supportedCloneRegions'] as List).cast<String>(),
      totalAutoBackupStorageSizeGbs:
          map['totalAutoBackupStorageSizeGbs'] as double,
      usedDataStorageSizeTbs: map['usedDataStorageSizeTbs'] as int,
      vaultId: map['vaultId'] as String,
    );
  }
}
