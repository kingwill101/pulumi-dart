// ignore_for_file: unused_element, unnecessary_cast

import '../connection_profile_cloudsql_settings_ip_config/connection_profile_cloudsql_settings_ip_config.dart';

class ConnectionProfileCloudsqlSettings {
  /// The activation policy specifies when the instance is activated; it is applicable only when the instance state is 'RUNNABLE'.
  /// Possible values are: `ALWAYS`, `NEVER`.
  final String? activationPolicy;

  /// If you enable this setting, Cloud SQL checks your available storage every 30 seconds. If the available storage falls below a threshold size, Cloud SQL automatically adds additional storage capacity.
  /// If the available storage repeatedly falls below the threshold size, Cloud SQL continues to add storage until it reaches the maximum of 30 TB.
  final bool? autoStorageIncrease;

  /// The KMS key name used for the csql instance.
  final String? cmekKeyName;

  /// The Cloud SQL default instance level collation.
  final String? collation;

  /// The storage capacity available to the database, in GB. The minimum (and default) size is 10GB.
  final String? dataDiskSizeGb;

  /// The type of storage.
  /// Possible values are: `PD_SSD`, `PD_HDD`.
  final String? dataDiskType;

  /// The database flags passed to the Cloud SQL instance at startup.
  final Map<String, String>? databaseFlags;

  /// The database engine type and version.
  /// Currently supported values located at https://cloud.google.com/database-migration/docs/reference/rest/v1/projects.locations.connectionProfiles#sqldatabaseversion
  final String? databaseVersion;

  /// The edition of the given Cloud SQL instance.
  /// Possible values are: `ENTERPRISE`, `ENTERPRISE_PLUS`.
  final String? edition;

  /// The settings for IP Management. This allows to enable or disable the instance IP and manage which external networks can connect to the instance. The IPv4 address cannot be disabled.
  /// Structure is documented below.
  final ConnectionProfileCloudsqlSettingsIpConfig? ipConfig;

  /// Input only. Initial root password.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? rootPassword;

  /// (Output)
  /// Output only. Indicates If this connection profile root password is stored.
  final bool? rootPasswordSet;

  /// The Database Migration Service source connection profile ID, in the format: projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID
  final String sourceId;

  /// The maximum size to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit.
  final String? storageAutoResizeLimit;

  /// The tier (or machine type) for this instance, for example: db-n1-standard-1 (MySQL instances) or db-custom-1-3840 (PostgreSQL instances).
  /// For more information, see https://cloud.google.com/sql/docs/mysql/instance-settings
  final String? tier;

  /// The resource labels for a Cloud SQL instance to use to annotate any related underlying resources such as Compute Engine VMs.
  final Map<String, String>? userLabels;

  /// The Google Cloud Platform zone where your Cloud SQL datdabse instance is located.
  final String? zone;

  ConnectionProfileCloudsqlSettings({
    this.activationPolicy,
    this.autoStorageIncrease,
    this.cmekKeyName,
    this.collation,
    this.dataDiskSizeGb,
    this.dataDiskType,
    this.databaseFlags,
    this.databaseVersion,
    this.edition,
    this.ipConfig,
    this.rootPassword,
    this.rootPasswordSet,
    required this.sourceId,
    this.storageAutoResizeLimit,
    this.tier,
    this.userLabels,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activationPolicyValue = activationPolicy;
    if (activationPolicyValue != null) {
      map['activationPolicy'] = activationPolicyValue;
    }
    final autoStorageIncreaseValue = autoStorageIncrease;
    if (autoStorageIncreaseValue != null) {
      map['autoStorageIncrease'] = autoStorageIncreaseValue;
    }
    final cmekKeyNameValue = cmekKeyName;
    if (cmekKeyNameValue != null) {
      map['cmekKeyName'] = cmekKeyNameValue;
    }
    final collationValue = collation;
    if (collationValue != null) {
      map['collation'] = collationValue;
    }
    final dataDiskSizeGbValue = dataDiskSizeGb;
    if (dataDiskSizeGbValue != null) {
      map['dataDiskSizeGb'] = dataDiskSizeGbValue;
    }
    final dataDiskTypeValue = dataDiskType;
    if (dataDiskTypeValue != null) {
      map['dataDiskType'] = dataDiskTypeValue;
    }
    final databaseFlagsValue = databaseFlags;
    if (databaseFlagsValue != null) {
      map['databaseFlags'] = databaseFlagsValue;
    }
    final databaseVersionValue = databaseVersion;
    if (databaseVersionValue != null) {
      map['databaseVersion'] = databaseVersionValue;
    }
    final editionValue = edition;
    if (editionValue != null) {
      map['edition'] = editionValue;
    }
    final ipConfigValue = ipConfig;
    if (ipConfigValue != null) {
      map['ipConfig'] = ipConfigValue.toMap();
    }
    final rootPasswordValue = rootPassword;
    if (rootPasswordValue != null) {
      map['rootPassword'] = rootPasswordValue;
    }
    final rootPasswordSetValue = rootPasswordSet;
    if (rootPasswordSetValue != null) {
      map['rootPasswordSet'] = rootPasswordSetValue;
    }
    map['sourceId'] = sourceId;
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

  factory ConnectionProfileCloudsqlSettings.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileCloudsqlSettings(
      activationPolicy: map['activationPolicy'] == null
          ? null
          : map['activationPolicy'] as String,
      autoStorageIncrease: map['autoStorageIncrease'] == null
          ? null
          : map['autoStorageIncrease'] as bool,
      cmekKeyName:
          map['cmekKeyName'] == null ? null : map['cmekKeyName'] as String,
      collation: map['collation'] == null ? null : map['collation'] as String,
      dataDiskSizeGb: map['dataDiskSizeGb'] == null
          ? null
          : map['dataDiskSizeGb'] as String,
      dataDiskType:
          map['dataDiskType'] == null ? null : map['dataDiskType'] as String,
      databaseFlags: map['databaseFlags'] == null
          ? null
          : (map['databaseFlags'] as Map).cast<String, String>(),
      databaseVersion: map['databaseVersion'] == null
          ? null
          : map['databaseVersion'] as String,
      edition: map['edition'] == null ? null : map['edition'] as String,
      ipConfig: map['ipConfig'] == null
          ? null
          : ConnectionProfileCloudsqlSettingsIpConfig.fromMap(
              (map['ipConfig'] as Map).cast<String, dynamic>()),
      rootPassword:
          map['rootPassword'] == null ? null : map['rootPassword'] as String,
      rootPasswordSet: map['rootPasswordSet'] == null
          ? null
          : map['rootPasswordSet'] as bool,
      sourceId: map['sourceId'] as String,
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
