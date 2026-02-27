// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_machine_features_response_sqladmin_v1beta4.dart';
import 'backup_configuration_response_sqladmin_v1beta4.dart';
import 'data_cache_config_response_sqladmin_v1beta4.dart';
import 'database_flags_response_sqladmin_v1beta4.dart';
import 'deny_maintenance_period_response_sqladmin_v1beta4.dart';
import 'insights_config_response_sqladmin_v1beta4.dart';
import 'ip_configuration_response_sqladmin_v1beta4.dart';
import 'location_preference_response_sqladmin_v1beta4.dart';
import 'maintenance_window_response_sqladmin_v1beta4.dart';
import 'password_validation_policy_response_sqladmin_v1beta4.dart';
import 'sql_active_directory_config_response_sqladmin_v1beta4.dart';
import 'sql_server_audit_config_response_sqladmin_v1beta4.dart';

/// Database instance settings.
class SettingsResponseSqladminV1beta4 {
  /// The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. Valid values: * `ALWAYS`: The instance is on, and remains so even in the absence of connection requests. * `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  final String activationPolicy;

  /// Active Directory configuration, relevant only for Cloud SQL for SQL Server.
  final SqlActiveDirectoryConfigResponseSqladminV1beta4 activeDirectoryConfig;

  /// Specifies advance machine configuration for the instance relevant only for SQL Server.
  final AdvancedMachineFeaturesResponseSqladminV1beta4 advancedMachineFeatures;

  /// The App Engine app IDs that can access this instance. (Deprecated) Applied to First Generation instances only.
  final List<String> authorizedGaeApplications;

  /// Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data accessibility. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available)./ For more information, see [Overview of the High Availability Configuration](https://cloud.google.com/sql/docs/mysql/high-availability).
  final String availabilityType;

  /// The daily backup configuration for the instance.
  final BackupConfigurationResponseSqladminV1beta4 backupConfiguration;

  /// The name of server Instance collation.
  final String collation;

  /// Specifies if connections must use Cloud SQL connectors. Option values include the following: `NOT_REQUIRED` (Cloud SQL instances can be connected without Cloud SQL Connectors) and `REQUIRED` (Only allow connections that use Cloud SQL Connectors) Note that using REQUIRED disables all existing authorized networks. If this field is not specified when creating a new instance, NOT_REQUIRED is used. If this field is not specified when patching or updating an existing instance, it is left unchanged in the instance.
  final String connectorEnforcement;

  /// Configuration specific to read replica instances. Indicates whether database flags for crash-safe replication are enabled. This property was only applicable to First Generation instances.
  final bool crashSafeReplicationEnabled;

  /// Configuration for data cache.
  final DataCacheConfigResponseSqladminV1beta4 dataCacheConfig;

  /// The size of data disk, in GB. The data disk size minimum is 10GB.
  final String dataDiskSizeGb;

  /// The type of data disk: `PD_SSD` (default) or `PD_HDD`. Not used for First Generation instances.
  final String dataDiskType;

  /// The database flags passed to the instance at startup.
  final List<DatabaseFlagsResponseSqladminV1beta4> databaseFlags;

  /// Configuration specific to read replica instances. Indicates whether replication is enabled or not. WARNING: Changing this restarts the instance.
  final bool databaseReplicationEnabled;

  /// Configuration to protect against accidental instance deletion.
  final bool deletionProtectionEnabled;

  /// Deny maintenance periods
  final List<DenyMaintenancePeriodResponseSqladminV1beta4>
      denyMaintenancePeriods;

  /// Optional. The edition of the instance.
  final String edition;

  /// Insights configuration, for now relevant only for Postgres.
  final InsightsConfigResponseSqladminV1beta4 insightsConfig;

  /// The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled for Second Generation instances.
  final IpConfigurationResponseSqladminV1beta4 ipConfiguration;

  /// This is always `sql#settings`.
  final String kind;

  /// The location preference settings. This allows the instance to be located as near as possible to either an App Engine app or Compute Engine zone for better performance. App Engine co-location was only applicable to First Generation instances.
  final LocationPreferenceResponseSqladminV1beta4 locationPreference;

  /// The maintenance window for this instance. This specifies when the instance can be restarted for maintenance purposes.
  final MaintenanceWindowResponseSqladminV1beta4 maintenanceWindow;

  /// The local user password validation policy of the instance.
  final PasswordValidationPolicyResponseSqladminV1beta4
      passwordValidationPolicy;

  /// The pricing plan for this instance. This can be either `PER_USE` or `PACKAGE`. Only `PER_USE` is supported for Second Generation instances.
  final String pricingPlan;

  /// The type of replication this instance uses. This can be either `ASYNCHRONOUS` or `SYNCHRONOUS`. (Deprecated) This property was only applicable to First Generation instances.
  final String replicationType;

  /// The version of instance settings. This is a required field for update method to make sure concurrent updates are handled properly. During update, use the most recent settingsVersion value for this instance and do not try to update this value.
  final String settingsVersion;

  /// SQL Server specific audit configuration.
  final SqlServerAuditConfigResponseSqladminV1beta4 sqlServerAuditConfig;

  /// Configuration to increase storage size automatically. The default value is true.
  final bool storageAutoResize;

  /// The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  final String storageAutoResizeLimit;

  /// The tier (or machine type) for this instance, for example `db-custom-1-3840`. WARNING: Changing this restarts the instance.
  final String tier;

  /// Server timezone, relevant only for Cloud SQL for SQL Server.
  final String timeZone;

  /// User-provided labels, represented as a dictionary where each label is a single key value pair.
  final Map<String, String> userLabels;

  SettingsResponseSqladminV1beta4({
    required this.activationPolicy,
    required this.activeDirectoryConfig,
    required this.advancedMachineFeatures,
    required this.authorizedGaeApplications,
    required this.availabilityType,
    required this.backupConfiguration,
    required this.collation,
    required this.connectorEnforcement,
    required this.crashSafeReplicationEnabled,
    required this.dataCacheConfig,
    required this.dataDiskSizeGb,
    required this.dataDiskType,
    required this.databaseFlags,
    required this.databaseReplicationEnabled,
    required this.deletionProtectionEnabled,
    required this.denyMaintenancePeriods,
    required this.edition,
    required this.insightsConfig,
    required this.ipConfiguration,
    required this.kind,
    required this.locationPreference,
    required this.maintenanceWindow,
    required this.passwordValidationPolicy,
    required this.pricingPlan,
    required this.replicationType,
    required this.settingsVersion,
    required this.sqlServerAuditConfig,
    required this.storageAutoResize,
    required this.storageAutoResizeLimit,
    required this.tier,
    required this.timeZone,
    required this.userLabels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['activationPolicy'] = activationPolicy;
    map['activeDirectoryConfig'] = activeDirectoryConfig.toMap();
    map['advancedMachineFeatures'] = advancedMachineFeatures.toMap();
    map['authorizedGaeApplications'] = authorizedGaeApplications;
    map['availabilityType'] = availabilityType;
    map['backupConfiguration'] = backupConfiguration.toMap();
    map['collation'] = collation;
    map['connectorEnforcement'] = connectorEnforcement;
    map['crashSafeReplicationEnabled'] = crashSafeReplicationEnabled;
    map['dataCacheConfig'] = dataCacheConfig.toMap();
    map['dataDiskSizeGb'] = dataDiskSizeGb;
    map['dataDiskType'] = dataDiskType;
    map['databaseFlags'] = pulumi.Input.encodeList<
        DatabaseFlagsResponseSqladminV1beta4,
        Map<String, dynamic>>(databaseFlags, (value) => value.toMap());
    map['databaseReplicationEnabled'] = databaseReplicationEnabled;
    map['deletionProtectionEnabled'] = deletionProtectionEnabled;
    map['denyMaintenancePeriods'] = pulumi.Input.encodeList<
        DenyMaintenancePeriodResponseSqladminV1beta4,
        Map<String, dynamic>>(denyMaintenancePeriods, (value) => value.toMap());
    map['edition'] = edition;
    map['insightsConfig'] = insightsConfig.toMap();
    map['ipConfiguration'] = ipConfiguration.toMap();
    map['kind'] = kind;
    map['locationPreference'] = locationPreference.toMap();
    map['maintenanceWindow'] = maintenanceWindow.toMap();
    map['passwordValidationPolicy'] = passwordValidationPolicy.toMap();
    map['pricingPlan'] = pricingPlan;
    map['replicationType'] = replicationType;
    map['settingsVersion'] = settingsVersion;
    map['sqlServerAuditConfig'] = sqlServerAuditConfig.toMap();
    map['storageAutoResize'] = storageAutoResize;
    map['storageAutoResizeLimit'] = storageAutoResizeLimit;
    map['tier'] = tier;
    map['timeZone'] = timeZone;
    map['userLabels'] = userLabels;
    return map;
  }

  factory SettingsResponseSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return SettingsResponseSqladminV1beta4(
      activationPolicy: map['activationPolicy'] as String,
      activeDirectoryConfig:
          SqlActiveDirectoryConfigResponseSqladminV1beta4.fromMap(
              (map['activeDirectoryConfig'] as Map).cast<String, dynamic>()),
      advancedMachineFeatures:
          AdvancedMachineFeaturesResponseSqladminV1beta4.fromMap(
              (map['advancedMachineFeatures'] as Map).cast<String, dynamic>()),
      authorizedGaeApplications:
          (map['authorizedGaeApplications'] as List).cast<String>(),
      availabilityType: map['availabilityType'] as String,
      backupConfiguration: BackupConfigurationResponseSqladminV1beta4.fromMap(
          (map['backupConfiguration'] as Map).cast<String, dynamic>()),
      collation: map['collation'] as String,
      connectorEnforcement: map['connectorEnforcement'] as String,
      crashSafeReplicationEnabled: map['crashSafeReplicationEnabled'] as bool,
      dataCacheConfig: DataCacheConfigResponseSqladminV1beta4.fromMap(
          (map['dataCacheConfig'] as Map).cast<String, dynamic>()),
      dataDiskSizeGb: map['dataDiskSizeGb'] as String,
      dataDiskType: map['dataDiskType'] as String,
      databaseFlags:
          pulumi.Input.decodeList<DatabaseFlagsResponseSqladminV1beta4>(
              map['databaseFlags'],
              (value) => DatabaseFlagsResponseSqladminV1beta4.fromMap(
                  (value as Map).cast<String, dynamic>())),
      databaseReplicationEnabled: map['databaseReplicationEnabled'] as bool,
      deletionProtectionEnabled: map['deletionProtectionEnabled'] as bool,
      denyMaintenancePeriods:
          pulumi.Input.decodeList<DenyMaintenancePeriodResponseSqladminV1beta4>(
              map['denyMaintenancePeriods'],
              (value) => DenyMaintenancePeriodResponseSqladminV1beta4.fromMap(
                  (value as Map).cast<String, dynamic>())),
      edition: map['edition'] as String,
      insightsConfig: InsightsConfigResponseSqladminV1beta4.fromMap(
          (map['insightsConfig'] as Map).cast<String, dynamic>()),
      ipConfiguration: IpConfigurationResponseSqladminV1beta4.fromMap(
          (map['ipConfiguration'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      locationPreference: LocationPreferenceResponseSqladminV1beta4.fromMap(
          (map['locationPreference'] as Map).cast<String, dynamic>()),
      maintenanceWindow: MaintenanceWindowResponseSqladminV1beta4.fromMap(
          (map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      passwordValidationPolicy:
          PasswordValidationPolicyResponseSqladminV1beta4.fromMap(
              (map['passwordValidationPolicy'] as Map).cast<String, dynamic>()),
      pricingPlan: map['pricingPlan'] as String,
      replicationType: map['replicationType'] as String,
      settingsVersion: map['settingsVersion'] as String,
      sqlServerAuditConfig: SqlServerAuditConfigResponseSqladminV1beta4.fromMap(
          (map['sqlServerAuditConfig'] as Map).cast<String, dynamic>()),
      storageAutoResize: map['storageAutoResize'] as bool,
      storageAutoResizeLimit: map['storageAutoResizeLimit'] as String,
      tier: map['tier'] as String,
      timeZone: map['timeZone'] as String,
      userLabels: (map['userLabels'] as Map).cast<String, String>(),
    );
  }
}
