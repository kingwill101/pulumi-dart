// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_machine_features_sqladmin_v1beta4.dart';
import 'backup_configuration_sqladmin_v1beta4.dart';
import 'data_cache_config_sqladmin_v1beta4.dart';
import 'database_flags_sqladmin_v1beta4.dart';
import 'deny_maintenance_period_sqladmin_v1beta4.dart';
import 'insights_config_sqladmin_v1beta4.dart';
import 'ip_configuration_sqladmin_v1beta4.dart';
import 'location_preference_sqladmin_v1beta4.dart';
import 'maintenance_window_sqladmin_v1beta4.dart';
import 'password_validation_policy_sqladmin_v1beta4.dart';
import 'settings_activation_policy_sqladmin_v1beta4.dart';
import 'settings_availability_type_sqladmin_v1beta4.dart';
import 'settings_connector_enforcement_sqladmin_v1beta4.dart';
import 'settings_data_disk_type_sqladmin_v1beta4.dart';
import 'settings_edition_sqladmin_v1beta4.dart';
import 'settings_pricing_plan_sqladmin_v1beta4.dart';
import 'settings_replication_type_sqladmin_v1beta4.dart';
import 'sql_active_directory_config_sqladmin_v1beta4.dart';
import 'sql_server_audit_config_sqladmin_v1beta4.dart';

/// Database instance settings.
class SettingsSqladminV1beta4 {
  /// The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. Valid values: * `ALWAYS`: The instance is on, and remains so even in the absence of connection requests. * `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  final SettingsActivationPolicySqladminV1beta4? activationPolicy;

  /// Active Directory configuration, relevant only for Cloud SQL for SQL Server.
  final SqlActiveDirectoryConfigSqladminV1beta4? activeDirectoryConfig;

  /// Specifies advance machine configuration for the instance relevant only for SQL Server.
  final AdvancedMachineFeaturesSqladminV1beta4? advancedMachineFeatures;

  /// The App Engine app IDs that can access this instance. (Deprecated) Applied to First Generation instances only.
  final List<String>? authorizedGaeApplications;

  /// Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data accessibility. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available)./ For more information, see [Overview of the High Availability Configuration](https://cloud.google.com/sql/docs/mysql/high-availability).
  final SettingsAvailabilityTypeSqladminV1beta4? availabilityType;

  /// The daily backup configuration for the instance.
  final BackupConfigurationSqladminV1beta4? backupConfiguration;

  /// The name of server Instance collation.
  final String? collation;

  /// Specifies if connections must use Cloud SQL connectors. Option values include the following: `NOT_REQUIRED` (Cloud SQL instances can be connected without Cloud SQL Connectors) and `REQUIRED` (Only allow connections that use Cloud SQL Connectors) Note that using REQUIRED disables all existing authorized networks. If this field is not specified when creating a new instance, NOT_REQUIRED is used. If this field is not specified when patching or updating an existing instance, it is left unchanged in the instance.
  final SettingsConnectorEnforcementSqladminV1beta4? connectorEnforcement;

  /// Configuration specific to read replica instances. Indicates whether database flags for crash-safe replication are enabled. This property was only applicable to First Generation instances.
  final bool? crashSafeReplicationEnabled;

  /// Configuration for data cache.
  final DataCacheConfigSqladminV1beta4? dataCacheConfig;

  /// The size of data disk, in GB. The data disk size minimum is 10GB.
  final String? dataDiskSizeGb;

  /// The type of data disk: `PD_SSD` (default) or `PD_HDD`. Not used for First Generation instances.
  final SettingsDataDiskTypeSqladminV1beta4? dataDiskType;

  /// The database flags passed to the instance at startup.
  final List<DatabaseFlagsSqladminV1beta4>? databaseFlags;

  /// Configuration specific to read replica instances. Indicates whether replication is enabled or not. WARNING: Changing this restarts the instance.
  final bool? databaseReplicationEnabled;

  /// Configuration to protect against accidental instance deletion.
  final bool? deletionProtectionEnabled;

  /// Deny maintenance periods
  final List<DenyMaintenancePeriodSqladminV1beta4>? denyMaintenancePeriods;

  /// Optional. The edition of the instance.
  final SettingsEditionSqladminV1beta4? edition;

  /// Insights configuration, for now relevant only for Postgres.
  final InsightsConfigSqladminV1beta4? insightsConfig;

  /// The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled for Second Generation instances.
  final IpConfigurationSqladminV1beta4? ipConfiguration;

  /// This is always `sql#settings`.
  final String? kind;

  /// The location preference settings. This allows the instance to be located as near as possible to either an App Engine app or Compute Engine zone for better performance. App Engine co-location was only applicable to First Generation instances.
  final LocationPreferenceSqladminV1beta4? locationPreference;

  /// The maintenance window for this instance. This specifies when the instance can be restarted for maintenance purposes.
  final MaintenanceWindowSqladminV1beta4? maintenanceWindow;

  /// The local user password validation policy of the instance.
  final PasswordValidationPolicySqladminV1beta4? passwordValidationPolicy;

  /// The pricing plan for this instance. This can be either `PER_USE` or `PACKAGE`. Only `PER_USE` is supported for Second Generation instances.
  final SettingsPricingPlanSqladminV1beta4? pricingPlan;

  /// The type of replication this instance uses. This can be either `ASYNCHRONOUS` or `SYNCHRONOUS`. (Deprecated) This property was only applicable to First Generation instances.
  final SettingsReplicationTypeSqladminV1beta4? replicationType;

  /// The version of instance settings. This is a required field for update method to make sure concurrent updates are handled properly. During update, use the most recent settingsVersion value for this instance and do not try to update this value.
  final String? settingsVersion;

  /// SQL Server specific audit configuration.
  final SqlServerAuditConfigSqladminV1beta4? sqlServerAuditConfig;

  /// Configuration to increase storage size automatically. The default value is true.
  final bool? storageAutoResize;

  /// The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  final String? storageAutoResizeLimit;

  /// The tier (or machine type) for this instance, for example `db-custom-1-3840`. WARNING: Changing this restarts the instance.
  final String? tier;

  /// Server timezone, relevant only for Cloud SQL for SQL Server.
  final String? timeZone;

  /// User-provided labels, represented as a dictionary where each label is a single key value pair.
  final Map<String, String>? userLabels;

  /// Creates a new [SettingsSqladminV1beta4].
  /// [activationPolicy] The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. Valid values: * `ALWAYS`: The instance is on, and remains so even in the absence of connection requests. * `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  /// [activeDirectoryConfig] Active Directory configuration, relevant only for Cloud SQL for SQL Server.
  /// [advancedMachineFeatures] Specifies advance machine configuration for the instance relevant only for SQL Server.
  /// [authorizedGaeApplications] The App Engine app IDs that can access this instance. (Deprecated) Applied to First Generation instances only.
  /// [availabilityType] Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data accessibility. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available)./ For more information, see [Overview of the High Availability Configuration](https://cloud.google.com/sql/docs/mysql/high-availability).
  /// [backupConfiguration] The daily backup configuration for the instance.
  /// [collation] The name of server Instance collation.
  /// [connectorEnforcement] Specifies if connections must use Cloud SQL connectors. Option values include the following: `NOT_REQUIRED` (Cloud SQL instances can be connected without Cloud SQL Connectors) and `REQUIRED` (Only allow connections that use Cloud SQL Connectors) Note that using REQUIRED disables all existing authorized networks. If this field is not specified when creating a new instance, NOT_REQUIRED is used. If this field is not specified when patching or updating an existing instance, it is left unchanged in the instance.
  /// [crashSafeReplicationEnabled] Configuration specific to read replica instances. Indicates whether database flags for crash-safe replication are enabled. This property was only applicable to First Generation instances.
  /// [dataCacheConfig] Configuration for data cache.
  /// [dataDiskSizeGb] The size of data disk, in GB. The data disk size minimum is 10GB.
  /// [dataDiskType] The type of data disk: `PD_SSD` (default) or `PD_HDD`. Not used for First Generation instances.
  /// [databaseFlags] The database flags passed to the instance at startup.
  /// [databaseReplicationEnabled] Configuration specific to read replica instances. Indicates whether replication is enabled or not. WARNING: Changing this restarts the instance.
  /// [deletionProtectionEnabled] Configuration to protect against accidental instance deletion.
  /// [denyMaintenancePeriods] Deny maintenance periods
  /// [edition] Optional. The edition of the instance.
  /// [insightsConfig] Insights configuration, for now relevant only for Postgres.
  /// [ipConfiguration] The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled for Second Generation instances.
  /// [kind] This is always `sql#settings`.
  /// [locationPreference] The location preference settings. This allows the instance to be located as near as possible to either an App Engine app or Compute Engine zone for better performance. App Engine co-location was only applicable to First Generation instances.
  /// [maintenanceWindow] The maintenance window for this instance. This specifies when the instance can be restarted for maintenance purposes.
  /// [passwordValidationPolicy] The local user password validation policy of the instance.
  /// [pricingPlan] The pricing plan for this instance. This can be either `PER_USE` or `PACKAGE`. Only `PER_USE` is supported for Second Generation instances.
  /// [replicationType] The type of replication this instance uses. This can be either `ASYNCHRONOUS` or `SYNCHRONOUS`. (Deprecated) This property was only applicable to First Generation instances.
  /// [settingsVersion] The version of instance settings. This is a required field for update method to make sure concurrent updates are handled properly. During update, use the most recent settingsVersion value for this instance and do not try to update this value.
  /// [sqlServerAuditConfig] SQL Server specific audit configuration.
  /// [storageAutoResize] Configuration to increase storage size automatically. The default value is true.
  /// [storageAutoResizeLimit] The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  /// [tier] The tier (or machine type) for this instance, for example `db-custom-1-3840`. WARNING: Changing this restarts the instance.
  /// [timeZone] Server timezone, relevant only for Cloud SQL for SQL Server.
  /// [userLabels] User-provided labels, represented as a dictionary where each label is a single key value pair.
  SettingsSqladminV1beta4({
    this.activationPolicy,
    this.activeDirectoryConfig,
    this.advancedMachineFeatures,
    this.authorizedGaeApplications,
    this.availabilityType,
    this.backupConfiguration,
    this.collation,
    this.connectorEnforcement,
    this.crashSafeReplicationEnabled,
    this.dataCacheConfig,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.databaseFlags,
    this.databaseReplicationEnabled,
    this.deletionProtectionEnabled,
    this.denyMaintenancePeriods,
    this.edition,
    this.insightsConfig,
    this.ipConfiguration,
    this.kind,
    this.locationPreference,
    this.maintenanceWindow,
    this.passwordValidationPolicy,
    this.pricingPlan,
    this.replicationType,
    this.settingsVersion,
    this.sqlServerAuditConfig,
    this.storageAutoResize,
    this.storageAutoResizeLimit,
    this.tier,
    this.timeZone,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationPolicy': ?activationPolicy == null
          ? null
          : activationPolicy!.value,
      'activeDirectoryConfig': ?activeDirectoryConfig == null
          ? null
          : activeDirectoryConfig!.toMap(),
      'advancedMachineFeatures': ?advancedMachineFeatures == null
          ? null
          : advancedMachineFeatures!.toMap(),
      'authorizedGaeApplications': ?authorizedGaeApplications,
      'availabilityType': ?availabilityType == null
          ? null
          : availabilityType!.value,
      'backupConfiguration': ?backupConfiguration == null
          ? null
          : backupConfiguration!.toMap(),
      'collation': ?collation,
      'connectorEnforcement': ?connectorEnforcement == null
          ? null
          : connectorEnforcement!.value,
      'crashSafeReplicationEnabled': ?crashSafeReplicationEnabled,
      'dataCacheConfig': ?dataCacheConfig == null
          ? null
          : dataCacheConfig!.toMap(),
      'dataDiskSizeGb': ?dataDiskSizeGb,
      'dataDiskType': ?dataDiskType == null ? null : dataDiskType!.value,
      'databaseFlags': ?databaseFlags == null
          ? null
          : pulumi.Input.encodeList<
              DatabaseFlagsSqladminV1beta4,
              Map<String, dynamic>
            >(databaseFlags!, (value) => value.toMap()),
      'databaseReplicationEnabled': ?databaseReplicationEnabled,
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'denyMaintenancePeriods': ?denyMaintenancePeriods == null
          ? null
          : pulumi.Input.encodeList<
              DenyMaintenancePeriodSqladminV1beta4,
              Map<String, dynamic>
            >(denyMaintenancePeriods!, (value) => value.toMap()),
      'edition': ?edition == null ? null : edition!.value,
      'insightsConfig': ?insightsConfig == null
          ? null
          : insightsConfig!.toMap(),
      'ipConfiguration': ?ipConfiguration == null
          ? null
          : ipConfiguration!.toMap(),
      'kind': ?kind,
      'locationPreference': ?locationPreference == null
          ? null
          : locationPreference!.toMap(),
      'maintenanceWindow': ?maintenanceWindow == null
          ? null
          : maintenanceWindow!.toMap(),
      'passwordValidationPolicy': ?passwordValidationPolicy == null
          ? null
          : passwordValidationPolicy!.toMap(),
      'pricingPlan': ?pricingPlan == null ? null : pricingPlan!.value,
      'replicationType': ?replicationType == null
          ? null
          : replicationType!.value,
      'settingsVersion': ?settingsVersion,
      'sqlServerAuditConfig': ?sqlServerAuditConfig == null
          ? null
          : sqlServerAuditConfig!.toMap(),
      'storageAutoResize': ?storageAutoResize,
      'storageAutoResizeLimit': ?storageAutoResizeLimit,
      'tier': ?tier,
      'timeZone': ?timeZone,
      'userLabels': ?userLabels,
    };
  }

  factory SettingsSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return SettingsSqladminV1beta4(
      activationPolicy: map['activationPolicy'] == null
          ? null
          : SettingsActivationPolicySqladminV1beta4.fromValue(
              map['activationPolicy'] as String,
            ),
      activeDirectoryConfig: map['activeDirectoryConfig'] == null
          ? null
          : SqlActiveDirectoryConfigSqladminV1beta4.fromMap(
              (map['activeDirectoryConfig'] as Map).cast<String, dynamic>(),
            ),
      advancedMachineFeatures: map['advancedMachineFeatures'] == null
          ? null
          : AdvancedMachineFeaturesSqladminV1beta4.fromMap(
              (map['advancedMachineFeatures'] as Map).cast<String, dynamic>(),
            ),
      authorizedGaeApplications: map['authorizedGaeApplications'] == null
          ? null
          : (map['authorizedGaeApplications'] as List).cast<String>(),
      availabilityType: map['availabilityType'] == null
          ? null
          : SettingsAvailabilityTypeSqladminV1beta4.fromValue(
              map['availabilityType'] as String,
            ),
      backupConfiguration: map['backupConfiguration'] == null
          ? null
          : BackupConfigurationSqladminV1beta4.fromMap(
              (map['backupConfiguration'] as Map).cast<String, dynamic>(),
            ),
      collation: map['collation'] == null ? null : map['collation'] as String,
      connectorEnforcement: map['connectorEnforcement'] == null
          ? null
          : SettingsConnectorEnforcementSqladminV1beta4.fromValue(
              map['connectorEnforcement'] as String,
            ),
      crashSafeReplicationEnabled: map['crashSafeReplicationEnabled'] == null
          ? null
          : map['crashSafeReplicationEnabled'] as bool,
      dataCacheConfig: map['dataCacheConfig'] == null
          ? null
          : DataCacheConfigSqladminV1beta4.fromMap(
              (map['dataCacheConfig'] as Map).cast<String, dynamic>(),
            ),
      dataDiskSizeGb: map['dataDiskSizeGb'] == null
          ? null
          : map['dataDiskSizeGb'] as String,
      dataDiskType: map['dataDiskType'] == null
          ? null
          : SettingsDataDiskTypeSqladminV1beta4.fromValue(
              map['dataDiskType'] as String,
            ),
      databaseFlags: map['databaseFlags'] == null
          ? null
          : pulumi.Input.decodeList<DatabaseFlagsSqladminV1beta4>(
              map['databaseFlags'],
              (value) => DatabaseFlagsSqladminV1beta4.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      databaseReplicationEnabled: map['databaseReplicationEnabled'] == null
          ? null
          : map['databaseReplicationEnabled'] as bool,
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null
          ? null
          : map['deletionProtectionEnabled'] as bool,
      denyMaintenancePeriods: map['denyMaintenancePeriods'] == null
          ? null
          : pulumi.Input.decodeList<DenyMaintenancePeriodSqladminV1beta4>(
              map['denyMaintenancePeriods'],
              (value) => DenyMaintenancePeriodSqladminV1beta4.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      edition: map['edition'] == null
          ? null
          : SettingsEditionSqladminV1beta4.fromValue(map['edition'] as String),
      insightsConfig: map['insightsConfig'] == null
          ? null
          : InsightsConfigSqladminV1beta4.fromMap(
              (map['insightsConfig'] as Map).cast<String, dynamic>(),
            ),
      ipConfiguration: map['ipConfiguration'] == null
          ? null
          : IpConfigurationSqladminV1beta4.fromMap(
              (map['ipConfiguration'] as Map).cast<String, dynamic>(),
            ),
      kind: map['kind'] == null ? null : map['kind'] as String,
      locationPreference: map['locationPreference'] == null
          ? null
          : LocationPreferenceSqladminV1beta4.fromMap(
              (map['locationPreference'] as Map).cast<String, dynamic>(),
            ),
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : MaintenanceWindowSqladminV1beta4.fromMap(
              (map['maintenanceWindow'] as Map).cast<String, dynamic>(),
            ),
      passwordValidationPolicy: map['passwordValidationPolicy'] == null
          ? null
          : PasswordValidationPolicySqladminV1beta4.fromMap(
              (map['passwordValidationPolicy'] as Map).cast<String, dynamic>(),
            ),
      pricingPlan: map['pricingPlan'] == null
          ? null
          : SettingsPricingPlanSqladminV1beta4.fromValue(
              map['pricingPlan'] as String,
            ),
      replicationType: map['replicationType'] == null
          ? null
          : SettingsReplicationTypeSqladminV1beta4.fromValue(
              map['replicationType'] as String,
            ),
      settingsVersion: map['settingsVersion'] == null
          ? null
          : map['settingsVersion'] as String,
      sqlServerAuditConfig: map['sqlServerAuditConfig'] == null
          ? null
          : SqlServerAuditConfigSqladminV1beta4.fromMap(
              (map['sqlServerAuditConfig'] as Map).cast<String, dynamic>(),
            ),
      storageAutoResize: map['storageAutoResize'] == null
          ? null
          : map['storageAutoResize'] as bool,
      storageAutoResizeLimit: map['storageAutoResizeLimit'] == null
          ? null
          : map['storageAutoResizeLimit'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
      userLabels: map['userLabels'] == null
          ? null
          : (map['userLabels'] as Map).cast<String, String>(),
    );
  }
}
