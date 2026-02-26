// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_config_response12.dart';
import 'hive_metastore_config_response2.dart';
import 'maintenance_window_response7.dart';
import 'metadata_integration_response2.dart';
import 'metadata_management_activity_response2.dart';
import 'network_config_response17.dart';
import 'scaling_config_response2.dart';
import 'telemetry_config_response2.dart';

/// Result data returned by getService.
class GetServiceResult2 {
  /// A Cloud Storage URI (starting with gs://) that specifies where artifacts related to the metastore service are stored.
  final String artifactGcsUri;

  /// The time when the metastore service was created.
  final String createTime;

  /// Immutable. The database type that the Metastore service stores its data.
  final String databaseType;

  /// Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  final EncryptionConfigResponse12 encryptionConfig;

  /// The URI of the endpoint used to access the metastore service.
  final String endpointUri;

  /// Configuration information specific to running Hive metastore software as the metastore service.
  final HiveMetastoreConfigResponse2 hiveMetastoreConfig;

  /// User-defined labels for the metastore service.
  final Map<String, String> labels;

  /// The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  final MaintenanceWindowResponse7 maintenanceWindow;

  /// Optional. The setting that defines how metastore metadata should be integrated with external services and systems.
  final MetadataIntegrationResponse2 metadataIntegration;

  /// The metadata management activities of the metastore service.
  final MetadataManagementActivityResponse2 metadataManagementActivity;

  /// Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  final String name;

  /// Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  final String network;

  /// The configuration specifying the network settings for the Dataproc Metastore service.
  final NetworkConfigResponse17 networkConfig;

  /// The TCP port at which the metastore service is reached. Default: 9083.
  final int port;

  /// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  final String releaseChannel;

  /// Scaling configuration of the metastore service.
  final ScalingConfigResponse2 scalingConfig;

  /// The current state of the metastore service.
  final String state;

  /// Additional information about the current state of the metastore service, if available.
  final String stateMessage;

  /// The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  final TelemetryConfigResponse2 telemetryConfig;

  /// The tier of the service.
  final String tier;

  /// The globally unique resource identifier of the metastore service.
  final String uid;

  /// The time when the metastore service was last updated.
  final String updateTime;

  GetServiceResult2({
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
    final map = <String, dynamic>{};
    map['artifactGcsUri'] = artifactGcsUri;
    map['createTime'] = createTime;
    map['databaseType'] = databaseType;
    map['encryptionConfig'] = encryptionConfig.toMap();
    map['endpointUri'] = endpointUri;
    map['hiveMetastoreConfig'] = hiveMetastoreConfig.toMap();
    map['labels'] = labels;
    map['maintenanceWindow'] = maintenanceWindow.toMap();
    map['metadataIntegration'] = metadataIntegration.toMap();
    map['metadataManagementActivity'] = metadataManagementActivity.toMap();
    map['name'] = name;
    map['network'] = network;
    map['networkConfig'] = networkConfig.toMap();
    map['port'] = port;
    map['releaseChannel'] = releaseChannel;
    map['scalingConfig'] = scalingConfig.toMap();
    map['state'] = state;
    map['stateMessage'] = stateMessage;
    map['telemetryConfig'] = telemetryConfig.toMap();
    map['tier'] = tier;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetServiceResult2.fromMap(Map<String, dynamic> map) {
    return GetServiceResult2(
      artifactGcsUri: map['artifactGcsUri'] as String,
      createTime: map['createTime'] as String,
      databaseType: map['databaseType'] as String,
      encryptionConfig: EncryptionConfigResponse12.fromMap(
          (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      endpointUri: map['endpointUri'] as String,
      hiveMetastoreConfig: HiveMetastoreConfigResponse2.fromMap(
          (map['hiveMetastoreConfig'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      maintenanceWindow: MaintenanceWindowResponse7.fromMap(
          (map['maintenanceWindow'] as Map).cast<String, dynamic>()),
      metadataIntegration: MetadataIntegrationResponse2.fromMap(
          (map['metadataIntegration'] as Map).cast<String, dynamic>()),
      metadataManagementActivity: MetadataManagementActivityResponse2.fromMap(
          (map['metadataManagementActivity'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      network: map['network'] as String,
      networkConfig: NetworkConfigResponse17.fromMap(
          (map['networkConfig'] as Map).cast<String, dynamic>()),
      port: map['port'] as int,
      releaseChannel: map['releaseChannel'] as String,
      scalingConfig: ScalingConfigResponse2.fromMap(
          (map['scalingConfig'] as Map).cast<String, dynamic>()),
      state: map['state'] as String,
      stateMessage: map['stateMessage'] as String,
      telemetryConfig: TelemetryConfigResponse2.fromMap(
          (map['telemetryConfig'] as Map).cast<String, dynamic>()),
      tier: map['tier'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
