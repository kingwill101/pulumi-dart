// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_config_response_metastore_v1alpha.dart';
import 'hive_metastore_config_response_metastore_v1alpha.dart';
import 'maintenance_window_response_metastore_v1alpha.dart';
import 'metadata_integration_response_metastore_v1alpha.dart';
import 'metadata_management_activity_response_metastore_v1alpha.dart';
import 'network_config_response_metastore_v1alpha.dart';
import 'scaling_config_response_metastore_v1alpha.dart';
import 'telemetry_config_response_metastore_v1alpha.dart';

/// Result data returned by getService.
class GetServiceMetastoreV1alphaResult {
  /// A Cloud Storage URI (starting with gs://) that specifies where artifacts related to the metastore service are stored.
  final String artifactGcsUri;
  /// The time when the metastore service was created.
  final String createTime;
  /// Immutable. The database type that the Metastore service stores its data.
  final String databaseType;
  /// Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  final EncryptionConfigResponseMetastoreV1alpha encryptionConfig;
  /// The URI of the endpoint used to access the metastore service.
  final String endpointUri;
  /// Configuration information specific to running Hive metastore software as the metastore service.
  final HiveMetastoreConfigResponseMetastoreV1alpha hiveMetastoreConfig;
  /// User-defined labels for the metastore service.
  final Map<String, String> labels;
  /// The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  final MaintenanceWindowResponseMetastoreV1alpha maintenanceWindow;
  /// Optional. The setting that defines how metastore metadata should be integrated with external services and systems.
  final MetadataIntegrationResponseMetastoreV1alpha metadataIntegration;
  /// The metadata management activities of the metastore service.
  final MetadataManagementActivityResponseMetastoreV1alpha metadataManagementActivity;
  /// Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  final String name;
  /// Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  final String network;
  /// The configuration specifying the network settings for the Dataproc Metastore service.
  final NetworkConfigResponseMetastoreV1alpha networkConfig;
  /// The TCP port at which the metastore service is reached. Default: 9083.
  final int port;
  /// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  final String releaseChannel;
  /// Scaling configuration of the metastore service.
  final ScalingConfigResponseMetastoreV1alpha scalingConfig;
  /// The current state of the metastore service.
  final String state;
  /// Additional information about the current state of the metastore service, if available.
  final String stateMessage;
  /// The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  final TelemetryConfigResponseMetastoreV1alpha telemetryConfig;
  /// The tier of the service.
  final String tier;
  /// The globally unique resource identifier of the metastore service.
  final String uid;
  /// The time when the metastore service was last updated.
  final String updateTime;

  /// Creates a new [GetServiceMetastoreV1alphaResult].
  /// [artifactGcsUri] A Cloud Storage URI (starting with gs://) that specifies where artifacts related to the metastore service are stored.
  /// [createTime] The time when the metastore service was created.
  /// [databaseType] Immutable. The database type that the Metastore service stores its data.
  /// [encryptionConfig] Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  /// [endpointUri] The URI of the endpoint used to access the metastore service.
  /// [hiveMetastoreConfig] Configuration information specific to running Hive metastore software as the metastore service.
  /// [labels] User-defined labels for the metastore service.
  /// [maintenanceWindow] The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  /// [metadataIntegration] Optional. The setting that defines how metastore metadata should be integrated with external services and systems.
  /// [metadataManagementActivity] The metadata management activities of the metastore service.
  /// [name] Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  /// [network] Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  /// [networkConfig] The configuration specifying the network settings for the Dataproc Metastore service.
  /// [port] The TCP port at which the metastore service is reached. Default: 9083.
  /// [releaseChannel] Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  /// [scalingConfig] Scaling configuration of the metastore service.
  /// [state] The current state of the metastore service.
  /// [stateMessage] Additional information about the current state of the metastore service, if available.
  /// [telemetryConfig] The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  /// [tier] The tier of the service.
  /// [uid] The globally unique resource identifier of the metastore service.
  /// [updateTime] The time when the metastore service was last updated.
  GetServiceMetastoreV1alphaResult({
    required this.artifactGcsUri,
    required this.createTime,
    required this.databaseType,
    required this.encryptionConfig,
    required this.endpointUri,
    required this.hiveMetastoreConfig,
    required this.labels,
    required this.maintenanceWindow,
    required this.metadataIntegration,
    required this.metadataManagementActivity,
    required this.name,
    required this.network,
    required this.networkConfig,
    required this.port,
    required this.releaseChannel,
    required this.scalingConfig,
    required this.state,
    required this.stateMessage,
    required this.telemetryConfig,
    required this.tier,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactGcsUri': artifactGcsUri,
      'createTime': createTime,
      'databaseType': databaseType,
      'encryptionConfig': encryptionConfig.toMap(),
      'endpointUri': endpointUri,
      'hiveMetastoreConfig': hiveMetastoreConfig.toMap(),
      'labels': labels,
      'maintenanceWindow': maintenanceWindow.toMap(),
      'metadataIntegration': metadataIntegration.toMap(),
      'metadataManagementActivity': metadataManagementActivity.toMap(),
      'name': name,
      'network': network,
      'networkConfig': networkConfig.toMap(),
      'port': port,
      'releaseChannel': releaseChannel,
      'scalingConfig': scalingConfig.toMap(),
      'state': state,
      'stateMessage': stateMessage,
      'telemetryConfig': telemetryConfig.toMap(),
      'tier': tier,
      'uid': uid,
      'updateTime': updateTime,
    };
  }

  factory GetServiceMetastoreV1alphaResult.fromMap(Map<String, dynamic> map) {
    return GetServiceMetastoreV1alphaResult(
      artifactGcsUri: map['artifactGcsUri'] as String,
      createTime: map['createTime'] as String,
      databaseType: map['databaseType'] as String,
      encryptionConfig: EncryptionConfigResponseMetastoreV1alpha.fromMap((map['encryptionConfig'] as Map).cast<String, dynamic>()),
      endpointUri: map['endpointUri'] as String,
      hiveMetastoreConfig: HiveMetastoreConfigResponseMetastoreV1alpha.fromMap((map['hiveMetastoreConfig'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      maintenanceWindow: MaintenanceWindowResponseMetastoreV1alpha.fromMap((map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      metadataIntegration: MetadataIntegrationResponseMetastoreV1alpha.fromMap((map['metadataIntegration'] as Map).cast<String, dynamic>()),
      metadataManagementActivity: MetadataManagementActivityResponseMetastoreV1alpha.fromMap((map['metadataManagementActivity'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      network: map['network'] as String,
      networkConfig: NetworkConfigResponseMetastoreV1alpha.fromMap((map['networkConfig'] as Map).cast<String, dynamic>()),
      port: map['port'] as int,
      releaseChannel: map['releaseChannel'] as String,
      scalingConfig: ScalingConfigResponseMetastoreV1alpha.fromMap((map['scalingConfig'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
      telemetryConfig: TelemetryConfigResponseMetastoreV1alpha.fromMap((map['telemetryConfig'] as Map).cast<String, dynamic>()),
      tier: map['tier'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

