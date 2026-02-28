// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metastore_service_encryption_config.dart';
import 'metastore_service_hive_metastore_config.dart';
import 'metastore_service_maintenance_window.dart';
import 'metastore_service_metadata_integration.dart';
import 'metastore_service_network_config.dart';
import 'metastore_service_scaling_config.dart';
import 'metastore_service_scheduled_backup.dart';
import 'metastore_service_telemetry_config.dart';

/// {@template pulumi_dataproc_metastore_service_metastore_service_args_doc}
/// The set of arguments for MetastoreService.
/// {@endtemplate}
/// {@macro pulumi_dataproc_metastore_service_metastore_service_args_doc}
class MetastoreServiceArgs {
  /// The database type that the Metastore service stores its data.
  /// Default value is `MYSQL`.
  /// Possible values are: `MYSQL`, `SPANNER`.
  final pulumi.Input<String>? databaseType;

  /// Indicates if the dataproc metastore should be protected against accidental deletions.
  final pulumi.Input<bool>? deletionProtection;

  /// Information used to configure the Dataproc Metastore service to encrypt
  /// customer data at rest.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceEncryptionConfig>? encryptionConfig;

  /// Configuration information specific to running Hive metastore software as the metastore service.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceHiveMetastoreConfig>? hiveMetastoreConfig;

  /// User-defined labels for the metastore service.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The location where the metastore service should reside.
  /// The default value is `global`.
  final pulumi.Input<String>? location;

  /// The one hour maintenance window of the metastore service.
  /// This specifies when the service can be restarted for maintenance purposes in UTC time.
  /// Maintenance window is not needed for services with the `SPANNER` database type.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceMaintenanceWindow>? maintenanceWindow;

  /// The setting that defines how metastore metadata should be integrated with external services and systems.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceMetadataIntegration>? metadataIntegration;

  /// The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:
  /// "projects/{projectNumber}/global/networks/{network_id}".
  final pulumi.Input<String>? network;

  /// The configuration specifying the network settings for the Dataproc Metastore service.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceNetworkConfig>? networkConfig;

  /// The TCP port at which the metastore service is reached. Default: 9083.
  final pulumi.Input<int>? port;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The release channel of the service. If unspecified, defaults to `STABLE`.
  /// Default value is `STABLE`.
  /// Possible values are: `CANARY`, `STABLE`.
  final pulumi.Input<String>? releaseChannel;

  /// Represents the scaling configuration of a metastore service.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceScalingConfig>? scalingConfig;

  /// The configuration of scheduled backup for the metastore service.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceScheduledBackup>? scheduledBackup;

  /// The ID of the metastore service. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// and hyphens (-). Cannot begin or end with underscore or hyphen. Must consist of between
  /// 3 and 63 characters.
  final pulumi.Input<String>? serviceId;

  /// A map of resource manager tags.
  /// Resource manager tag keys and values have the same definition as resource manager tags.
  /// Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/{tag_value_id}.
  final pulumi.Input<Map<String, String>>? tags;

  /// The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceTelemetryConfig>? telemetryConfig;

  /// The tier of the service.
  /// Possible values are: `DEVELOPER`, `ENTERPRISE`.
  final pulumi.Input<String>? tier;

  /// Creates a new [MetastoreServiceArgs].
  /// [databaseType] The database type that the Metastore service stores its data.
  /// [deletionProtection] Indicates if the dataproc metastore should be protected against accidental deletions.
  /// [encryptionConfig] Information used to configure the Dataproc Metastore service to encrypt
  /// [hiveMetastoreConfig] Configuration information specific to running Hive metastore software as the metastore service.
  /// [labels] User-defined labels for the metastore service.
  /// [location] The location where the metastore service should reside.
  /// [maintenanceWindow] The one hour maintenance window of the metastore service.
  /// [metadataIntegration] The setting that defines how metastore metadata should be integrated with external services and systems.
  /// [network] The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:
  /// [networkConfig] The configuration specifying the network settings for the Dataproc Metastore service.
  /// [port] The TCP port at which the metastore service is reached. Default: 9083.
  /// [project] The ID of the project in which the resource belongs.
  /// [releaseChannel] The release channel of the service. If unspecified, defaults to `STABLE`.
  /// [scalingConfig] Represents the scaling configuration of a metastore service.
  /// [scheduledBackup] The configuration of scheduled backup for the metastore service.
  /// [serviceId] The ID of the metastore service. The id must contain only letters (a-z, A-Z), numbers (0-9), underscores (_),
  /// [tags] A map of resource manager tags.
  /// [telemetryConfig] The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  /// [tier] The tier of the service.
  MetastoreServiceArgs({
    String? databaseType,
    bool? deletionProtection,
    MetastoreServiceEncryptionConfig? encryptionConfig,
    MetastoreServiceHiveMetastoreConfig? hiveMetastoreConfig,
    Map<String, String>? labels,
    String? location,
    MetastoreServiceMaintenanceWindow? maintenanceWindow,
    MetastoreServiceMetadataIntegration? metadataIntegration,
    String? network,
    MetastoreServiceNetworkConfig? networkConfig,
    int? port,
    String? project,
    String? releaseChannel,
    MetastoreServiceScalingConfig? scalingConfig,
    MetastoreServiceScheduledBackup? scheduledBackup,
    String? serviceId,
    Map<String, String>? tags,
    MetastoreServiceTelemetryConfig? telemetryConfig,
    String? tier,
  })  : databaseType = pulumi.Input.asOptionalInput<String>(databaseType),
        deletionProtection =
            pulumi.Input.asOptionalInput<bool>(deletionProtection),
        encryptionConfig =
            pulumi.Input.asOptionalInput<MetastoreServiceEncryptionConfig>(
                encryptionConfig),
        hiveMetastoreConfig =
            pulumi.Input.asOptionalInput<MetastoreServiceHiveMetastoreConfig>(
                hiveMetastoreConfig),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        maintenanceWindow =
            pulumi.Input.asOptionalInput<MetastoreServiceMaintenanceWindow>(
                maintenanceWindow),
        metadataIntegration =
            pulumi.Input.asOptionalInput<MetastoreServiceMetadataIntegration>(
                metadataIntegration),
        network = pulumi.Input.asOptionalInput<String>(network),
        networkConfig =
            pulumi.Input.asOptionalInput<MetastoreServiceNetworkConfig>(
                networkConfig),
        port = pulumi.Input.asOptionalInput<int>(port),
        project = pulumi.Input.asOptionalInput<String>(project),
        releaseChannel = pulumi.Input.asOptionalInput<String>(releaseChannel),
        scalingConfig =
            pulumi.Input.asOptionalInput<MetastoreServiceScalingConfig>(
                scalingConfig),
        scheduledBackup =
            pulumi.Input.asOptionalInput<MetastoreServiceScheduledBackup>(
                scheduledBackup),
        serviceId = pulumi.Input.asOptionalInput<String>(serviceId),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        telemetryConfig =
            pulumi.Input.asOptionalInput<MetastoreServiceTelemetryConfig>(
                telemetryConfig),
        tier = pulumi.Input.asOptionalInput<String>(tier);

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
      map['encryptionConfig'] = pulumi.Input.mapOptionalInputValue<
              MetastoreServiceEncryptionConfig, Map<String, dynamic>>(
          encryptionConfigValue, (value) => value.toMap());
    }
    final hiveMetastoreConfigValue = hiveMetastoreConfig;
    if (hiveMetastoreConfigValue != null) {
      map['hiveMetastoreConfig'] = pulumi.Input.mapOptionalInputValue<
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
      map['maintenanceWindow'] = pulumi.Input.mapOptionalInputValue<
              MetastoreServiceMaintenanceWindow, Map<String, dynamic>>(
          maintenanceWindowValue, (value) => value.toMap());
    }
    final metadataIntegrationValue = metadataIntegration;
    if (metadataIntegrationValue != null) {
      map['metadataIntegration'] = pulumi.Input.mapOptionalInputValue<
              MetastoreServiceMetadataIntegration, Map<String, dynamic>>(
          metadataIntegrationValue, (value) => value.toMap());
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = pulumi.Input.mapOptionalInputValue<
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
      map['scalingConfig'] = pulumi.Input.mapOptionalInputValue<
          MetastoreServiceScalingConfig,
          Map<String, dynamic>>(scalingConfigValue, (value) => value.toMap());
    }
    final scheduledBackupValue = scheduledBackup;
    if (scheduledBackupValue != null) {
      map['scheduledBackup'] = pulumi.Input.mapOptionalInputValue<
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
      map['telemetryConfig'] = pulumi.Input.mapOptionalInputValue<
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
      databaseType:
          map['databaseType'] == null ? null : map['databaseType'] as String,
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as bool,
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : MetastoreServiceEncryptionConfig.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      hiveMetastoreConfig: map['hiveMetastoreConfig'] == null
          ? null
          : MetastoreServiceHiveMetastoreConfig.fromMap(
              (map['hiveMetastoreConfig'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : MetastoreServiceMaintenanceWindow.fromMap(
              (map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      metadataIntegration: map['metadataIntegration'] == null
          ? null
          : MetastoreServiceMetadataIntegration.fromMap(
              (map['metadataIntegration'] as Map).cast<String, dynamic>()),
      network: map['network'] == null ? null : map['network'] as String,
      networkConfig: map['networkConfig'] == null
          ? null
          : MetastoreServiceNetworkConfig.fromMap(
              (map['networkConfig'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      releaseChannel: map['releaseChannel'] == null
          ? null
          : map['releaseChannel'] as String,
      scalingConfig: map['scalingConfig'] == null
          ? null
          : MetastoreServiceScalingConfig.fromMap(
              (map['scalingConfig'] as Map).cast<String, dynamic>()),
      scheduledBackup: map['scheduledBackup'] == null
          ? null
          : MetastoreServiceScheduledBackup.fromMap(
              (map['scheduledBackup'] as Map).cast<String, dynamic>()),
      serviceId: map['serviceId'] == null ? null : map['serviceId'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      telemetryConfig: map['telemetryConfig'] == null
          ? null
          : MetastoreServiceTelemetryConfig.fromMap(
              (map['telemetryConfig'] as Map).cast<String, dynamic>()),
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}
