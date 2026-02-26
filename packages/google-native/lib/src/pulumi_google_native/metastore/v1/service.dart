import 'package:pulumi/pulumi.dart';
import 'encryption_config_response11.dart';
import 'hive_metastore_config_response.dart';
import 'maintenance_window_response6.dart';
import 'metadata_integration_response.dart';
import 'metadata_management_activity_response.dart';
import 'network_config_response16.dart';
import 'scaling_config_response.dart';
import 'service_args.dart';
import 'telemetry_config_response.dart';

/// Creates a metastore service in a project and location.
class Service extends CustomResource {
  /// A Cloud Storage URI (starting with gs://) that specifies where artifacts related to the metastore service are stored.
  late final Output<String> artifactGcsUri;

  /// The time when the metastore service was created.
  late final Output<String> createTime;

  /// Immutable. The database type that the Metastore service stores its data.
  late final Output<String> databaseType;

  /// Immutable. Information used to configure the Dataproc Metastore service to encrypt customer data at rest. Cannot be updated.
  late final Output<EncryptionConfigResponse11> encryptionConfig;

  /// The URI of the endpoint used to access the metastore service.
  late final Output<String> endpointUri;

  /// Configuration information specific to running Hive metastore software as the metastore service.
  late final Output<HiveMetastoreConfigResponse> hiveMetastoreConfig;

  /// User-defined labels for the metastore service.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The one hour maintenance window of the metastore service. This specifies when the service can be restarted for maintenance purposes in UTC time. Maintenance window is not needed for services with the SPANNER database type.
  late final Output<MaintenanceWindowResponse6> maintenanceWindow;

  /// Optional. The setting that defines how metastore metadata should be integrated with external services and systems.
  late final Output<MetadataIntegrationResponse> metadataIntegration;

  /// The metadata management activities of the metastore service.
  late final Output<MetadataManagementActivityResponse>
      metadataManagementActivity;

  /// Immutable. The relative resource name of the metastore service, in the following format:projects/{project_number}/locations/{location_id}/services/{service_id}.
  late final Output<String> name;

  /// Immutable. The relative resource name of the VPC network on which the instance can be accessed. It is specified in the following form:projects/{project_number}/global/networks/{network_id}.
  late final Output<String> network;

  /// The configuration specifying the network settings for the Dataproc Metastore service.
  late final Output<NetworkConfigResponse16> networkConfig;

  /// The TCP port at which the metastore service is reached. Default: 9083.
  late final Output<int> port;
  late final Output<String> project;

  /// Immutable. The release channel of the service. If unspecified, defaults to STABLE.
  late final Output<String> releaseChannel;

  /// Optional. A request ID. Specify a unique request ID to allow the server to ignore the request if it has completed. The server will ignore subsequent requests that provide a duplicate request ID for at least 60 minutes after the first request.For example, if an initial request times out, followed by another request with the same request ID, the server ignores the second request to prevent the creation of duplicate commitments.The request ID must be a valid UUID (https://en.wikipedia.org/wiki/Universally_unique_identifier#Format) A zero UUID (00000000-0000-0000-0000-000000000000) is not supported.
  late final Output<String?> requestId;

  /// Scaling configuration of the metastore service.
  late final Output<ScalingConfigResponse> scalingConfig;

  /// Required. The ID of the metastore service, which is used as the final component of the metastore service's name.This value must be between 2 and 63 characters long inclusive, begin with a letter, end with a letter or number, and consist of alpha-numeric ASCII characters or hyphens.
  late final Output<String> serviceId;

  /// The current state of the metastore service.
  late final Output<String> state;

  /// Additional information about the current state of the metastore service, if available.
  late final Output<String> stateMessage;

  /// The configuration specifying telemetry settings for the Dataproc Metastore service. If unspecified defaults to JSON.
  late final Output<TelemetryConfigResponse> telemetryConfig;

  /// The tier of the service.
  late final Output<String> tier;

  /// The globally unique resource identifier of the metastore service.
  late final Output<String> uid;

  /// The time when the metastore service was last updated.
  late final Output<String> updateTime;

  Service(
    String name, {
    ServiceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:metastore/v1:Service',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.artifactGcsUri = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.databaseType = Output.createUnknown<String>();
    this.encryptionConfig = Output.createUnknown<EncryptionConfigResponse11>();
    this.endpointUri = Output.createUnknown<String>();
    this.hiveMetastoreConfig =
        Output.createUnknown<HiveMetastoreConfigResponse>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.maintenanceWindow = Output.createUnknown<MaintenanceWindowResponse6>();
    this.metadataIntegration =
        Output.createUnknown<MetadataIntegrationResponse>();
    this.metadataManagementActivity =
        Output.createUnknown<MetadataManagementActivityResponse>();
    this.name = Output.createUnknown<String>();
    this.network = Output.createUnknown<String>();
    this.networkConfig = Output.createUnknown<NetworkConfigResponse16>();
    this.port = Output.createUnknown<int>();
    this.project = Output.createUnknown<String>();
    this.releaseChannel = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.scalingConfig = Output.createUnknown<ScalingConfigResponse>();
    this.serviceId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.stateMessage = Output.createUnknown<String>();
    this.telemetryConfig = Output.createUnknown<TelemetryConfigResponse>();
    this.tier = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
