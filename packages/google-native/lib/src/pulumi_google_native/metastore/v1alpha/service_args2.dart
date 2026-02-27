// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'encryption_config12.dart';
import 'hive_metastore_config2.dart';
import 'maintenance_window7.dart';
import 'metadata_integration2.dart';
import 'network_config17.dart';
import 'scaling_config2.dart';
import 'service_database_type2.dart';
import 'service_release_channel2.dart';
import 'service_tier2.dart';
import 'telemetry_config2.dart';

/// The set of arguments for Service.
class ServiceArgs2 {
  /// Immutable. The database type that the Metastore service stores its data.
  final Input<ServiceDatabaseType2>? databaseType;

  /// Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  final Input<EncryptionConfig12>? encryptionConfig;

  /// Configuration information specific to running Hive metastore software as the metastore service.
  final Input<HiveMetastoreConfig2>? hiveMetastoreConfig;

  /// User-defined labels for the metastore service.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  final Input<MaintenanceWindow7>? maintenanceWindow;

  /// Optional. The setting that defines how metastore metadata should be integrated with external services and systems.
  final Input<MetadataIntegration2>? metadataIntegration;

  /// Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  final Input<String>? name;

  /// Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  final Input<String>? network;

  /// The configuration specifying the network settings for the Dataproc Metastore service.
  final Input<NetworkConfig17>? networkConfig;

  /// The TCP port at which the metastore service is reached. Default: 9083.
  final Input<int>? port;
  final Input<String>? project;

  /// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  final Input<ServiceReleaseChannel2>? releaseChannel;

  /// Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  final Input<String>? requestId;

  /// Scaling configuration of the metastore service.
  final Input<ScalingConfig2>? scalingConfig;

  /// Required. The ID of the metastore service, which is used as the final component of the metastore service's name.This value must be between 2 and 63 characters long inclusive, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  final Input<String> serviceId;

  /// The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  final Input<TelemetryConfig2>? telemetryConfig;

  /// The tier of the service.
  final Input<ServiceTier2>? tier;

  ServiceArgs2({
    this.databaseType,
    this.encryptionConfig,
    this.hiveMetastoreConfig,
    this.labels,
    this.location,
    this.maintenanceWindow,
    this.metadataIntegration,
    this.name,
    this.network,
    this.networkConfig,
    this.port,
    this.project,
    this.releaseChannel,
    this.requestId,
    this.scalingConfig,
    required this.serviceId,
    this.telemetryConfig,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final databaseTypeValue = databaseType;
    if (databaseTypeValue != null) {
      map['databaseType'] =
          Input.mapOptionalInputValue<ServiceDatabaseType2, String>(
              databaseTypeValue, (value) => value.value);
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] =
          Input.mapOptionalInputValue<EncryptionConfig12, Map<String, dynamic>>(
              encryptionConfigValue, (value) => value.toMap());
    }
    final hiveMetastoreConfigValue = hiveMetastoreConfig;
    if (hiveMetastoreConfigValue != null) {
      map['hiveMetastoreConfig'] = Input.mapOptionalInputValue<
              HiveMetastoreConfig2, Map<String, dynamic>>(
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
      map['maintenanceWindow'] =
          Input.mapOptionalInputValue<MaintenanceWindow7, Map<String, dynamic>>(
              maintenanceWindowValue, (value) => value.toMap());
    }
    final metadataIntegrationValue = metadataIntegration;
    if (metadataIntegrationValue != null) {
      map['metadataIntegration'] = Input.mapOptionalInputValue<
              MetadataIntegration2, Map<String, dynamic>>(
          metadataIntegrationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final networkValue = network;
    if (networkValue != null) {
      map['network'] = networkValue;
    }
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] =
          Input.mapOptionalInputValue<NetworkConfig17, Map<String, dynamic>>(
              networkConfigValue, (value) => value.toMap());
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
      map['releaseChannel'] =
          Input.mapOptionalInputValue<ServiceReleaseChannel2, String>(
              releaseChannelValue, (value) => value.value);
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final scalingConfigValue = scalingConfig;
    if (scalingConfigValue != null) {
      map['scalingConfig'] =
          Input.mapOptionalInputValue<ScalingConfig2, Map<String, dynamic>>(
              scalingConfigValue, (value) => value.toMap());
    }
    map['serviceId'] = serviceId;
    final telemetryConfigValue = telemetryConfig;
    if (telemetryConfigValue != null) {
      map['telemetryConfig'] =
          Input.mapOptionalInputValue<TelemetryConfig2, Map<String, dynamic>>(
              telemetryConfigValue, (value) => value.toMap());
    }
    final tierValue = tier;
    if (tierValue != null) {
      map['tier'] = Input.mapOptionalInputValue<ServiceTier2, String>(
          tierValue, (value) => value.value);
    }
    return map;
  }

  factory ServiceArgs2.fromMap(Map<String, dynamic> map) {
    return ServiceArgs2(
      databaseType:
          Input.asOptionalInput<ServiceDatabaseType2>(map['databaseType']),
      encryptionConfig:
          Input.asOptionalInput<EncryptionConfig12>(map['encryptionConfig']),
      hiveMetastoreConfig: Input.asOptionalInput<HiveMetastoreConfig2>(
          map['hiveMetastoreConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      maintenanceWindow:
          Input.asOptionalInput<MaintenanceWindow7>(map['maintenanceWindow']),
      metadataIntegration: Input.asOptionalInput<MetadataIntegration2>(
          map['metadataIntegration']),
      name: Input.asOptionalInput<String>(map['name']),
      network: Input.asOptionalInput<String>(map['network']),
      networkConfig:
          Input.asOptionalInput<NetworkConfig17>(map['networkConfig']),
      port: Input.asOptionalInput<int>(map['port']),
      project: Input.asOptionalInput<String>(map['project']),
      releaseChannel:
          Input.asOptionalInput<ServiceReleaseChannel2>(map['releaseChannel']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      scalingConfig:
          Input.asOptionalInput<ScalingConfig2>(map['scalingConfig']),
      serviceId: Input.asInput<String>(map['serviceId']),
      telemetryConfig:
          Input.asOptionalInput<TelemetryConfig2>(map['telemetryConfig']),
      tier: Input.asOptionalInput<ServiceTier2>(map['tier']),
    );
  }
}
