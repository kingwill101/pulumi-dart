// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_sql_settings_activation_policy_datamigration_v1beta1.dart';
import 'cloud_sql_settings_data_disk_type_datamigration_v1beta1.dart';
import 'cloud_sql_settings_database_version_datamigration_v1beta1.dart';
import 'sql_ip_config_datamigration_v1beta1.dart';

/// Settings for creating a Cloud SQL database instance.
class CloudSqlSettingsDatamigrationV1beta1 {
  /// The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'. Valid values: 'ALWAYS': The instance is on, and remains so even in the absence of connection requests. `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  final CloudSqlSettingsActivationPolicyDatamigrationV1beta1? activationPolicy;

  /// [default: ON] If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity. If the available storage repeatedly falls below the threshold size, Cloud SQL continues to add storage until it reaches the maximum of 30 TB.
  final bool? autoStorageIncrease;

  /// The storage capacity available to the database, in GB. The minimum (and default) size is 10GB.
  final String? dataDiskSizeGb;

  /// The type of storage: `PD_SSD` (default) or `PD_HDD`.
  final CloudSqlSettingsDataDiskTypeDatamigrationV1beta1? dataDiskType;

  /// The database flags passed to the Cloud SQL instance at startup. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final Map<String, String>? databaseFlags;

  /// The database engine type and version.
  final CloudSqlSettingsDatabaseVersionDatamigrationV1beta1? databaseVersion;

  /// The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled.
  final SqlIpConfigDatamigrationV1beta1? ipConfig;

  /// Input only. Initial root password.
  final String? rootPassword;

  /// The Database Migration Service source connection profile ID, in the format: `projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID`
  final String? sourceId;

  /// The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  final String? storageAutoResizeLimit;

  /// The tier (or machine type) for this instance, for example: `db-n1-standard-1` (MySQL instances). For more information, see [Cloud SQL Instance Settings](https://cloud.google.com/sql/docs/mysql/instance-settings).
  final String? tier;

  /// The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "18kg", "count": "3" }`.
  final Map<String, String>? userLabels;

  /// The Google Cloud Platform zone where your Cloud SQL database instance is located.
  final String? zone;

  /// Creates a new [CloudSqlSettingsDatamigrationV1beta1].
  /// [activationPolicy] The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'. Valid values: 'ALWAYS': The instance is on, and remains so even in the absence of connection requests. `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  /// [autoStorageIncrease] [default: ON] If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity. If the available storage repeatedly falls below the threshold size, Cloud SQL continues to add storage until it reaches the maximum of 30 TB.
  /// [dataDiskSizeGb] The storage capacity available to the database, in GB. The minimum (and default) size is 10GB.
  /// [dataDiskType] The type of storage: `PD_SSD` (default) or `PD_HDD`.
  /// [databaseFlags] The database flags passed to the Cloud SQL instance at startup. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// [databaseVersion] The database engine type and version.
  /// [ipConfig] The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled.
  /// [rootPassword] Input only. Initial root password.
  /// [sourceId] The Database Migration Service source connection profile ID, in the format: `projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID`
  /// [storageAutoResizeLimit] The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  /// [tier] The tier (or machine type) for this instance, for example: `db-n1-standard-1` (MySQL instances). For more information, see [Cloud SQL Instance Settings](https://cloud.google.com/sql/docs/mysql/instance-settings).
  /// [userLabels] The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "18kg", "count": "3" }`.
  /// [zone] The Google Cloud Platform zone where your Cloud SQL database instance is located.
  CloudSqlSettingsDatamigrationV1beta1({
    this.activationPolicy,
    this.autoStorageIncrease,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.databaseFlags,
    this.databaseVersion,
    this.ipConfig,
    this.rootPassword,
    this.sourceId,
    this.storageAutoResizeLimit,
    this.tier,
    this.userLabels,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activationPolicyValue = activationPolicy;
    if (activationPolicyValue != null) {
      map['activationPolicy'] = activationPolicyValue.value;
    }
    final autoStorageIncreaseValue = autoStorageIncrease;
    if (autoStorageIncreaseValue != null) {
      map['autoStorageIncrease'] = autoStorageIncreaseValue;
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
      map['databaseFlags'] = databaseFlagsValue;
    }
    final databaseVersionValue = databaseVersion;
    if (databaseVersionValue != null) {
      map['databaseVersion'] = databaseVersionValue.value;
    }
    final ipConfigValue = ipConfig;
    if (ipConfigValue != null) {
      map['ipConfig'] = ipConfigValue.toMap();
    }
    final rootPasswordValue = rootPassword;
    if (rootPasswordValue != null) {
      map['rootPassword'] = rootPasswordValue;
    }
    final sourceIdValue = sourceId;
    if (sourceIdValue != null) {
      map['sourceId'] = sourceIdValue;
    }
    final storageAutoResizeLimitValue = storageAutoResizeLimit;
    if (storageAutoResizeLimitValue != null) {
      map['storageAutoResizeLimit'] = storageAutoResizeLimitValue;
    }
    final tierValue = tier;
    if (tierValue != null) {
      map['tier'] = tierValue;
    }
    final userLabelsValue = userLabels;
    if (userLabelsValue != null) {
      map['userLabels'] = userLabelsValue;
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory CloudSqlSettingsDatamigrationV1beta1.fromMap(
      Map<String, dynamic> map) {
    return CloudSqlSettingsDatamigrationV1beta1(
      activationPolicy: map['activationPolicy'] == null
          ? null
          : CloudSqlSettingsActivationPolicyDatamigrationV1beta1.fromValue(
              map['activationPolicy'] as String),
      autoStorageIncrease: map['autoStorageIncrease'] == null
          ? null
          : map['autoStorageIncrease'] as bool,
      dataDiskSizeGb: map['dataDiskSizeGb'] == null
          ? null
          : map['dataDiskSizeGb'] as String,
      dataDiskType: map['dataDiskType'] == null
          ? null
          : CloudSqlSettingsDataDiskTypeDatamigrationV1beta1.fromValue(
              map['dataDiskType'] as String),
      databaseFlags: map['databaseFlags'] == null
          ? null
          : (map['databaseFlags'] as Map).cast<String, String>(),
      databaseVersion: map['databaseVersion'] == null
          ? null
          : CloudSqlSettingsDatabaseVersionDatamigrationV1beta1.fromValue(
              map['databaseVersion'] as String),
      ipConfig: map['ipConfig'] == null
          ? null
          : SqlIpConfigDatamigrationV1beta1.fromMap(
              (map['ipConfig'] as Map).cast<String, dynamic>()),
      rootPassword:
          map['rootPassword'] == null ? null : map['rootPassword'] as String,
      sourceId: map['sourceId'] == null ? null : map['sourceId'] as String,
      storageAutoResizeLimit: map['storageAutoResizeLimit'] == null
          ? null
          : map['storageAutoResizeLimit'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
      userLabels: map['userLabels'] == null
          ? null
          : (map['userLabels'] as Map).cast<String, String>(),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
