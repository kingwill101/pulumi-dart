// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_database_instance_setting_active_directory_config/get_database_instance_setting_active_directory_config.dart';
import '../get_database_instance_setting_advanced_machine_feature/get_database_instance_setting_advanced_machine_feature.dart';
import '../get_database_instance_setting_backup_configuration/get_database_instance_setting_backup_configuration.dart';
import '../get_database_instance_setting_connection_pool_config/get_database_instance_setting_connection_pool_config.dart';
import '../get_database_instance_setting_data_cache_config/get_database_instance_setting_data_cache_config.dart';
import '../get_database_instance_setting_database_flag/get_database_instance_setting_database_flag.dart';
import '../get_database_instance_setting_deny_maintenance_period/get_database_instance_setting_deny_maintenance_period.dart';
import '../get_database_instance_setting_final_backup_config/get_database_instance_setting_final_backup_config.dart';
import '../get_database_instance_setting_insights_config/get_database_instance_setting_insights_config.dart';
import '../get_database_instance_setting_ip_configuration/get_database_instance_setting_ip_configuration.dart';
import '../get_database_instance_setting_location_preference/get_database_instance_setting_location_preference.dart';
import '../get_database_instance_setting_maintenance_window/get_database_instance_setting_maintenance_window.dart';
import '../get_database_instance_setting_password_validation_policy/get_database_instance_setting_password_validation_policy.dart';
import '../get_database_instance_setting_read_pool_auto_scale_config/get_database_instance_setting_read_pool_auto_scale_config.dart';
import '../get_database_instance_setting_sql_server_audit_config/get_database_instance_setting_sql_server_audit_config.dart';

class GetDatabaseInstanceSetting {
  /// This specifies when the instance should be active. Can be either ALWAYS, NEVER or ON_DEMAND.
  final String activationPolicy;
  final List<GetDatabaseInstanceSettingActiveDirectoryConfig>
      activeDirectoryConfigs;
  final List<GetDatabaseInstanceSettingAdvancedMachineFeature>
      advancedMachineFeatures;

  /// The availability type of the Cloud SQL instance, high availability
  /// (REGIONAL) or single zone (ZONAL). For all instances, ensure that
  /// settings.backup_configuration.enabled is set to true.
  /// For MySQL instances, ensure that settings.backup_configuration.binary_log_enabled is set to true.
  /// For Postgres instances, ensure that settings.backup_configuration.point_in_time_recovery_enabled
  /// is set to true. Defaults to ZONAL.
  /// For read pool instances, this field is read-only. The availability type is changed by specifying
  /// the number of nodes (node_count).
  final String availabilityType;
  final List<GetDatabaseInstanceSettingBackupConfiguration>
      backupConfigurations;

  /// The name of server instance collation.
  final String collation;

  /// The managed connection pool setting for a Cloud SQL instance.
  final List<GetDatabaseInstanceSettingConnectionPoolConfig>
      connectionPoolConfigs;

  /// Enables the enforcement of Cloud SQL Auth Proxy or Cloud SQL connectors for all the connections. If enabled, all the direct connections are rejected.
  final String connectorEnforcement;

  /// Data cache configurations.
  final List<GetDatabaseInstanceSettingDataCacheConfig> dataCacheConfigs;

  /// Provisioned number of I/O operations per second for the data disk. This field is only used for HYPERDISK_BALANCED disk types.
  final int dataDiskProvisionedIops;

  /// Provisioned throughput measured in MiB per second for the data disk. This field is only used for HYPERDISK_BALANCED disk types.
  final int dataDiskProvisionedThroughput;
  final List<GetDatabaseInstanceSettingDatabaseFlag> databaseFlags;

  /// Configuration to protect against accidental instance deletion.
  final bool deletionProtectionEnabled;
  final List<GetDatabaseInstanceSettingDenyMaintenancePeriod>
      denyMaintenancePeriods;

  /// Enables auto-resizing of the storage size. Defaults to true.
  final bool diskAutoresize;

  /// The maximum size, in GB, to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  final int diskAutoresizeLimit;

  /// The size of data disk, in GB. Size of a running instance cannot be reduced but can be increased. The minimum value is 10GB for PD_SSD, PD_HDD and 20GB for HYPERDISK_BALANCED.
  final int diskSize;

  /// The type of supported data disk is tier dependent and can be PD_SSD or PD_HDD or HYPERDISK_BALANCED.
  final String diskType;

  /// The edition of the instance, can be ENTERPRISE or ENTERPRISE_PLUS.
  final String edition;

  /// The availability type of the Cloud SQL instance, high availability
  /// (REGIONAL) or single zone (ZONAL). This field always contains the value that is reported by the
  /// API (for read pools, effective_availability_type may differ from availability_type).
  final String effectiveAvailabilityType;

  /// Enables Dataplex Integration.
  final bool enableDataplexIntegration;

  /// Enables Vertex AI Integration.
  final bool enableGoogleMlIntegration;

  /// Config used to determine the final backup settings for the instance
  final List<GetDatabaseInstanceSettingFinalBackupConfig> finalBackupConfigs;

  /// Configuration of Query Insights.
  final List<GetDatabaseInstanceSettingInsightsConfig> insightsConfigs;
  final List<GetDatabaseInstanceSettingIpConfiguration> ipConfigurations;
  final List<GetDatabaseInstanceSettingLocationPreference> locationPreferences;

  /// Declares a one-hour maintenance window when an Instance can automatically restart to apply updates. The maintenance window is specified in UTC time.
  final List<GetDatabaseInstanceSettingMaintenanceWindow> maintenanceWindows;
  final List<GetDatabaseInstanceSettingPasswordValidationPolicy>
      passwordValidationPolicies;

  /// Pricing plan for this instance, can only be PER_USE.
  final String pricingPlan;

  /// Configuration of Read Pool Auto Scale.
  final List<GetDatabaseInstanceSettingReadPoolAutoScaleConfig>
      readPoolAutoScaleConfigs;

  /// When this parameter is set to true, Cloud SQL retains backups of the instance even after the instance is deleted. The ON_DEMAND backup will be retained until customer deletes the backup or the project. The AUTOMATED backup will be retained based on the backups retention setting.
  final bool retainBackupsOnDelete;
  final List<GetDatabaseInstanceSettingSqlServerAuditConfig>
      sqlServerAuditConfigs;

  /// The machine type to use. See tiers for more details and supported versions. Postgres supports only shared-core machine types, and custom machine types such as db-custom-2-13312. See the Custom Machine Type Documentation to learn about specifying custom machine types.
  final String tier;

  /// The time_zone to be used by the database engine (supported only for SQL Server), in SQL Server timezone format.
  final String timeZone;

  /// A set of key/value user label pairs to assign to the instance.
  final Map<String, String> userLabels;

  /// Used to make sure changes to the settings block are atomic.
  final int version;

  GetDatabaseInstanceSetting({
    required this.activationPolicy,
    required this.activeDirectoryConfigs,
    required this.advancedMachineFeatures,
    required this.availabilityType,
    required this.backupConfigurations,
    required this.collation,
    required this.connectionPoolConfigs,
    required this.connectorEnforcement,
    required this.dataCacheConfigs,
    required this.dataDiskProvisionedIops,
    required this.dataDiskProvisionedThroughput,
    required this.databaseFlags,
    required this.deletionProtectionEnabled,
    required this.denyMaintenancePeriods,
    required this.diskAutoresize,
    required this.diskAutoresizeLimit,
    required this.diskSize,
    required this.diskType,
    required this.edition,
    required this.effectiveAvailabilityType,
    required this.enableDataplexIntegration,
    required this.enableGoogleMlIntegration,
    required this.finalBackupConfigs,
    required this.insightsConfigs,
    required this.ipConfigurations,
    required this.locationPreferences,
    required this.maintenanceWindows,
    required this.passwordValidationPolicies,
    required this.pricingPlan,
    required this.readPoolAutoScaleConfigs,
    required this.retainBackupsOnDelete,
    required this.sqlServerAuditConfigs,
    required this.tier,
    required this.timeZone,
    required this.userLabels,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['activationPolicy'] = activationPolicy;
    map['activeDirectoryConfigs'] = pulumi.Input.encodeList<
        GetDatabaseInstanceSettingActiveDirectoryConfig,
        Map<String, dynamic>>(activeDirectoryConfigs, (value) => value.toMap());
    map['advancedMachineFeatures'] = pulumi.Input.encodeList<
            GetDatabaseInstanceSettingAdvancedMachineFeature,
            Map<String, dynamic>>(
        advancedMachineFeatures, (value) => value.toMap());
    map['availabilityType'] = availabilityType;
    map['backupConfigurations'] = pulumi.Input.encodeList<
        GetDatabaseInstanceSettingBackupConfiguration,
        Map<String, dynamic>>(backupConfigurations, (value) => value.toMap());
    map['collation'] = collation;
    map['connectionPoolConfigs'] = pulumi.Input.encodeList<
        GetDatabaseInstanceSettingConnectionPoolConfig,
        Map<String, dynamic>>(connectionPoolConfigs, (value) => value.toMap());
    map['connectorEnforcement'] = connectorEnforcement;
    map['dataCacheConfigs'] = pulumi.Input.encodeList<
        GetDatabaseInstanceSettingDataCacheConfig,
        Map<String, dynamic>>(dataCacheConfigs, (value) => value.toMap());
    map['dataDiskProvisionedIops'] = dataDiskProvisionedIops;
    map['dataDiskProvisionedThroughput'] = dataDiskProvisionedThroughput;
    map['databaseFlags'] = pulumi.Input.encodeList<
        GetDatabaseInstanceSettingDatabaseFlag,
        Map<String, dynamic>>(databaseFlags, (value) => value.toMap());
    map['deletionProtectionEnabled'] = deletionProtectionEnabled;
    map['denyMaintenancePeriods'] = pulumi.Input.encodeList<
        GetDatabaseInstanceSettingDenyMaintenancePeriod,
        Map<String, dynamic>>(denyMaintenancePeriods, (value) => value.toMap());
    map['diskAutoresize'] = diskAutoresize;
    map['diskAutoresizeLimit'] = diskAutoresizeLimit;
    map['diskSize'] = diskSize;
    map['diskType'] = diskType;
    map['edition'] = edition;
    map['effectiveAvailabilityType'] = effectiveAvailabilityType;
    map['enableDataplexIntegration'] = enableDataplexIntegration;
    map['enableGoogleMlIntegration'] = enableGoogleMlIntegration;
    map['finalBackupConfigs'] = pulumi.Input.encodeList<
        GetDatabaseInstanceSettingFinalBackupConfig,
        Map<String, dynamic>>(finalBackupConfigs, (value) => value.toMap());
    map['insightsConfigs'] = pulumi.Input.encodeList<
        GetDatabaseInstanceSettingInsightsConfig,
        Map<String, dynamic>>(insightsConfigs, (value) => value.toMap());
    map['ipConfigurations'] = pulumi.Input.encodeList<
        GetDatabaseInstanceSettingIpConfiguration,
        Map<String, dynamic>>(ipConfigurations, (value) => value.toMap());
    map['locationPreferences'] = pulumi.Input.encodeList<
        GetDatabaseInstanceSettingLocationPreference,
        Map<String, dynamic>>(locationPreferences, (value) => value.toMap());
    map['maintenanceWindows'] = pulumi.Input.encodeList<
        GetDatabaseInstanceSettingMaintenanceWindow,
        Map<String, dynamic>>(maintenanceWindows, (value) => value.toMap());
    map['passwordValidationPolicies'] = pulumi.Input.encodeList<
            GetDatabaseInstanceSettingPasswordValidationPolicy,
            Map<String, dynamic>>(
        passwordValidationPolicies, (value) => value.toMap());
    map['pricingPlan'] = pricingPlan;
    map['readPoolAutoScaleConfigs'] = pulumi.Input.encodeList<
            GetDatabaseInstanceSettingReadPoolAutoScaleConfig,
            Map<String, dynamic>>(
        readPoolAutoScaleConfigs, (value) => value.toMap());
    map['retainBackupsOnDelete'] = retainBackupsOnDelete;
    map['sqlServerAuditConfigs'] = pulumi.Input.encodeList<
        GetDatabaseInstanceSettingSqlServerAuditConfig,
        Map<String, dynamic>>(sqlServerAuditConfigs, (value) => value.toMap());
    map['tier'] = tier;
    map['timeZone'] = timeZone;
    map['userLabels'] = userLabels;
    map['version'] = version;
    return map;
  }

  factory GetDatabaseInstanceSetting.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceSetting(
      activationPolicy: map['activationPolicy'] as String,
      activeDirectoryConfigs: pulumi.Input.decodeList<
              GetDatabaseInstanceSettingActiveDirectoryConfig>(
          map['activeDirectoryConfigs'],
          (value) => GetDatabaseInstanceSettingActiveDirectoryConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      advancedMachineFeatures: pulumi.Input.decodeList<
              GetDatabaseInstanceSettingAdvancedMachineFeature>(
          map['advancedMachineFeatures'],
          (value) => GetDatabaseInstanceSettingAdvancedMachineFeature.fromMap(
              (value as Map).cast<String, dynamic>())),
      availabilityType: map['availabilityType'] as String,
      backupConfigurations: pulumi.Input.decodeList<
              GetDatabaseInstanceSettingBackupConfiguration>(
          map['backupConfigurations'],
          (value) => GetDatabaseInstanceSettingBackupConfiguration.fromMap(
              (value as Map).cast<String, dynamic>())),
      collation: map['collation'] as String,
      connectionPoolConfigs: pulumi.Input.decodeList<
              GetDatabaseInstanceSettingConnectionPoolConfig>(
          map['connectionPoolConfigs'],
          (value) => GetDatabaseInstanceSettingConnectionPoolConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      connectorEnforcement: map['connectorEnforcement'] as String,
      dataCacheConfigs:
          pulumi.Input.decodeList<GetDatabaseInstanceSettingDataCacheConfig>(
              map['dataCacheConfigs'],
              (value) => GetDatabaseInstanceSettingDataCacheConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dataDiskProvisionedIops: map['dataDiskProvisionedIops'] as int,
      dataDiskProvisionedThroughput:
          map['dataDiskProvisionedThroughput'] as int,
      databaseFlags:
          pulumi.Input.decodeList<GetDatabaseInstanceSettingDatabaseFlag>(
              map['databaseFlags'],
              (value) => GetDatabaseInstanceSettingDatabaseFlag.fromMap(
                  (value as Map).cast<String, dynamic>())),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] as bool,
      denyMaintenancePeriods: pulumi.Input.decodeList<
              GetDatabaseInstanceSettingDenyMaintenancePeriod>(
          map['denyMaintenancePeriods'],
          (value) => GetDatabaseInstanceSettingDenyMaintenancePeriod.fromMap(
              (value as Map).cast<String, dynamic>())),
      diskAutoresize: map['diskAutoresize'] as bool,
      diskAutoresizeLimit: map['diskAutoresizeLimit'] as int,
      diskSize: map['diskSize'] as int,
      diskType: map['diskType'] as String,
      edition: map['edition'] as String,
      effectiveAvailabilityType: map['effectiveAvailabilityType'] as String,
      enableDataplexIntegration: map['enableDataplexIntegration'] as bool,
      enableGoogleMlIntegration: map['enableGoogleMlIntegration'] as bool,
      finalBackupConfigs:
          pulumi.Input.decodeList<GetDatabaseInstanceSettingFinalBackupConfig>(
              map['finalBackupConfigs'],
              (value) => GetDatabaseInstanceSettingFinalBackupConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      insightsConfigs:
          pulumi.Input.decodeList<GetDatabaseInstanceSettingInsightsConfig>(
              map['insightsConfigs'],
              (value) => GetDatabaseInstanceSettingInsightsConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      ipConfigurations:
          pulumi.Input.decodeList<GetDatabaseInstanceSettingIpConfiguration>(
              map['ipConfigurations'],
              (value) => GetDatabaseInstanceSettingIpConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      locationPreferences:
          pulumi.Input.decodeList<GetDatabaseInstanceSettingLocationPreference>(
              map['locationPreferences'],
              (value) => GetDatabaseInstanceSettingLocationPreference.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maintenanceWindows:
          pulumi.Input.decodeList<GetDatabaseInstanceSettingMaintenanceWindow>(
              map['maintenanceWindows'],
              (value) => GetDatabaseInstanceSettingMaintenanceWindow.fromMap(
                  (value as Map).cast<String, dynamic>())),
      passwordValidationPolicies: pulumi.Input.decodeList<
              GetDatabaseInstanceSettingPasswordValidationPolicy>(
          map['passwordValidationPolicies'],
          (value) => GetDatabaseInstanceSettingPasswordValidationPolicy.fromMap(
              (value as Map).cast<String, dynamic>())),
      pricingPlan: map['pricingPlan'] as String,
      readPoolAutoScaleConfigs: pulumi.Input.decodeList<
              GetDatabaseInstanceSettingReadPoolAutoScaleConfig>(
          map['readPoolAutoScaleConfigs'],
          (value) => GetDatabaseInstanceSettingReadPoolAutoScaleConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      retainBackupsOnDelete: map['retainBackupsOnDelete'] as bool,
      sqlServerAuditConfigs: pulumi.Input.decodeList<
              GetDatabaseInstanceSettingSqlServerAuditConfig>(
          map['sqlServerAuditConfigs'],
          (value) => GetDatabaseInstanceSettingSqlServerAuditConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      tier: map['tier'] as String,
      timeZone: map['timeZone'] as String,
      userLabels: (map['userLabels'] as Map).cast<String, String>(),
      version: map['version'] as int,
    );
  }
}
