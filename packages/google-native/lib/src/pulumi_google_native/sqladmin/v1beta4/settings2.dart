// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'advanced_machine_features7.dart';
import 'backup_configuration2.dart';
import 'data_cache_config3.dart';
import 'database_flags2.dart';
import 'deny_maintenance_period3.dart';
import 'insights_config2.dart';
import 'ip_configuration2.dart';
import 'location_preference2.dart';
import 'maintenance_window10.dart';
import 'password_validation_policy2.dart';
import 'settings_activation_policy2.dart';
import 'settings_availability_type2.dart';
import 'settings_connector_enforcement2.dart';
import 'settings_data_disk_type2.dart';
import 'settings_edition2.dart';
import 'settings_pricing_plan2.dart';
import 'settings_replication_type2.dart';
import 'sql_active_directory_config2.dart';
import 'sql_server_audit_config2.dart';

/// Database instance settings.
class Settings2 {
  /// The activation policy specifies when the instance is activated; it is applicable only when the instance state is RUNNABLE. Valid values: * `ALWAYS`: The instance is on, and remains so even in the absence of connection requests. * `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  final SettingsActivationPolicy2? activationPolicy;

  /// Active Directory configuration, relevant only for Cloud SQL for SQL Server.
  final SqlActiveDirectoryConfig2? activeDirectoryConfig;

  /// Specifies advance machine configuration for the instance relevant only for SQL Server.
  final AdvancedMachineFeatures7? advancedMachineFeatures;

  /// The App Engine app IDs that can access this instance. (Deprecated) Applied to First Generation instances only.
  final List<String>? authorizedGaeApplications;

  /// Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data accessibility. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available)./ For more information, see [Overview of the High Availability Configuration](https://cloud.google.com/sql/docs/mysql/high-availability).
  final SettingsAvailabilityType2? availabilityType;

  /// The daily backup configuration for the instance.
  final BackupConfiguration2? backupConfiguration;

  /// The name of server Instance collation.
  final String? collation;

  /// Specifies if connections must use Cloud SQL connectors. Option values include the following: `NOT_REQUIRED` (Cloud SQL instances can be connected without Cloud SQL Connectors) and `REQUIRED` (Only allow connections that use Cloud SQL Connectors) Note that using REQUIRED disables all existing authorized networks. If this field is not specified when creating a new instance, NOT_REQUIRED is used. If this field is not specified when patching or updating an existing instance, it is left unchanged in the instance.
  final SettingsConnectorEnforcement2? connectorEnforcement;

  /// Configuration specific to read replica instances. Indicates whether database flags for crash-safe replication are enabled. This property was only applicable to First Generation instances.
  final bool? crashSafeReplicationEnabled;

  /// Configuration for data cache.
  final DataCacheConfig3? dataCacheConfig;

  /// The size of data disk, in GB. The data disk size minimum is 10GB.
  final String? dataDiskSizeGb;

  /// The type of data disk: `PD_SSD` (default) or `PD_HDD`. Not used for First Generation instances.
  final SettingsDataDiskType2? dataDiskType;

  /// The database flags passed to the instance at startup.
  final List<DatabaseFlags2>? databaseFlags;

  /// Configuration specific to read replica instances. Indicates whether replication is enabled or not. WARNING: Changing this restarts the instance.
  final bool? databaseReplicationEnabled;

  /// Configuration to protect against accidental instance deletion.
  final bool? deletionProtectionEnabled;

  /// Deny maintenance periods
  final List<DenyMaintenancePeriod3>? denyMaintenancePeriods;

  /// Optional. The edition of the instance.
  final SettingsEdition2? edition;

  /// Insights configuration, for now relevant only for Postgres.
  final InsightsConfig2? insightsConfig;

  /// The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled for Second Generation instances.
  final IpConfiguration2? ipConfiguration;

  /// This is always `sql#settings`.
  final String? kind;

  /// The location preference settings. This allows the instance to be located as near as possible to either an App Engine app or Compute Engine zone for better performance. App Engine co-location was only applicable to First Generation instances.
  final LocationPreference2? locationPreference;

  /// The maintenance window for this instance. This specifies when the instance can be restarted for maintenance purposes.
  final MaintenanceWindow10? maintenanceWindow;

  /// The local user password validation policy of the instance.
  final PasswordValidationPolicy2? passwordValidationPolicy;

  /// The pricing plan for this instance. This can be either `PER_USE` or `PACKAGE`. Only `PER_USE` is supported for Second Generation instances.
  final SettingsPricingPlan2? pricingPlan;

  /// The type of replication this instance uses. This can be either `ASYNCHRONOUS` or `SYNCHRONOUS`. (Deprecated) This property was only applicable to First Generation instances.
  final SettingsReplicationType2? replicationType;

  /// The version of instance settings. This is a required field for update method to make sure concurrent updates are handled properly. During update, use the most recent settingsVersion value for this instance and do not try to update this value.
  final String? settingsVersion;

  /// SQL Server specific audit configuration.
  final SqlServerAuditConfig2? sqlServerAuditConfig;

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

  Settings2({
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
    final map = <String, dynamic>{};
    final activationPolicyValue = activationPolicy;
    if (activationPolicyValue != null) {
      map['activationPolicy'] = activationPolicyValue.value;
    }
    final activeDirectoryConfigValue = activeDirectoryConfig;
    if (activeDirectoryConfigValue != null) {
      map['activeDirectoryConfig'] = activeDirectoryConfigValue.toMap();
    }
    final advancedMachineFeaturesValue = advancedMachineFeatures;
    if (advancedMachineFeaturesValue != null) {
      map['advancedMachineFeatures'] = advancedMachineFeaturesValue.toMap();
    }
    final authorizedGaeApplicationsValue = authorizedGaeApplications;
    if (authorizedGaeApplicationsValue != null) {
      map['authorizedGaeApplications'] = authorizedGaeApplicationsValue;
    }
    final availabilityTypeValue = availabilityType;
    if (availabilityTypeValue != null) {
      map['availabilityType'] = availabilityTypeValue.value;
    }
    final backupConfigurationValue = backupConfiguration;
    if (backupConfigurationValue != null) {
      map['backupConfiguration'] = backupConfigurationValue.toMap();
    }
    final collationValue = collation;
    if (collationValue != null) {
      map['collation'] = collationValue;
    }
    final connectorEnforcementValue = connectorEnforcement;
    if (connectorEnforcementValue != null) {
      map['connectorEnforcement'] = connectorEnforcementValue.value;
    }
    final crashSafeReplicationEnabledValue = crashSafeReplicationEnabled;
    if (crashSafeReplicationEnabledValue != null) {
      map['crashSafeReplicationEnabled'] = crashSafeReplicationEnabledValue;
    }
    final dataCacheConfigValue = dataCacheConfig;
    if (dataCacheConfigValue != null) {
      map['dataCacheConfig'] = dataCacheConfigValue.toMap();
    }
    final dataDiskSizeGbValue = dataDiskSizeGb;
    if (dataDiskSizeGbValue != null) {
      map['dataDiskSizeGb'] = dataDiskSizeGbValue;
    }
    final dataDiskTypeValue = dataDiskType;
    if (dataDiskTypeValue != null) {
      map['dataDiskType'] = dataDiskTypeValue.value;
    }
    final databaseFlagsValue = databaseFlags;
    if (databaseFlagsValue != null) {
      map['databaseFlags'] =
          Input.encodeList<DatabaseFlags2, Map<String, dynamic>>(
              databaseFlagsValue, (value) => value.toMap());
    }
    final databaseReplicationEnabledValue = databaseReplicationEnabled;
    if (databaseReplicationEnabledValue != null) {
      map['databaseReplicationEnabled'] = databaseReplicationEnabledValue;
    }
    final deletionProtectionEnabledValue = deletionProtectionEnabled;
    if (deletionProtectionEnabledValue != null) {
      map['deletionProtectionEnabled'] = deletionProtectionEnabledValue;
    }
    final denyMaintenancePeriodsValue = denyMaintenancePeriods;
    if (denyMaintenancePeriodsValue != null) {
      map['denyMaintenancePeriods'] =
          Input.encodeList<DenyMaintenancePeriod3, Map<String, dynamic>>(
              denyMaintenancePeriodsValue, (value) => value.toMap());
    }
    final editionValue = edition;
    if (editionValue != null) {
      map['edition'] = editionValue.value;
    }
    final insightsConfigValue = insightsConfig;
    if (insightsConfigValue != null) {
      map['insightsConfig'] = insightsConfigValue.toMap();
    }
    final ipConfigurationValue = ipConfiguration;
    if (ipConfigurationValue != null) {
      map['ipConfiguration'] = ipConfigurationValue.toMap();
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    final locationPreferenceValue = locationPreference;
    if (locationPreferenceValue != null) {
      map['locationPreference'] = locationPreferenceValue.toMap();
    }
    final maintenanceWindowValue = maintenanceWindow;
    if (maintenanceWindowValue != null) {
      map['maintenanceWindow'] = maintenanceWindowValue.toMap();
    }
    final passwordValidationPolicyValue = passwordValidationPolicy;
    if (passwordValidationPolicyValue != null) {
      map['passwordValidationPolicy'] = passwordValidationPolicyValue.toMap();
    }
    final pricingPlanValue = pricingPlan;
    if (pricingPlanValue != null) {
      map['pricingPlan'] = pricingPlanValue.value;
    }
    final replicationTypeValue = replicationType;
    if (replicationTypeValue != null) {
      map['replicationType'] = replicationTypeValue.value;
    }
    final settingsVersionValue = settingsVersion;
    if (settingsVersionValue != null) {
      map['settingsVersion'] = settingsVersionValue;
    }
    final sqlServerAuditConfigValue = sqlServerAuditConfig;
    if (sqlServerAuditConfigValue != null) {
      map['sqlServerAuditConfig'] = sqlServerAuditConfigValue.toMap();
    }
    final storageAutoResizeValue = storageAutoResize;
    if (storageAutoResizeValue != null) {
      map['storageAutoResize'] = storageAutoResizeValue;
    }
    final storageAutoResizeLimitValue = storageAutoResizeLimit;
    if (storageAutoResizeLimitValue != null) {
      map['storageAutoResizeLimit'] = storageAutoResizeLimitValue;
    }
    final tierValue = tier;
    if (tierValue != null) {
      map['tier'] = tierValue;
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    final userLabelsValue = userLabels;
    if (userLabelsValue != null) {
      map['userLabels'] = userLabelsValue;
    }
    return map;
  }

  factory Settings2.fromMap(Map<String, dynamic> map) {
    return Settings2(
      activationPolicy: map['activationPolicy'] == null
          ? null
          : SettingsActivationPolicy2.fromValue(
              map['activationPolicy'] as String),
      activeDirectoryConfig: map['activeDirectoryConfig'] == null
          ? null
          : SqlActiveDirectoryConfig2.fromMap(
              (map['activeDirectoryConfig'] as Map).cast<String, dynamic>()),
      advancedMachineFeatures: map['advancedMachineFeatures'] == null
          ? null
          : AdvancedMachineFeatures7.fromMap(
              (map['advancedMachineFeatures'] as Map).cast<String, dynamic>()),
      authorizedGaeApplications: map['authorizedGaeApplications'] == null
          ? null
          : (map['authorizedGaeApplications'] as List).cast<String>(),
      availabilityType: map['availabilityType'] == null
          ? null
          : SettingsAvailabilityType2.fromValue(
              map['availabilityType'] as String),
      backupConfiguration: map['backupConfiguration'] == null
          ? null
          : BackupConfiguration2.fromMap(
              (map['backupConfiguration'] as Map).cast<String, dynamic>()),
      collation: map['collation'] == null ? null : map['collation'] as String,
      connectorEnforcement: map['connectorEnforcement'] == null
          ? null
          : SettingsConnectorEnforcement2.fromValue(
              map['connectorEnforcement'] as String),
      crashSafeReplicationEnabled: map['crashSafeReplicationEnabled'] == null
          ? null
          : map['crashSafeReplicationEnabled'] as bool,
      dataCacheConfig: map['dataCacheConfig'] == null
          ? null
          : DataCacheConfig3.fromMap(
              (map['dataCacheConfig'] as Map).cast<String, dynamic>()),
      dataDiskSizeGb: map['dataDiskSizeGb'] == null
          ? null
          : map['dataDiskSizeGb'] as String,
      dataDiskType: map['dataDiskType'] == null
          ? null
          : SettingsDataDiskType2.fromValue(map['dataDiskType'] as String),
      databaseFlags: map['databaseFlags'] == null
          ? null
          : Input.decodeList<DatabaseFlags2>(
              map['databaseFlags'],
              (value) => DatabaseFlags2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      databaseReplicationEnabled: map['databaseReplicationEnabled'] == null
          ? null
          : map['databaseReplicationEnabled'] as bool,
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null
          ? null
          : map['deletionProtectionEnabled'] as bool,
      denyMaintenancePeriods: map['denyMaintenancePeriods'] == null
          ? null
          : Input.decodeList<DenyMaintenancePeriod3>(
              map['denyMaintenancePeriods'],
              (value) => DenyMaintenancePeriod3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      edition: map['edition'] == null
          ? null
          : SettingsEdition2.fromValue(map['edition'] as String),
      insightsConfig: map['insightsConfig'] == null
          ? null
          : InsightsConfig2.fromMap(
              (map['insightsConfig'] as Map).cast<String, dynamic>()),
      ipConfiguration: map['ipConfiguration'] == null
          ? null
          : IpConfiguration2.fromMap(
              (map['ipConfiguration'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      locationPreference: map['locationPreference'] == null
          ? null
          : LocationPreference2.fromMap(
              (map['locationPreference'] as Map).cast<String, dynamic>()),
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : MaintenanceWindow10.fromMap(
              (map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      passwordValidationPolicy: map['passwordValidationPolicy'] == null
          ? null
          : PasswordValidationPolicy2.fromMap(
              (map['passwordValidationPolicy'] as Map).cast<String, dynamic>()),
      pricingPlan: map['pricingPlan'] == null
          ? null
          : SettingsPricingPlan2.fromValue(map['pricingPlan'] as String),
      replicationType: map['replicationType'] == null
          ? null
          : SettingsReplicationType2.fromValue(
              map['replicationType'] as String),
      settingsVersion: map['settingsVersion'] == null
          ? null
          : map['settingsVersion'] as String,
      sqlServerAuditConfig: map['sqlServerAuditConfig'] == null
          ? null
          : SqlServerAuditConfig2.fromMap(
              (map['sqlServerAuditConfig'] as Map).cast<String, dynamic>()),
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
