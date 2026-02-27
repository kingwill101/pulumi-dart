import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_config_response_metastore_v1alpha.dart';
import 'hive_metastore_config_response_metastore_v1alpha.dart';
import 'maintenance_window_response_metastore_v1alpha.dart';
import 'metadata_integration_response_metastore_v1alpha.dart';
import 'metadata_management_activity_response_metastore_v1alpha.dart';
import 'network_config_response_metastore_v1alpha.dart';
import 'scaling_config_response_metastore_v1alpha.dart';
import 'service_metastore_v1alpha_args.dart';
import 'telemetry_config_response_metastore_v1alpha.dart';

/// Creates a metastore service in a project and location.
class ServiceMetastoreV1alpha extends pulumi.CustomResource {
  /// A Cloud Storage URI (starting with gs://) that specifies where artifacts related to the metastore service are stored.
  late final pulumi.Output<String> artifactGcsUri;

  /// The time when the metastore service was created.
  late final pulumi.Output<String> createTime;

  /// Immutable. The database type that the Metastore service stores its data.
  late final pulumi.Output<String> databaseType;

  /// Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  late final pulumi.Output<EncryptionConfigResponseMetastoreV1alpha>
      encryptionConfig;

  /// The URI of the endpoint used to access the metastore service.
  late final pulumi.Output<String> endpointUri;

  /// Configuration information specific to running Hive metastore software as the metastore service.
  late final pulumi.Output<HiveMetastoreConfigResponseMetastoreV1alpha>
      hiveMetastoreConfig;

  /// User-defined labels for the metastore service.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  late final pulumi.Output<MaintenanceWindowResponseMetastoreV1alpha>
      maintenanceWindow;

  /// Optional. The setting that defines how metastore metadata should be integrated with external services and systems.
  late final pulumi.Output<MetadataIntegrationResponseMetastoreV1alpha>
      metadataIntegration;

  /// The metadata management activities of the metastore service.
  late final pulumi.Output<MetadataManagementActivityResponseMetastoreV1alpha>
      metadataManagementActivity;

  /// Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  late final pulumi.Output<String> name;

  /// Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  late final pulumi.Output<String> network;

  /// The configuration specifying the network settings for the Dataproc Metastore service.
  late final pulumi.Output<NetworkConfigResponseMetastoreV1alpha> networkConfig;

  /// The TCP port at which the metastore service is reached. Default: 9083.
  late final pulumi.Output<int> port;
  late final pulumi.Output<String> project;

  /// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  late final pulumi.Output<String> releaseChannel;

  /// Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  late final pulumi.Output<String?> requestId;

  /// Scaling configuration of the metastore service.
  late final pulumi.Output<ScalingConfigResponseMetastoreV1alpha> scalingConfig;

  /// Required. The ID of the metastore service, which is used as the final component of the metastore service's name.This value must be between 2 and 63 characters long inclusive, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  late final pulumi.Output<String> serviceId;

  /// The current state of the metastore service.
  late final pulumi.Output<String> state;

  /// Additional information about the current state of the metastore service, if available.
  late final pulumi.Output<String> stateMessage;

  /// The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  late final pulumi.Output<TelemetryConfigResponseMetastoreV1alpha>
      telemetryConfig;

  /// The tier of the service.
  late final pulumi.Output<String> tier;

  /// The globally unique resource identifier of the metastore service.
  late final pulumi.Output<String> uid;

  /// The time when the metastore service was last updated.
  late final pulumi.Output<String> updateTime;

  ServiceMetastoreV1alpha(
    String name, {
    ServiceMetastoreV1alphaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:metastore/v1alpha:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.artifactGcsUri = registerOutput<String>('artifactGcsUri');
    this.createTime = registerOutput<String>('createTime');
    this.databaseType = registerOutput<String>('databaseType');
    this.encryptionConfig =
        registerOutput<EncryptionConfigResponseMetastoreV1alpha>(
            'encryptionConfig');
    this.endpointUri = registerOutput<String>('endpointUri');
    this.hiveMetastoreConfig =
        registerOutput<HiveMetastoreConfigResponseMetastoreV1alpha>(
            'hiveMetastoreConfig');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.maintenanceWindow =
        registerOutput<MaintenanceWindowResponseMetastoreV1alpha>(
            'maintenanceWindow');
    this.metadataIntegration =
        registerOutput<MetadataIntegrationResponseMetastoreV1alpha>(
            'metadataIntegration');
    this.metadataManagementActivity =
        registerOutput<MetadataManagementActivityResponseMetastoreV1alpha>(
            'metadataManagementActivity');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.networkConfig =
        registerOutput<NetworkConfigResponseMetastoreV1alpha>('networkConfig');
    this.port = registerOutput<int>('port');
    this.project = registerOutput<String>('project');
    this.releaseChannel = registerOutput<String>('releaseChannel');
    this.requestId = registerOutput<String?>('requestId');
    this.scalingConfig =
        registerOutput<ScalingConfigResponseMetastoreV1alpha>('scalingConfig');
    this.serviceId = registerOutput<String>('serviceId');
    this.state = registerOutput<String>('state');
    this.stateMessage = registerOutput<String>('stateMessage');
    this.telemetryConfig =
        registerOutput<TelemetryConfigResponseMetastoreV1alpha>(
            'telemetryConfig');
    this.tier = registerOutput<String>('tier');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
