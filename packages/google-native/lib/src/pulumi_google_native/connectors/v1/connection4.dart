import 'package:pulumi/pulumi.dart';
import 'auth_config_response.dart';
import 'config_variable_response.dart';
import 'connection_args4.dart';
import 'connection_status_response.dart';
import 'connector_version_infra_config_response.dart';
import 'connectors_log_config_response.dart';
import 'destination_config_response.dart';
import 'eventing_config_response.dart';
import 'eventing_runtime_data_response.dart';
import 'lock_config_response.dart';
import 'node_config_response3.dart';
import 'ssl_config_response4.dart';

/// Creates a new Connection in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Connection4 extends CustomResource {
  /// Optional. Configuration for establishing the connection's authentication with an external system.
  late final Output<AuthConfigResponse> authConfig;

  /// Optional. Configuration for configuring the connection with an external system.
  late final Output<List<ConfigVariableResponse>> configVariables;

  /// Required. Identifier to assign to the Connection. Must be unique within scope of the parent resource.
  late final Output<String> connectionId;

  /// Connection revision. This field is only updated when the connection is created or updated by User.
  late final Output<String> connectionRevision;

  /// Connector version on which the connection is created. The format is: projects/*/locations/*/providers/*/connectors/*/versions/* Only global location is supported for ConnectorVersion resource.
  late final Output<String> connectorVersion;

  /// Infra configs supported by Connector Version.
  late final Output<ConnectorVersionInfraConfigResponse>
      connectorVersionInfraConfig;

  /// Flag to mark the version indicating the launch stage.
  late final Output<String> connectorVersionLaunchStage;

  /// Created time.
  late final Output<String> createTime;

  /// Optional. Description of the resource.
  late final Output<String> description;

  /// Optional. Configuration of the Connector's destination. Only accepted for Connectors that accepts user defined destination(s).
  late final Output<List<DestinationConfigResponse>> destinationConfigs;

  /// GCR location where the envoy image is stored. formatted like: gcr.io/{bucketName}/{imageName}
  late final Output<String> envoyImageLocation;

  /// Optional. Eventing config of a connection
  late final Output<EventingConfigResponse> eventingConfig;

  /// Optional. Eventing enablement type. Will be nil if eventing is not enabled.
  late final Output<String> eventingEnablementType;

  /// Eventing Runtime Data.
  late final Output<EventingRuntimeDataResponse> eventingRuntimeData;

  /// GCR location where the runtime image is stored. formatted like: gcr.io/{bucketName}/{imageName}
  late final Output<String> imageLocation;

  /// Is trusted tester program enabled for the project.
  late final Output<bool> isTrustedTester;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// Optional. Configuration that indicates whether or not the Connection can be edited.
  late final Output<LockConfigResponse> lockConfig;

  /// Optional. Log configuration for the connection.
  late final Output<ConnectorsLogConfigResponse> logConfig;

  /// Resource name of the Connection. Format: projects/{project}/locations/{location}/connections/{connection}
  late final Output<String> name;

  /// Optional. Node configuration for the connection.
  late final Output<NodeConfigResponse3> nodeConfig;
  late final Output<String> project;

  /// Optional. Service account needed for runtime plane to access Google Cloud resources.
  late final Output<String> serviceAccount;

  /// The name of the Service Directory service name. Used for Private Harpoon to resolve the ILB address. e.g. "projects/cloud-connectors-e2e-testing/locations/us-central1/namespaces/istio-system/services/istio-ingressgateway-connectors"
  late final Output<String> serviceDirectory;

  /// Optional. Ssl config of a connection
  late final Output<SslConfigResponse4> sslConfig;

  /// Current status of the connection.
  late final Output<ConnectionStatusResponse> status;

  /// This subscription type enum states the subscription type of the project.
  late final Output<String> subscriptionType;

  /// Optional. Suspended indicates if a user has suspended a connection or not.
  late final Output<bool> suspended;

  /// Updated time.
  late final Output<String> updateTime;

  Connection4(
    String name, {
    ConnectionArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:connectors/v1:Connection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authConfig = registerOutput<AuthConfigResponse>('authConfig');
    this.configVariables =
        registerOutput<List<ConfigVariableResponse>>('configVariables');
    this.connectionId = registerOutput<String>('connectionId');
    this.connectionRevision = registerOutput<String>('connectionRevision');
    this.connectorVersion = registerOutput<String>('connectorVersion');
    this.connectorVersionInfraConfig =
        registerOutput<ConnectorVersionInfraConfigResponse>(
            'connectorVersionInfraConfig');
    this.connectorVersionLaunchStage =
        registerOutput<String>('connectorVersionLaunchStage');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.destinationConfigs =
        registerOutput<List<DestinationConfigResponse>>('destinationConfigs');
    this.envoyImageLocation = registerOutput<String>('envoyImageLocation');
    this.eventingConfig =
        registerOutput<EventingConfigResponse>('eventingConfig');
    this.eventingEnablementType =
        registerOutput<String>('eventingEnablementType');
    this.eventingRuntimeData =
        registerOutput<EventingRuntimeDataResponse>('eventingRuntimeData');
    this.imageLocation = registerOutput<String>('imageLocation');
    this.isTrustedTester = registerOutput<bool>('isTrustedTester');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.lockConfig = registerOutput<LockConfigResponse>('lockConfig');
    this.logConfig = registerOutput<ConnectorsLogConfigResponse>('logConfig');
    this.name = registerOutput<String>('name');
    this.nodeConfig = registerOutput<NodeConfigResponse3>('nodeConfig');
    this.project = registerOutput<String>('project');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.serviceDirectory = registerOutput<String>('serviceDirectory');
    this.sslConfig = registerOutput<SslConfigResponse4>('sslConfig');
    this.status = registerOutput<ConnectionStatusResponse>('status');
    this.subscriptionType = registerOutput<String>('subscriptionType');
    this.suspended = registerOutput<bool>('suspended');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
