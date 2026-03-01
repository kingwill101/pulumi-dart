// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_config.dart';
import 'hive_metastore_config.dart';
import 'maintenance_window.dart';
import 'metadata_integration.dart';
import 'network_config.dart';
import 'scaling_config.dart';
import 'service_database_type.dart';
import 'service_release_channel.dart';
import 'service_tier.dart';
import 'telemetry_config.dart';

/// {@template pulumi_metastore_v1_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_metastore_v1_service_args_doc}
class ServiceArgs {
  /// Immutable. The database type that the Metastore service stores its data.
  final pulumi.Input<ServiceDatabaseType>? databaseType;

  /// Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  final pulumi.Input<EncryptionConfig>? encryptionConfig;

  /// Configuration information specific to running Hive metastore software as the metastore service.
  final pulumi.Input<HiveMetastoreConfig>? hiveMetastoreConfig;

  /// User-defined labels for the metastore service.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  final pulumi.Input<MaintenanceWindow>? maintenanceWindow;

  /// Optional. The setting that defines how metastore metadata should be integrated with external services and systems.
  final pulumi.Input<MetadataIntegration>? metadataIntegration;

  /// Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  final pulumi.Input<String>? name;

  /// Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  final pulumi.Input<String>? network;

  /// The configuration specifying the network settings for the Dataproc Metastore service.
  final pulumi.Input<NetworkConfig>? networkConfig;

  /// The TCP port at which the metastore service is reached. Default: 9083.
  final pulumi.Input<int>? port;
  final pulumi.Input<String>? project;

  /// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  final pulumi.Input<ServiceReleaseChannel>? releaseChannel;

  /// Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  final pulumi.Input<String>? requestId;

  /// Scaling configuration of the metastore service.
  final pulumi.Input<ScalingConfig>? scalingConfig;

  /// Required. The ID of the metastore service, which is used as the final component of the metastore service's name.This value must be between 2 and 63 characters long inclusive, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  final pulumi.Input<String> serviceId;

  /// The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  final pulumi.Input<TelemetryConfig>? telemetryConfig;

  /// The tier of the service.
  final pulumi.Input<ServiceTier>? tier;

  /// Creates a new [ServiceArgs].
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
  ServiceArgs({
    ServiceDatabaseType? databaseType,
    EncryptionConfig? encryptionConfig,
    HiveMetastoreConfig? hiveMetastoreConfig,
    Map<String, String>? labels,
    String? location,
    MaintenanceWindow? maintenanceWindow,
    MetadataIntegration? metadataIntegration,
    String? name,
    String? network,
    NetworkConfig? networkConfig,
    int? port,
    String? project,
    ServiceReleaseChannel? releaseChannel,
    String? requestId,
    ScalingConfig? scalingConfig,
    required String serviceId,
    TelemetryConfig? telemetryConfig,
    ServiceTier? tier,
  }) : databaseType = pulumi.Input.asOptionalInput<ServiceDatabaseType>(
         databaseType,
       ),
       encryptionConfig = pulumi.Input.asOptionalInput<EncryptionConfig>(
         encryptionConfig,
       ),
       hiveMetastoreConfig = pulumi.Input.asOptionalInput<HiveMetastoreConfig>(
         hiveMetastoreConfig,
       ),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       maintenanceWindow = pulumi.Input.asOptionalInput<MaintenanceWindow>(
         maintenanceWindow,
       ),
       metadataIntegration = pulumi.Input.asOptionalInput<MetadataIntegration>(
         metadataIntegration,
       ),
       name = pulumi.Input.asOptionalInput<String>(name),
       network = pulumi.Input.asOptionalInput<String>(network),
       networkConfig = pulumi.Input.asOptionalInput<NetworkConfig>(
         networkConfig,
       ),
       port = pulumi.Input.asOptionalInput<int>(port),
       project = pulumi.Input.asOptionalInput<String>(project),
       releaseChannel = pulumi.Input.asOptionalInput<ServiceReleaseChannel>(
         releaseChannel,
       ),
       requestId = pulumi.Input.asOptionalInput<String>(requestId),
       scalingConfig = pulumi.Input.asOptionalInput<ScalingConfig>(
         scalingConfig,
       ),
       serviceId = pulumi.Input.asInput<String>(serviceId),
       telemetryConfig = pulumi.Input.asOptionalInput<TelemetryConfig>(
         telemetryConfig,
       ),
       tier = pulumi.Input.asOptionalInput<ServiceTier>(tier);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseType':
          ?pulumi.Input.mapOptionalInputValue<ServiceDatabaseType, String>(
            databaseType,
            (value) => value.value,
          ),
      'encryptionConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EncryptionConfig,
            Map<String, dynamic>
          >(encryptionConfig, (value) => value.toMap()),
      'hiveMetastoreConfig':
          ?pulumi.Input.mapOptionalInputValue<
            HiveMetastoreConfig,
            Map<String, dynamic>
          >(hiveMetastoreConfig, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'maintenanceWindow':
          ?pulumi.Input.mapOptionalInputValue<
            MaintenanceWindow,
            Map<String, dynamic>
          >(maintenanceWindow, (value) => value.toMap()),
      'metadataIntegration':
          ?pulumi.Input.mapOptionalInputValue<
            MetadataIntegration,
            Map<String, dynamic>
          >(metadataIntegration, (value) => value.toMap()),
      'name': ?name,
      'network': ?network,
      'networkConfig':
          ?pulumi.Input.mapOptionalInputValue<
            NetworkConfig,
            Map<String, dynamic>
          >(networkConfig, (value) => value.toMap()),
      'port': ?port,
      'project': ?project,
      'releaseChannel':
          ?pulumi.Input.mapOptionalInputValue<ServiceReleaseChannel, String>(
            releaseChannel,
            (value) => value.value,
          ),
      'requestId': ?requestId,
      'scalingConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ScalingConfig,
            Map<String, dynamic>
          >(scalingConfig, (value) => value.toMap()),
      'serviceId': serviceId,
      'telemetryConfig':
          ?pulumi.Input.mapOptionalInputValue<
            TelemetryConfig,
            Map<String, dynamic>
          >(telemetryConfig, (value) => value.toMap()),
      'tier': ?pulumi.Input.mapOptionalInputValue<ServiceTier, String>(
        tier,
        (value) => value.value,
      ),
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      databaseType: map['databaseType'] == null
          ? null
          : ServiceDatabaseType.fromValue(map['databaseType'] as String),
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : EncryptionConfig.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>(),
            ),
      hiveMetastoreConfig: map['hiveMetastoreConfig'] == null
          ? null
          : HiveMetastoreConfig.fromMap(
              (map['hiveMetastoreConfig'] as Map).cast<String, dynamic>(),
            ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      maintenanceWindow: map['maintenanceWindow'] == null
          ? null
          : MaintenanceWindow.fromMap(
              (map['maintenanceWindow'] as Map).cast<String, dynamic>(),
            ),
      metadataIntegration: map['metadataIntegration'] == null
          ? null
          : MetadataIntegration.fromMap(
              (map['metadataIntegration'] as Map).cast<String, dynamic>(),
            ),
      name: map['name'] == null ? null : map['name'] as String,
      network: map['network'] == null ? null : map['network'] as String,
      networkConfig: map['networkConfig'] == null
          ? null
          : NetworkConfig.fromMap(
              (map['networkConfig'] as Map).cast<String, dynamic>(),
            ),
      port: map['port'] == null ? null : map['port'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      releaseChannel: map['releaseChannel'] == null
          ? null
          : ServiceReleaseChannel.fromValue(map['releaseChannel'] as String),
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      scalingConfig: map['scalingConfig'] == null
          ? null
          : ScalingConfig.fromMap(
              (map['scalingConfig'] as Map).cast<String, dynamic>(),
            ),
      serviceId: map['serviceId'] as String,
      telemetryConfig: map['telemetryConfig'] == null
          ? null
          : TelemetryConfig.fromMap(
              (map['telemetryConfig'] as Map).cast<String, dynamic>(),
            ),
      tier: map['tier'] == null
          ? null
          : ServiceTier.fromValue(map['tier'] as String),
    );
  }
}
