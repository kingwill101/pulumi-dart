// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_sql_settings_activation_policy.dart';
import 'cloud_sql_settings_availability_type.dart';
import 'cloud_sql_settings_data_disk_type.dart';
import 'cloud_sql_settings_database_version.dart';
import 'cloud_sql_settings_edition.dart';
import 'data_cache_config.dart';
import 'sql_ip_config.dart';

/// Settings for creating a Cloud SQL database instance.
class CloudSqlSettings {
  /// The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'. Valid values: 'ALWAYS': The instance is on, and remains so even in the absence of connection requests. `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  final CloudSqlSettingsActivationPolicy? activationPolicy;

  /// [default: ON] If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity. If the available storage repeatedly falls below the threshold size, Cloud SQL continues to add storage until it reaches the maximum of 30 TB.
  final bool? autoStorageIncrease;

  /// Optional. Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data availability. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available).
  final CloudSqlSettingsAvailabilityType? availabilityType;

  /// The KMS key name used for the csql instance.
  final String? cmekKeyName;

  /// The Cloud SQL default instance level collation.
  final String? collation;

  /// Optional. Data cache is an optional feature available for Cloud SQL for MySQL Enterprise Plus edition only. For more information on data cache, see [Data cache overview](https://cloud.google.com/sql/help/mysql-data-cache) in Cloud SQL documentation.
  final DataCacheConfig? dataCacheConfig;

  /// The storage capacity available to the database, in GB. The minimum (and default) size is 10GB.
  final String? dataDiskSizeGb;

  /// The type of storage: `PD_SSD` (default) or `PD_HDD`.
  final CloudSqlSettingsDataDiskType? dataDiskType;

  /// The database flags passed to the Cloud SQL instance at startup. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final Map<String, String>? databaseFlags;

  /// The database engine type and version.
  final CloudSqlSettingsDatabaseVersion? databaseVersion;

  /// Optional. The edition of the given Cloud SQL instance.
  final CloudSqlSettingsEdition? edition;

  /// The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled.
  final SqlIpConfig? ipConfig;

  /// Input only. Initial root password.
  final String? rootPassword;

  /// Optional. The Google Cloud Platform zone where the failover Cloud SQL database instance is located. Used when the Cloud SQL database availability type is REGIONAL (i.e. multiple zones / highly available).
  final String? secondaryZone;

  /// The Database Migration Service source connection profile ID, in the format: `projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID`
  final String? sourceId;

  /// The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  final String? storageAutoResizeLimit;

  /// The tier (or machine type) for this instance, for example: `db-n1-standard-1` (MySQL instances) or `db-custom-1-3840` (PostgreSQL instances). For more information, see [Cloud SQL Instance Settings](https://cloud.google.com/sql/docs/mysql/instance-settings).
  final String? tier;

  /// The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "18kg", "count": "3" }`.
  final Map<String, String>? userLabels;

  /// The Google Cloud Platform zone where your Cloud SQL database instance is located.
  final String? zone;

  /// Creates a new [CloudSqlSettings].
  /// [activationPolicy] The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'. Valid values: 'ALWAYS': The instance is on, and remains so even in the absence of connection requests. `NEVER`: The instance is off; it is not activated, even if a connection request arrives.
  /// [autoStorageIncrease] [default: ON] If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity. If the available storage repeatedly falls below the threshold size, Cloud SQL continues to add storage until it reaches the maximum of 30 TB.
  /// [availabilityType] Optional. Availability type. Potential values: * `ZONAL`: The instance serves data from only one zone. Outages in that zone affect data availability. * `REGIONAL`: The instance can serve data from more than one zone in a region (it is highly available).
  /// [cmekKeyName] The KMS key name used for the csql instance.
  /// [collation] The Cloud SQL default instance level collation.
  /// [dataCacheConfig] Optional. Data cache is an optional feature available for Cloud SQL for MySQL Enterprise Plus edition only. For more information on data cache, see [Data cache overview](https://cloud.google.com/sql/help/mysql-data-cache) in Cloud SQL documentation.
  /// [dataDiskSizeGb] The storage capacity available to the database, in GB. The minimum (and default) size is 10GB.
  /// [dataDiskType] The type of storage: `PD_SSD` (default) or `PD_HDD`.
  /// [databaseFlags] The database flags passed to the Cloud SQL instance at startup. An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  /// [databaseVersion] The database engine type and version.
  /// [edition] Optional. The edition of the given Cloud SQL instance.
  /// [ipConfig] The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled.
  /// [rootPassword] Input only. Initial root password.
  /// [secondaryZone] Optional. The Google Cloud Platform zone where the failover Cloud SQL database instance is located. Used when the Cloud SQL database availability type is REGIONAL (i.e. multiple zones / highly available).
  /// [sourceId] The Database Migration Service source connection profile ID, in the format: `projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID`
  /// [storageAutoResizeLimit] The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  /// [tier] The tier (or machine type) for this instance, for example: `db-n1-standard-1` (MySQL instances) or `db-custom-1-3840` (PostgreSQL instances). For more information, see [Cloud SQL Instance Settings](https://cloud.google.com/sql/docs/mysql/instance-settings).
  /// [userLabels] The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "18kg", "count": "3" }`.
  /// [zone] The Google Cloud Platform zone where your Cloud SQL database instance is located.
  CloudSqlSettings({
    this.activationPolicy,
    this.autoStorageIncrease,
    this.availabilityType,
    this.cmekKeyName,
    this.collation,
    this.dataCacheConfig,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.databaseFlags,
    this.databaseVersion,
    this.edition,
    this.ipConfig,
    this.rootPassword,
    this.secondaryZone,
    this.sourceId,
    this.storageAutoResizeLimit,
    this.tier,
    this.userLabels,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationPolicy': ?activationPolicy == null
          ? null
          : activationPolicy!.value,
      'autoStorageIncrease': ?autoStorageIncrease,
      'availabilityType': ?availabilityType == null
          ? null
          : availabilityType!.value,
      'cmekKeyName': ?cmekKeyName,
      'collation': ?collation,
      'dataCacheConfig': ?dataCacheConfig == null
          ? null
          : dataCacheConfig!.toMap(),
      'dataDiskSizeGb': ?dataDiskSizeGb,
      'dataDiskType': ?dataDiskType == null ? null : dataDiskType!.value,
      'databaseFlags': ?databaseFlags,
      'databaseVersion': ?databaseVersion == null
          ? null
          : databaseVersion!.value,
      'edition': ?edition == null ? null : edition!.value,
      'ipConfig': ?ipConfig == null ? null : ipConfig!.toMap(),
      'rootPassword': ?rootPassword,
      'secondaryZone': ?secondaryZone,
      'sourceId': ?sourceId,
      'storageAutoResizeLimit': ?storageAutoResizeLimit,
      'tier': ?tier,
      'userLabels': ?userLabels,
      'zone': ?zone,
    };
  }

  factory CloudSqlSettings.fromMap(Map<String, dynamic> map) {
    return CloudSqlSettings(
      activationPolicy: map['activationPolicy'] == null
          ? null
          : CloudSqlSettingsActivationPolicy.fromValue(
              map['activationPolicy'] as String,
            ),
      autoStorageIncrease: map['autoStorageIncrease'] == null
          ? null
          : map['autoStorageIncrease'] as bool,
      availabilityType: map['availabilityType'] == null
          ? null
          : CloudSqlSettingsAvailabilityType.fromValue(
              map['availabilityType'] as String,
            ),
      cmekKeyName: map['cmekKeyName'] == null
          ? null
          : map['cmekKeyName'] as String,
      collation: map['collation'] == null ? null : map['collation'] as String,
      dataCacheConfig: map['dataCacheConfig'] == null
          ? null
          : DataCacheConfig.fromMap(
              (map['dataCacheConfig'] as Map).cast<String, dynamic>(),
            ),
      dataDiskSizeGb: map['dataDiskSizeGb'] == null
          ? null
          : map['dataDiskSizeGb'] as String,
      dataDiskType: map['dataDiskType'] == null
          ? null
          : CloudSqlSettingsDataDiskType.fromValue(
              map['dataDiskType'] as String,
            ),
      databaseFlags: map['databaseFlags'] == null
          ? null
          : (map['databaseFlags'] as Map).cast<String, String>(),
      databaseVersion: map['databaseVersion'] == null
          ? null
          : CloudSqlSettingsDatabaseVersion.fromValue(
              map['databaseVersion'] as String,
            ),
      edition: map['edition'] == null
          ? null
          : CloudSqlSettingsEdition.fromValue(map['edition'] as String),
      ipConfig: map['ipConfig'] == null
          ? null
          : SqlIpConfig.fromMap(
              (map['ipConfig'] as Map).cast<String, dynamic>(),
            ),
      rootPassword: map['rootPassword'] == null
          ? null
          : map['rootPassword'] as String,
      secondaryZone: map['secondaryZone'] == null
          ? null
          : map['secondaryZone'] as String,
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
