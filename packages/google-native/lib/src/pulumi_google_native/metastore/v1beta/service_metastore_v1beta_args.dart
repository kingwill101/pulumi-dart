// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_config_metastore_v1beta.dart';
import 'hive_metastore_config_metastore_v1beta.dart';
import 'maintenance_window_metastore_v1beta.dart';
import 'metadata_integration_metastore_v1beta.dart';
import 'network_config_metastore_v1beta.dart';
import 'scaling_config_metastore_v1beta.dart';
import 'service_database_type_metastore_v1beta.dart';
import 'service_release_channel_metastore_v1beta.dart';
import 'service_tier_metastore_v1beta.dart';
import 'telemetry_config_metastore_v1beta.dart';

/// The set of arguments for Service.
class ServiceMetastoreV1betaArgs {
  /// Immutable. The database type that the Metastore service stores its data.
  final pulumi.Input<ServiceDatabaseTypeMetastoreV1beta>? databaseType;

  /// Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  final pulumi.Input<EncryptionConfigMetastoreV1beta>? encryptionConfig;

  /// Configuration information specific to running Hive metastore software as the metastore service.
  final pulumi.Input<HiveMetastoreConfigMetastoreV1beta>? hiveMetastoreConfig;

  /// User-defined labels for the metastore service.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  final pulumi.Input<MaintenanceWindowMetastoreV1beta>? maintenanceWindow;

  /// Optional. The setting that defines how metastore metadata should be integrated with external services and systems.
  final pulumi.Input<MetadataIntegrationMetastoreV1beta>? metadataIntegration;

  /// Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  final pulumi.Input<String>? name;

  /// Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  final pulumi.Input<String>? network;

  /// The configuration specifying the network settings for the Dataproc Metastore service.
  final pulumi.Input<NetworkConfigMetastoreV1beta>? networkConfig;

  /// The TCP port at which the metastore service is reached. Default: 9083.
  final pulumi.Input<int>? port;
  final pulumi.Input<String>? project;

  /// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  final pulumi.Input<ServiceReleaseChannelMetastoreV1beta>? releaseChannel;

  /// Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  final pulumi.Input<String>? requestId;

  /// Scaling configuration of the metastore service.
  final pulumi.Input<ScalingConfigMetastoreV1beta>? scalingConfig;

  /// Required. The ID of the metastore service, which is used as the final component of the metastore service's name.This value must be between 2 and 63 characters long inclusive, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  final pulumi.Input<String> serviceId;

  /// The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  final pulumi.Input<TelemetryConfigMetastoreV1beta>? telemetryConfig;

  /// The tier of the service.
  final pulumi.Input<ServiceTierMetastoreV1beta>? tier;

  ServiceMetastoreV1betaArgs({
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
      map['databaseType'] = pulumi.Input.mapOptionalInputValue<
          ServiceDatabaseTypeMetastoreV1beta,
          String>(databaseTypeValue, (value) => value.value);
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = pulumi.Input.mapOptionalInputValue<
              EncryptionConfigMetastoreV1beta, Map<String, dynamic>>(
          encryptionConfigValue, (value) => value.toMap());
    }
    final hiveMetastoreConfigValue = hiveMetastoreConfig;
    if (hiveMetastoreConfigValue != null) {
      map['hiveMetastoreConfig'] = pulumi.Input.mapOptionalInputValue<
              HiveMetastoreConfigMetastoreV1beta, Map<String, dynamic>>(
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
              MaintenanceWindowMetastoreV1beta, Map<String, dynamic>>(
          maintenanceWindowValue, (value) => value.toMap());
    }
    final metadataIntegrationValue = metadataIntegration;
    if (metadataIntegrationValue != null) {
      map['metadataIntegration'] = pulumi.Input.mapOptionalInputValue<
              MetadataIntegrationMetastoreV1beta, Map<String, dynamic>>(
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
      map['networkConfig'] = pulumi.Input.mapOptionalInputValue<
          NetworkConfigMetastoreV1beta,
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
      map['releaseChannel'] = pulumi.Input.mapOptionalInputValue<
          ServiceReleaseChannelMetastoreV1beta,
          String>(releaseChannelValue, (value) => value.value);
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final scalingConfigValue = scalingConfig;
    if (scalingConfigValue != null) {
      map['scalingConfig'] = pulumi.Input.mapOptionalInputValue<
          ScalingConfigMetastoreV1beta,
          Map<String, dynamic>>(scalingConfigValue, (value) => value.toMap());
    }
    map['serviceId'] = serviceId;
    final telemetryConfigValue = telemetryConfig;
    if (telemetryConfigValue != null) {
      map['telemetryConfig'] = pulumi.Input.mapOptionalInputValue<
          TelemetryConfigMetastoreV1beta,
          Map<String, dynamic>>(telemetryConfigValue, (value) => value.toMap());
    }
    final tierValue = tier;
    if (tierValue != null) {
      map['tier'] = pulumi.Input.mapOptionalInputValue<
          ServiceTierMetastoreV1beta,
          String>(tierValue, (value) => value.value);
    }
    return map;
  }

  factory ServiceMetastoreV1betaArgs.fromMap(Map<String, dynamic> map) {
    return ServiceMetastoreV1betaArgs(
      databaseType:
          pulumi.Input.asOptionalInput<ServiceDatabaseTypeMetastoreV1beta>(
              map['databaseType']),
      encryptionConfig:
          pulumi.Input.asOptionalInput<EncryptionConfigMetastoreV1beta>(
              map['encryptionConfig']),
      hiveMetastoreConfig:
          pulumi.Input.asOptionalInput<HiveMetastoreConfigMetastoreV1beta>(
              map['hiveMetastoreConfig']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      maintenanceWindow:
          pulumi.Input.asOptionalInput<MaintenanceWindowMetastoreV1beta>(
              map['maintenanceWindow']),
      metadataIntegration:
          pulumi.Input.asOptionalInput<MetadataIntegrationMetastoreV1beta>(
              map['metadataIntegration']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      network: pulumi.Input.asOptionalInput<String>(map['network']),
      networkConfig: pulumi.Input.asOptionalInput<NetworkConfigMetastoreV1beta>(
          map['networkConfig']),
      port: pulumi.Input.asOptionalInput<int>(map['port']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      releaseChannel:
          pulumi.Input.asOptionalInput<ServiceReleaseChannelMetastoreV1beta>(
              map['releaseChannel']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      scalingConfig: pulumi.Input.asOptionalInput<ScalingConfigMetastoreV1beta>(
          map['scalingConfig']),
      serviceId: pulumi.Input.asInput<String>(map['serviceId']),
      telemetryConfig:
          pulumi.Input.asOptionalInput<TelemetryConfigMetastoreV1beta>(
              map['telemetryConfig']),
      tier:
          pulumi.Input.asOptionalInput<ServiceTierMetastoreV1beta>(map['tier']),
    );
  }
}
