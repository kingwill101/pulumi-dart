// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_instance_settings_active_directory_config.dart';
import 'database_instance_settings_advanced_machine_features.dart';
import 'database_instance_settings_backup_configuration.dart';
import 'database_instance_settings_connection_pool_config.dart';
import 'database_instance_settings_data_cache_config.dart';
import 'database_instance_settings_database_flag.dart';
import 'database_instance_settings_deny_maintenance_period.dart';
import 'database_instance_settings_final_backup_config.dart';
import 'database_instance_settings_insights_config.dart';
import 'database_instance_settings_ip_configuration.dart';
import 'database_instance_settings_location_preference.dart';
import 'database_instance_settings_maintenance_window.dart';
import 'database_instance_settings_password_validation_policy.dart';
import 'database_instance_settings_read_pool_auto_scale_config.dart';
import 'database_instance_settings_sql_server_audit_config.dart';

class DatabaseInstanceSettings {
  /// This specifies when the instance should be
  /// active. Can be either `ALWAYS`, `NEVER` or `ON_DEMAND`.
  final String? activationPolicy;
  final DatabaseInstanceSettingsActiveDirectoryConfig? activeDirectoryConfig;
  final DatabaseInstanceSettingsAdvancedMachineFeatures?
  advancedMachineFeatures;

  /// The availability type of the Cloud SQL
  /// instance, high availability (`REGIONAL`) or single zone (`ZONAL`). For all instances, ensure that
  /// `settings.backup_configuration.enabled` is set to `true`.
  /// For MySQL instances, ensure that `settings.backup_configuration.binary_log_enabled` is set to `true`.
  /// For Postgres and SQL Server instances, ensure that `settings.backup_configuration.point_in_time_recovery_enabled`
  /// is set to `true`. Defaults to `ZONAL`.
  /// For read pool instances, this field is read-only. The availability type is changed by specifying
  /// the number of nodes (`node_count`).
  final String? availabilityType;
  final DatabaseInstanceSettingsBackupConfiguration? backupConfiguration;

  /// The name of server instance collation.
  final String? collation;

  /// The managed connection pool setting for a Cloud SQL instance.
  final List<DatabaseInstanceSettingsConnectionPoolConfig>?
  connectionPoolConfigs;

  /// Control the enforcement of Cloud SQL Auth Proxy or Cloud SQL connectors for all the connections, can be `REQUIRED` or `NOT_REQUIRED`. If enabled, all the direct connections are rejected.
  final String? connectorEnforcement;

  /// Data cache configurations.
  final DatabaseInstanceSettingsDataCacheConfig? dataCacheConfig;

  /// Provisioned number of I/O operations per second for the data disk. This field is only used for `HYPERDISK_BALANCED` disk types.
  final int? dataDiskProvisionedIops;

  /// Provisioned throughput measured in MiB per second for the data disk. This field is only used for `HYPERDISK_BALANCED` disk types.
  final int? dataDiskProvisionedThroughput;
  final List<DatabaseInstanceSettingsDatabaseFlag>? databaseFlags;

  /// Configuration to protect against accidental instance deletion.
  final bool? deletionProtectionEnabled;
  final DatabaseInstanceSettingsDenyMaintenancePeriod? denyMaintenancePeriod;

  /// Enables auto-resizing of the storage size. Defaults to `true`. Note that if `disk_size` is set, future `pulumi up` calls will attempt to delete the instance in order to resize the disk to the value specified in disk_size if it has been resized. To avoid this, ensure that `lifecycle.ignore_changes` is applied to `disk_size`.
  final bool? diskAutoresize;

  /// The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  final int? diskAutoresizeLimit;

  /// The size of data disk, in GB. Size of a running instance cannot be reduced but can be increased. The minimum value is 10GB for `PD_SSD`, `PD_HDD` and 20GB for `HYPERDISK_BALANCED`. Note that this value will override the resizing from `disk_autoresize` if that feature is enabled. To avoid this, set `lifecycle.ignore_changes` on this field.
  final int? diskSize;

  /// The type of data disk: `PD_SSD`, `PD_HDD`, or `HYPERDISK_BALANCED`. Defaults to `PD_SSD`. `HYPERDISK_BALANCED` is preview.
  final String? diskType;

  /// The edition of the instance, can be `ENTERPRISE` or `ENTERPRISE_PLUS`.
  final String? edition;

  /// (Computed) The availability type of
  /// the Cloud SQL instance, high availability (REGIONAL) or single zone
  /// (ZONAL). This field always contains the value that is reported by the API (for
  /// read pools, `settings.0.effective_availability_type` may differ from
  /// `settings.0.availability_type`).
  final String? effectiveAvailabilityType;

  /// Enables [Cloud SQL instance integration with Dataplex](https://cloud.google.com/sql/docs/mysql/dataplex-catalog-integration). MySQL, Postgres and SQL Server instances are supported for this feature. Defaults to `false`.
  final bool? enableDataplexIntegration;

  /// Enables [Cloud SQL instances to connect to Vertex AI](https://cloud.google.com/sql/docs/postgres/integrate-cloud-sql-with-vertex-ai) and pass requests for real-time predictions and insights. Defaults to `false`.
  final bool? enableGoogleMlIntegration;

  /// Config used to determine the final backup settings for the instance
  final DatabaseInstanceSettingsFinalBackupConfig? finalBackupConfig;

  /// Configuration of Query Insights.
  final DatabaseInstanceSettingsInsightsConfig? insightsConfig;
  final DatabaseInstanceSettingsIpConfiguration? ipConfiguration;
  final DatabaseInstanceSettingsLocationPreference? locationPreference;

  /// Declares a one-hour maintenance window when an Instance can automatically restart to apply updates. The maintenance window is specified in UTC time.
  final DatabaseInstanceSettingsMaintenanceWindow? maintenanceWindow;
  final DatabaseInstanceSettingsPasswordValidationPolicy?
  passwordValidationPolicy;

  /// Pricing plan for this instance, can only be `PER_USE`.
  final String? pricingPlan;

  /// Configuration of Read Pool Auto Scale.
  final DatabaseInstanceSettingsReadPoolAutoScaleConfig?
  readPoolAutoScaleConfig;

  /// When this parameter is set to true, Cloud SQL retains backups of the instance even after the instance is deleted. The `ON_DEMAND` backup will be retained until customer deletes the backup or the project. The `AUTOMATED` backup will be retained based on the backups retention setting.
  final bool? retainBackupsOnDelete;
  final DatabaseInstanceSettingsSqlServerAuditConfig? sqlServerAuditConfig;

  /// The machine type to use. See [tiers](https://cloud.google.com/sql/docs/admin-api/v1beta4/tiers)
  /// for more details and supported versions. Postgres supports only shared-core machine types,
  /// and custom machine types such as `db-custom-2-13312`. See the [Custom Machine Type Documentation](https://cloud.google.com/compute/docs/instances/creating-instance-with-custom-machine-type#create) to learn about specifying custom machine types.
  final String tier;

  /// The time_zone to be used by the database engine (supported only for SQL Server), in SQL Server timezone format.
  final String? timeZone;

  /// A set of key/value user label pairs to assign to the instance.
  final Map<String, String>? userLabels;

  /// Used to make sure changes to the `settings` block are
  /// atomic.
  final int? version;

  /// Creates a new [DatabaseInstanceSettings].
  /// [activationPolicy] This specifies when the instance should be
  /// [activeDirectoryConfig] Optional.
  /// [advancedMachineFeatures] Optional.
  /// [availabilityType] The availability type of the Cloud SQL
  /// [backupConfiguration] Optional.
  /// [collation] The name of server instance collation.
  /// [connectionPoolConfigs] The managed connection pool setting for a Cloud SQL instance.
  /// [connectorEnforcement] Control the enforcement of Cloud SQL Auth Proxy or Cloud SQL connectors for all the connections, can be `REQUIRED` or `NOT_REQUIRED`. If enabled, all the direct connections are rejected.
  /// [dataCacheConfig] Data cache configurations.
  /// [dataDiskProvisionedIops] Provisioned number of I/O operations per second for the data disk. This field is only used for `HYPERDISK_BALANCED` disk types.
  /// [dataDiskProvisionedThroughput] Provisioned throughput measured in MiB per second for the data disk. This field is only used for `HYPERDISK_BALANCED` disk types.
  /// [databaseFlags] Optional.
  /// [deletionProtectionEnabled] Configuration to protect against accidental instance deletion.
  /// [denyMaintenancePeriod] Optional.
  /// [diskAutoresize] Enables auto-resizing of the storage size. Defaults to `true`. Note that if `disk_size` is set, future `pulumi up` calls will attempt to delete the instance in order to resize the disk to the value specified in disk_size if it has been resized. To avoid this, ensure that `lifecycle.ignore_changes` is applied to `disk_size`.
  /// [diskAutoresizeLimit] The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  /// [diskSize] The size of data disk, in GB. Size of a running instance cannot be reduced but can be increased. The minimum value is 10GB for `PD_SSD`, `PD_HDD` and 20GB for `HYPERDISK_BALANCED`. Note that this value will override the resizing from `disk_autoresize` if that feature is enabled. To avoid this, set `lifecycle.ignore_changes` on this field.
  /// [diskType] The type of data disk: `PD_SSD`, `PD_HDD`, or `HYPERDISK_BALANCED`. Defaults to `PD_SSD`. `HYPERDISK_BALANCED` is preview.
  /// [edition] The edition of the instance, can be `ENTERPRISE` or `ENTERPRISE_PLUS`.
  /// [effectiveAvailabilityType] (Computed) The availability type of
  /// [enableDataplexIntegration] Enables [Cloud SQL instance integration with Dataplex](https://cloud.google.com/sql/docs/mysql/dataplex-catalog-integration). MySQL, Postgres and SQL Server instances are supported for this feature. Defaults to `false`.
  /// [enableGoogleMlIntegration] Enables [Cloud SQL instances to connect to Vertex AI](https://cloud.google.com/sql/docs/postgres/integrate-cloud-sql-with-vertex-ai) and pass requests for real-time predictions and insights. Defaults to `false`.
  /// [finalBackupConfig] Config used to determine the final backup settings for the instance
  /// [insightsConfig] Configuration of Query Insights.
  /// [ipConfiguration] Optional.
  /// [locationPreference] Optional.
  /// [maintenanceWindow] Declares a one-hour maintenance window when an Instance can automatically restart to apply updates. The maintenance window is specified in UTC time.
  /// [passwordValidationPolicy] Optional.
  /// [pricingPlan] Pricing plan for this instance, can only be `PER_USE`.
  /// [readPoolAutoScaleConfig] Configuration of Read Pool Auto Scale.
  /// [retainBackupsOnDelete] When this parameter is set to true, Cloud SQL retains backups of the instance even after the instance is deleted. The `ON_DEMAND` backup will be retained until customer deletes the backup or the project. The `AUTOMATED` backup will be retained based on the backups retention setting.
  /// [sqlServerAuditConfig] Optional.
  /// [tier] The machine type to use. See [tiers](https://cloud.google.com/sql/docs/admin-api/v1beta4/tiers)
  /// [timeZone] The time_zone to be used by the database engine (supported only for SQL Server), in SQL Server timezone format.
  /// [userLabels] A set of key/value user label pairs to assign to the instance.
  /// [version] Used to make sure changes to the `settings` block are
  DatabaseInstanceSettings({
    this.activationPolicy,
    this.activeDirectoryConfig,
    this.advancedMachineFeatures,
    this.availabilityType,
    this.backupConfiguration,
    this.collation,
    this.connectionPoolConfigs,
    this.connectorEnforcement,
    this.dataCacheConfig,
    this.dataDiskProvisionedIops,
    this.dataDiskProvisionedThroughput,
    this.databaseFlags,
    this.deletionProtectionEnabled,
    this.denyMaintenancePeriod,
    this.diskAutoresize,
    this.diskAutoresizeLimit,
    this.diskSize,
    this.diskType,
    this.edition,
    this.effectiveAvailabilityType,
    this.enableDataplexIntegration,
    this.enableGoogleMlIntegration,
    this.finalBackupConfig,
    this.insightsConfig,
    this.ipConfiguration,
    this.locationPreference,
    this.maintenanceWindow,
    this.passwordValidationPolicy,
    this.pricingPlan,
    this.readPoolAutoScaleConfig,
    this.retainBackupsOnDelete,
    this.sqlServerAuditConfig,
    required this.tier,
    this.timeZone,
    this.userLabels,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationPolicy': ?activationPolicy,
      'activeDirectoryConfig': ?activeDirectoryConfig == null
          ? null
          : activeDirectoryConfig!.toMap(),
      'advancedMachineFeatures': ?advancedMachineFeatures == null
          ? null
          : advancedMachineFeatures!.toMap(),
      'availabilityType': ?availabilityType,
      'backupConfiguration': ?backupConfiguration == null
          ? null
          : backupConfiguration!.toMap(),
      'collation': ?collation,
      'connectionPoolConfigs': ?connectionPoolConfigs == null
          ? null
          : pulumi.Input.encodeList<
              DatabaseInstanceSettingsConnectionPoolConfig,
              Map<String, dynamic>
            >(connectionPoolConfigs!, (value) => value.toMap()),
      'connectorEnforcement': ?connectorEnforcement,
      'dataCacheConfig': ?dataCacheConfig == null
          ? null
          : dataCacheConfig!.toMap(),
      'dataDiskProvisionedIops': ?dataDiskProvisionedIops,
      'dataDiskProvisionedThroughput': ?dataDiskProvisionedThroughput,
      'databaseFlags': ?databaseFlags == null
          ? null
          : pulumi.Input.encodeList<
              DatabaseInstanceSettingsDatabaseFlag,
              Map<String, dynamic>
            >(databaseFlags!, (value) => value.toMap()),
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'denyMaintenancePeriod': ?denyMaintenancePeriod == null
          ? null
          : denyMaintenancePeriod!.toMap(),
      'diskAutoresize': ?diskAutoresize,
      'diskAutoresizeLimit': ?diskAutoresizeLimit,
      'diskSize': ?diskSize,
      'diskType': ?diskType,
      'edition': ?edition,
      'effectiveAvailabilityType': ?effectiveAvailabilityType,
      'enableDataplexIntegration': ?enableDataplexIntegration,
      'enableGoogleMlIntegration': ?enableGoogleMlIntegration,
      'finalBackupConfig': ?finalBackupConfig == null
          ? null
          : finalBackupConfig!.toMap(),
      'insightsConfig': ?insightsConfig == null
          ? null
          : insightsConfig!.toMap(),
      'ipConfiguration': ?ipConfiguration == null
          ? null
          : ipConfiguration!.toMap(),
      'locationPreference': ?locationPreference == null
          ? null
          : locationPreference!.toMap(),
      'maintenanceWindow': ?maintenanceWindow == null
          ? null
          : maintenanceWindow!.toMap(),
      'passwordValidationPolicy': ?passwordValidationPolicy == null
          ? null
          : passwordValidationPolicy!.toMap(),
      'pricingPlan': ?pricingPlan,
      'readPoolAutoScaleConfig': ?readPoolAutoScaleConfig == null
          ? null
          : readPoolAutoScaleConfig!.toMap(),
      'retainBackupsOnDelete': ?retainBackupsOnDelete,
      'sqlServerAuditConfig': ?sqlServerAuditConfig == null
          ? null
          : sqlServerAuditConfig!.toMap(),
      'tier': tier,
      'timeZone': ?timeZone,
      'userLabels': ?userLabels,
      'version': ?version,
    };
  }

  factory DatabaseInstanceSettings.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettings(
      activationPolicy: map['activationPolicy'] == null
          ? null
          : map['activationPolicy'] as String,
      activeDirectoryConfig: map['activeDirectoryConfig'] == null
          ? null
          : DatabaseInstanceSettingsActiveDirectoryConfig.fromMap(
              (map['activeDirectoryConfig'] as Map).cast<String, dynamic>(),
            ),
      advancedMachineFeatures: map['advancedMachineFeatures'] == null
          ? null
          : DatabaseInstanceSettingsAdvancedMachineFeatures.fromMap(
              (map['advancedMachineFeatures'] as Map).cast<String, dynamic>(),
            ),
      availabilityType: map['availabilityType'] == null
          ? null
          : map['availabilityType'] as String,
      backupConfiguration: map['backupConfiguration'] == null
          ? null
          : DatabaseInstanceSettingsBackupConfiguration.fromMap(
              (map['backupConfiguration'] as Map).cast<String, dynamic>(),
            ),
      collation: map['collation'] == null ? null : map['collation'] as String,
      connectionPoolConfigs: map['connectionPoolConfigs'] == null
          ? null
          : pulumi
                .Input.decodeList<DatabaseInstanceSettingsConnectionPoolConfig>(
              map['connectionPoolConfigs'],
              (value) => DatabaseInstanceSettingsConnectionPoolConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      connectorEnforcement: map['connectorEnforcement'] == null
          ? null
          : map['connectorEnforcement'] as String,
      dataCacheConfig: map['dataCacheConfig'] == null
          ? null
          : DatabaseInstanceSettingsDataCacheConfig.fromMap(
              (map['dataCacheConfig'] as Map).cast<String, dynamic>(),
            ),
      dataDiskProvisionedIops: map['dataDiskProvisionedIops'] == null
          ? null
          : map['dataDiskProvisionedIops'] as int,
      dataDiskProvisionedThroughput:
          map['dataDiskProvisionedThroughput'] == null
          ? null
          : map['dataDiskProvisionedThroughput'] as int,
      databaseFlags: map['databaseFlags'] == null
          ? null
          : pulumi.Input.decodeList<DatabaseInstanceSettingsDatabaseFlag>(
              map['databaseFlags'],
              (value) => DatabaseInstanceSettingsDatabaseFlag.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      deletionProtectionEnabled: map['deletionProtectionEnabled'] == null
          ? null
          : map['deletionProtectionEnabled'] as bool,
      denyMaintenancePeriod: map['denyMaintenancePeriod'] == null
          ? null
          : DatabaseInstanceSettingsDenyMaintenancePeriod.fromMap(
              (map['denyMaintenancePeriod'] as Map).cast<String, dynamic>(),
            ),
      diskAutoresize: map['diskAutoresize'] == null
          ? null
          : map['diskAutoresize'] as bool,
      diskAutoresizeLimit: map['diskAutoresizeLimit'] == null
          ? null
          : map['diskAutoresizeLimit'] as int,
      diskSize: map['diskSize'] == null ? null : map['diskSize'] as int,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      edition: map['edition'] == null ? null : map['edition'] as String,
      effectiveAvailabilityType: map['effectiveAvailabilityType'] == null
          ? null
          : map['effectiveAvailabilityType'] as String,
      enableDataplexIntegration: map['enableDataplexIntegration'] == null
          ? null
          : map['enableDataplexIntegration'] as bool,
      enableGoogleMlIntegration: map['enableGoogleMlIntegration'] == null
          ? null
          : map['enableGoogleMlIntegration'] as bool,
      finalBackupConfig: map['finalBackupConfig'] == null
          ? null
          : DatabaseInstanceSettingsFinalBackupConfig.fromMap(
              (map['finalBackupConfig'] as Map).cast<String, dynamic>(),
            ),
      insightsConfig: map['insightsConfig'] == null
          ? null
          : DatabaseInstanceSettingsInsightsConfig.fromMap(
              (map['insightsConfig'] as Map).cast<String, dynamic>(),
            ),
      ipConfiguration: map['ipConfiguration'] == null
          ? null
          : DatabaseInstanceSettingsIpConfiguration.fromMap(
              (map['ipConfiguration'] as Map).cast<String, dynamic>(),
            ),
      locationPreference: map['locationPreference'] == null
          ? null
          : DatabaseInstanceSettingsLocationPreference.fromMap(
              (map['locationPreference'] as Map).cast<String, dynamic>(),
            ),
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : DatabaseInstanceSettingsMaintenanceWindow.fromMap(
              (map['maintenanceWindow'] as Map).cast<String, dynamic>(),
            ),
      passwordValidationPolicy: map['passwordValidationPolicy'] == null
          ? null
          : DatabaseInstanceSettingsPasswordValidationPolicy.fromMap(
              (map['passwordValidationPolicy'] as Map).cast<String, dynamic>(),
            ),
      pricingPlan: map['pricingPlan'] == null
          ? null
          : map['pricingPlan'] as String,
      readPoolAutoScaleConfig: map['readPoolAutoScaleConfig'] == null
          ? null
          : DatabaseInstanceSettingsReadPoolAutoScaleConfig.fromMap(
              (map['readPoolAutoScaleConfig'] as Map).cast<String, dynamic>(),
            ),
      retainBackupsOnDelete: map['retainBackupsOnDelete'] == null
          ? null
          : map['retainBackupsOnDelete'] as bool,
      sqlServerAuditConfig: map['sqlServerAuditConfig'] == null
          ? null
          : DatabaseInstanceSettingsSqlServerAuditConfig.fromMap(
              (map['sqlServerAuditConfig'] as Map).cast<String, dynamic>(),
            ),
      tier: map['tier'] as String,
      timeZone: map['timeZone'] == null ? null : map['timeZone'] as String,
      userLabels: map['userLabels'] == null
          ? null
          : (map['userLabels'] as Map).cast<String, String>(),
      version: map['version'] == null ? null : map['version'] as int,
    );
  }
}
