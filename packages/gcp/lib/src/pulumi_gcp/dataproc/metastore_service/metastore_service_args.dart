// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../metastore_service_encryption_config/metastore_service_encryption_config.dart';
import '../metastore_service_hive_metastore_config/metastore_service_hive_metastore_config.dart';
import '../metastore_service_maintenance_window/metastore_service_maintenance_window.dart';
import '../metastore_service_metadata_integration/metastore_service_metadata_integration.dart';
import '../metastore_service_network_config/metastore_service_network_config.dart';
import '../metastore_service_scaling_config/metastore_service_scaling_config.dart';
import '../metastore_service_scheduled_backup/metastore_service_scheduled_backup.dart';
import '../metastore_service_telemetry_config/metastore_service_telemetry_config.dart';

/// The set of arguments for MetastoreService.
class MetastoreServiceArgs {
  /// The database type that the Metastore service stores its data.
  /// Default value is `MYSQL`.
  /// Possible values are: `MYSQL`, `SPANNER`.
  final Input<String>? databaseType;

  /// Indicates if the dataproc metastore should be protected against accidental deletions.
  final Input<bool>? deletionProtection;

  /// Information used to configure the Dataproc Metastore service to encrypt
  /// customer data at rest.
  /// Structure is documented below.
  final Input<MetastoreServiceEncryptionConfig>? encryptionConfig;

  /// Configuration information specific to running Hive metastore software as the metastore service.
  /// Structure is documented below.
  final Input<MetastoreServiceHiveMetastoreConfig>? hiveMetastoreConfig;

  /// User-defined labels for the metastore service.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The location where the metastore service should reside.
  /// The default value is `global`.
  final Input<String>? location;

  /// The one hour maintenance window of the metastore service.
  /// This specifies when the service can be restarted for maintenance purposes in UTC time.
  /// Maintenance window is not needed for services with the `SPANNER` database type.
  /// Structure is documented below.
  final Input<MetastoreServiceMaintenanceWindow>? maintenanceWindow;

  /// The setting that defines how metastore metadata should be integrated with external services and systems.
  /// Structure is documented below.
  final Input<MetastoreServiceMetadataIntegration>? metadataIntegration;

  /// The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:
  /// "projects/{projectNumber}/global/networks/{network_id}".
  final Input<String>? network;

  /// The configuration specifying the network settings for the Dataproc Metastore service.
  /// Structure is documented below.
  final Input<MetastoreServiceNetworkConfig>? networkConfig;

  /// The TCP port at which the metastore service is reached. Default: 9083.
  final Input<int>? port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The release channel of the service. If unspecified, defaults to `STABLE`.
  /// Default value is `STABLE`.
  /// Possible values are: `CANARY`, `STABLE`.
  final Input<String>? releaseChannel;

  /// Represents the scaling configuration of a metastore service.
  /// Structure is documented below.
  final Input<MetastoreServiceScalingConfig>? scalingConfig;

  /// The configuration of scheduled backup for the metastore service.
  /// Structure is documented below.
  final Input<MetastoreServiceScheduledBackup>? scheduledBackup;

  /// The ID of the metastore service. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
  /// 3 and 63 characters.
  final Input<String>? serviceId;

  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  final Input<Map<String, String>>? tags;

  /// The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  /// Structure is documented below.
  final Input<MetastoreServiceTelemetryConfig>? telemetryConfig;

  /// The tier of the service.
  /// Possible values are: `DEVELOPER`, `ENTERPRISE`.
  final Input<String>? tier;

  MetastoreServiceArgs({
    this.databaseType,
    this.deletionProtection,
    this.encryptionConfig,
    this.hiveMetastoreConfig,
    this.labels,
    this.location,
    this.maintenanceWindow,
    this.metadataIntegration,
    this.network,
    this.networkConfig,
    this.port,
    this.project,
    this.releaseChannel,
    this.scalingConfig,
    this.scheduledBackup,
    this.serviceId,
    this.tags,
    this.telemetryConfig,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databaseTypeValue = databaseType;
    if (databaseTypeValue != null) {
      map['databaseType'] = databaseTypeValue;
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = Input.mapOptionalInputValue<
              MetastoreServiceEncryptionConfig, Map<String, dynamic>>(
          encryptionConfigValue, (value) => value.toMap());
    }
    final hiveMetastoreConfigValue = hiveMetastoreConfig;
    if (hiveMetastoreConfigValue != null) {
      map['hiveMetastoreConfig'] = Input.mapOptionalInputValue<
              MetastoreServiceHiveMetastoreConfig, Map<String, dynamic>>(
          hiveMetastoreConfigValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final maintenanceWindowValue = maintenanceWindow;
    if (maintenanceWindowValue != null) {
      map['maintenanceWindow'] = Input.mapOptionalInputValue<
              MetastoreServiceMaintenanceWindow, Map<String, dynamic>>(
          maintenanceWindowValue, (value) => value.toMap());
    }
    final metadataIntegrationValue = metadataIntegration;
    if (metadataIntegrationValue != null) {
      map['metadataIntegration'] = Input.mapOptionalInputValue<
              MetastoreServiceMetadataIntegration, Map<String, dynamic>>(
          metadataIntegrationValue, (value) => value.toMap());
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = Input.mapOptionalInputValue<
          MetastoreServiceNetworkConfig,
          Map<String, dynamic>>(networkConfigValue, (value) => value.toMap());
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final releaseChannelValue = releaseChannel;
    if (releaseChannelValue != null) {
      map['releaseChannel'] = releaseChannelValue;
    }
    final scalingConfigValue = scalingConfig;
    if (scalingConfigValue != null) {
      map['scalingConfig'] = Input.mapOptionalInputValue<
          MetastoreServiceScalingConfig,
          Map<String, dynamic>>(scalingConfigValue, (value) => value.toMap());
    }
    final scheduledBackupValue = scheduledBackup;
    if (scheduledBackupValue != null) {
      map['scheduledBackup'] = Input.mapOptionalInputValue<
          MetastoreServiceScheduledBackup,
          Map<String, dynamic>>(scheduledBackupValue, (value) => value.toMap());
    }
    final serviceIdValue = serviceId;
    if (serviceIdValue != null) {
      map['serviceId'] = serviceIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final telemetryConfigValue = telemetryConfig;
    if (telemetryConfigValue != null) {
      map['telemetryConfig'] = Input.mapOptionalInputValue<
          MetastoreServiceTelemetryConfig,
          Map<String, dynamic>>(telemetryConfigValue, (value) => value.toMap());
    }
    final tierValue = tier;
    if (tierValue != null) {
      map['tier'] = tierValue;
    }
    return map;
  }

  factory MetastoreServiceArgs.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceArgs(
      databaseType: Input.asOptionalInput<String>(map['databaseType']),
      deletionProtection:
          Input.asOptionalInput<bool>(map['deletionProtection']),
      encryptionConfig: Input.asOptionalInput<MetastoreServiceEncryptionConfig>(
          map['encryptionConfig']),
      hiveMetastoreConfig:
          Input.asOptionalInput<MetastoreServiceHiveMetastoreConfig>(
              map['hiveMetastoreConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      maintenanceWindow:
          Input.asOptionalInput<MetastoreServiceMaintenanceWindow>(
              map['maintenanceWindow']),
      metadataIntegration:
          Input.asOptionalInput<MetastoreServiceMetadataIntegration>(
              map['metadataIntegration']),
      network: Input.asOptionalInput<String>(map['network']),
      networkConfig: Input.asOptionalInput<MetastoreServiceNetworkConfig>(
          map['networkConfig']),
      port: Input.asOptionalInput<int>(map['port']),
      project: Input.asOptionalInput<String>(map['project']),
      releaseChannel: Input.asOptionalInput<String>(map['releaseChannel']),
      scalingConfig: Input.asOptionalInput<MetastoreServiceScalingConfig>(
          map['scalingConfig']),
      scheduledBackup: Input.asOptionalInput<MetastoreServiceScheduledBackup>(
          map['scheduledBackup']),
      serviceId: Input.asOptionalInput<String>(map['serviceId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      telemetryConfig: Input.asOptionalInput<MetastoreServiceTelemetryConfig>(
          map['telemetryConfig']),
      tier: Input.asOptionalInput<String>(map['tier']),
    );
  }
}
