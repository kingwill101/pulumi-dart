// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_config_metastore_v1alpha.dart';
import 'hive_metastore_config_metastore_v1alpha.dart';
import 'maintenance_window_metastore_v1alpha.dart';
import 'metadata_integration_metastore_v1alpha.dart';
import 'network_config_metastore_v1alpha.dart';
import 'scaling_config_metastore_v1alpha.dart';
import 'service_database_type_metastore_v1alpha.dart';
import 'service_release_channel_metastore_v1alpha.dart';
import 'service_tier_metastore_v1alpha.dart';
import 'telemetry_config_metastore_v1alpha.dart';

/// {@template pulumi_metastore_v1alpha_service_metastore_v1alpha_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1alpha_service_metastore_v1alpha_args_doc}
class ServiceMetastoreV1alphaArgs {
  /// Immutable. The database type that the Metastore service stores its data.
  final pulumi.Input<ServiceDatabaseTypeMetastoreV1alpha>? databaseType;

  /// Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  final pulumi.Input<EncryptionConfigMetastoreV1alpha>? encryptionConfig;

  /// Configuration information specific to running Hive metastore software as the metastore service.
  final pulumi.Input<HiveMetastoreConfigMetastoreV1alpha>? hiveMetastoreConfig;

  /// User-defined labels for the metastore service.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  final pulumi.Input<MaintenanceWindowMetastoreV1alpha>? maintenanceWindow;

  /// Optional. The setting that defines how metastore metadata should be integrated with external services and systems.
  final pulumi.Input<MetadataIntegrationMetastoreV1alpha>? metadataIntegration;

  /// Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  final pulumi.Input<String>? name;

  /// Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  final pulumi.Input<String>? network;

  /// The configuration specifying the network settings for the Dataproc Metastore service.
  final pulumi.Input<NetworkConfigMetastoreV1alpha>? networkConfig;

  /// The TCP port at which the metastore service is reached. Default: 9083.
  final pulumi.Input<int>? port;
  final pulumi.Input<String>? project;

  /// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  final pulumi.Input<ServiceReleaseChannelMetastoreV1alpha>? releaseChannel;

  /// Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  final pulumi.Input<String>? requestId;

  /// Scaling configuration of the metastore service.
  final pulumi.Input<ScalingConfigMetastoreV1alpha>? scalingConfig;

  /// Required. The ID of the metastore service, which is used as the final component of the metastore service's name.This value must be between 2 and 63 characters long inclusive, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  final pulumi.Input<String> serviceId;

  /// The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  final pulumi.Input<TelemetryConfigMetastoreV1alpha>? telemetryConfig;

  /// The tier of the service.
  final pulumi.Input<ServiceTierMetastoreV1alpha>? tier;

  /// Creates a new [ServiceMetastoreV1alphaArgs].
  /// [databaseType] Immutable. The database type that the Metastore service stores its data.
  /// [encryptionConfig] Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  /// [hiveMetastoreConfig] Configuration information specific to running Hive metastore software as the metastore service.
  /// [labels] User-defined labels for the metastore service.
  /// [location] Optional.
  /// [maintenanceWindow] The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  /// [metadataIntegration] Optional. The setting that defines how metastore metadata should be integrated with external services and systems.
  /// [name] Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  /// [network] Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  /// [networkConfig] The configuration specifying the network settings for the Dataproc Metastore service.
  /// [port] The TCP port at which the metastore service is reached. Default: 9083.
  /// [project] Optional.
  /// [releaseChannel] Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  /// [requestId] Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  /// [scalingConfig] Scaling configuration of the metastore service.
  /// [serviceId] Required. The ID of the metastore service, which is used as the final component of the metastore service's name.This value must be between 2 and 63 characters long inclusive, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  /// [telemetryConfig] The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  /// [tier] The tier of the service.
  ServiceMetastoreV1alphaArgs({
    ServiceDatabaseTypeMetastoreV1alpha? databaseType,
    EncryptionConfigMetastoreV1alpha? encryptionConfig,
    HiveMetastoreConfigMetastoreV1alpha? hiveMetastoreConfig,
    Map<String, String>? labels,
    String? location,
    MaintenanceWindowMetastoreV1alpha? maintenanceWindow,
    MetadataIntegrationMetastoreV1alpha? metadataIntegration,
    String? name,
    String? network,
    NetworkConfigMetastoreV1alpha? networkConfig,
    int? port,
    String? project,
    ServiceReleaseChannelMetastoreV1alpha? releaseChannel,
    String? requestId,
    ScalingConfigMetastoreV1alpha? scalingConfig,
    required String serviceId,
    TelemetryConfigMetastoreV1alpha? telemetryConfig,
    ServiceTierMetastoreV1alpha? tier,
  }) : databaseType =
           pulumi.Input.asOptionalInput<ServiceDatabaseTypeMetastoreV1alpha>(
             databaseType,
           ),
       encryptionConfig =
           pulumi.Input.asOptionalInput<EncryptionConfigMetastoreV1alpha>(
             encryptionConfig,
           ),
       hiveMetastoreConfig =
           pulumi.Input.asOptionalInput<HiveMetastoreConfigMetastoreV1alpha>(
             hiveMetastoreConfig,
           ),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       maintenanceWindow =
           pulumi.Input.asOptionalInput<MaintenanceWindowMetastoreV1alpha>(
             maintenanceWindow,
           ),
       metadataIntegration =
           pulumi.Input.asOptionalInput<MetadataIntegrationMetastoreV1alpha>(
             metadataIntegration,
           ),
       name = pulumi.Input.asOptionalInput<String>(name),
       network = pulumi.Input.asOptionalInput<String>(network),
       networkConfig = pulumi
           .Input.asOptionalInput<NetworkConfigMetastoreV1alpha>(networkConfig),
       port = pulumi.Input.asOptionalInput<int>(port),
       project = pulumi.Input.asOptionalInput<String>(project),
       releaseChannel =
           pulumi.Input.asOptionalInput<ServiceReleaseChannelMetastoreV1alpha>(
             releaseChannel,
           ),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       scalingConfig = pulumi
           .Input.asOptionalInput<ScalingConfigMetastoreV1alpha>(scalingConfig),
       serviceId = pulumi.Input.asInput<String>(serviceId),
       telemetryConfig =
           pulumi.Input.asOptionalInput<TelemetryConfigMetastoreV1alpha>(
             telemetryConfig,
           ),
       tier = pulumi.Input.asOptionalInput<ServiceTierMetastoreV1alpha>(tier);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseType':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceDatabaseTypeMetastoreV1alpha,
            String
          >(databaseType, (value) => value.value),
      'encryptionConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EncryptionConfigMetastoreV1alpha,
            Map<String, dynamic>
          >(encryptionConfig, (value) => value.toMap()),
      'hiveMetastoreConfig':
          ?pulumi.Input.mapOptionalInputValue<
            HiveMetastoreConfigMetastoreV1alpha,
            Map<String, dynamic>
          >(hiveMetastoreConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'maintenanceWindow':
          ?pulumi.Input.mapOptionalInputValue<
            MaintenanceWindowMetastoreV1alpha,
            Map<String, dynamic>
          >(maintenanceWindow, (value) => value.toMap()),
      'metadataIntegration':
          ?pulumi.Input.mapOptionalInputValue<
            MetadataIntegrationMetastoreV1alpha,
            Map<String, dynamic>
          >(metadataIntegration, (value) => value.toMap()),
      'name': ?name,
      'network': ?network,
      'networkConfig':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkConfigMetastoreV1alpha,
            Map<String, dynamic>
          >(networkConfig, (value) => value.toMap()),
      'port': ?port,
      'project': ?project,
      'releaseChannel':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceReleaseChannelMetastoreV1alpha,
            String
          >(releaseChannel, (value) => value.value),
      'requestId': ?requestId,
      'scalingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ScalingConfigMetastoreV1alpha,
            Map<String, dynamic>
          >(scalingConfig, (value) => value.toMap()),
      'serviceId': serviceId,
      'telemetryConfig':
          ?pulumi.Input.mapOptionalInputValue<
            TelemetryConfigMetastoreV1alpha,
            Map<String, dynamic>
          >(telemetryConfig, (value) => value.toMap()),
      'tier':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceTierMetastoreV1alpha,
            String
          >(tier, (value) => value.value),
    };
  }

  factory ServiceMetastoreV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return ServiceMetastoreV1alphaArgs(
      databaseType: map['databaseType'] == null
          ? null
          : ServiceDatabaseTypeMetastoreV1alpha.fromValue(
              map['databaseType'] as String,
            ),
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : EncryptionConfigMetastoreV1alpha.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>(),
            ),
      hiveMetastoreConfig: map['hiveMetastoreConfig'] == null
          ? null
          : HiveMetastoreConfigMetastoreV1alpha.fromMap(
              (map['hiveMetastoreConfig'] as Map).cast<String, dynamic>(),
            ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : MaintenanceWindowMetastoreV1alpha.fromMap(
              (map['maintenanceWindow'] as Map).cast<String, dynamic>(),
            ),
      metadataIntegration: map['metadataIntegration'] == null
          ? null
          : MetadataIntegrationMetastoreV1alpha.fromMap(
              (map['metadataIntegration'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      networkConfig: map['networkConfig'] == null
          ? null
          : NetworkConfigMetastoreV1alpha.fromMap(
              (map['networkConfig'] as Map).cast<String, dynamic>(),
            ),
      port: map['port'] == null ? null : map['port'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      releaseChannel: map['releaseChannel'] == null
          ? null
          : ServiceReleaseChannelMetastoreV1alpha.fromValue(
              map['releaseChannel'] as String,
            ),
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      scalingConfig: map['scalingConfig'] == null
          ? null
          : ScalingConfigMetastoreV1alpha.fromMap(
              (map['scalingConfig'] as Map).cast<String, dynamic>(),
            ),
      serviceId: map['serviceId'] as String,
      telemetryConfig: map['telemetryConfig'] == null
          ? null
          : TelemetryConfigMetastoreV1alpha.fromMap(
              (map['telemetryConfig'] as Map).cast<String, dynamic>(),
            ),
      tier: map['tier'] == null
          ? null
          : ServiceTierMetastoreV1alpha.fromValue(map['tier'] as String),
    );
  }
}
