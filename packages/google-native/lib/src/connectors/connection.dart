import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_response.dart';
import 'config_variable_response.dart';
import 'connection_args.dart';
import 'connection_status_response.dart';
import 'connector_version_infra_config_response.dart';
import 'connectors_log_config_response.dart';
import 'destination_config_response.dart';
import 'eventing_config_response.dart';
import 'eventing_runtime_data_response.dart';
import 'lock_config_response.dart';
import 'node_config_response.dart';
import 'ssl_config_response.dart';

/// Creates a new Connection in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Connection extends pulumi.CustomResource {
  /// Optional. Configuration for establishing the connection's authentication with an external system.
  late final pulumi.Output<AuthConfigResponse> authConfig;

  /// Optional. Configuration for configuring the connection with an external system.
  late final pulumi.Output<List<ConfigVariableResponse>> configVariables;

  /// Required. Identifier to assign to the Connection. Must be unique within scope of the parent resource.
  late final pulumi.Output<String> connectionId;

  /// Connection revision. This field is only updated when the connection is created or updated by User.
  late final pulumi.Output<String> connectionRevision;

  /// Connector version on which the connection is created. The format is: projects/*/locations/*/providers/*/connectors/*/versions/* Only global location is supported for ConnectorVersion resource.
  late final pulumi.Output<String> connectorVersion;

  /// Infra configs supported by Connector Version.
  late final pulumi.Output<ConnectorVersionInfraConfigResponse>
      connectorVersionInfraConfig;

  /// Flag to mark the version indicating the launch stage.
  late final pulumi.Output<String> connectorVersionLaunchStage;

  /// Created time.
  late final pulumi.Output<String> createTime;

  /// Optional. Description of the resource.
  late final pulumi.Output<String> description;

  /// Optional. Configuration of the Connector's destination. Only accepted for Connectors that accepts user defined destination(s).
  late final pulumi.Output<List<DestinationConfigResponse>> destinationConfigs;

  /// GCR location where the envoy image is stored. formatted like: gcr.io/{bucketName}/{imageName}
  late final pulumi.Output<String> envoyImageLocation;

  /// Optional. Eventing config of a connection
  late final pulumi.Output<EventingConfigResponse> eventingConfig;

  /// Optional. Eventing enablement type. Will be nil if eventing is not enabled.
  late final pulumi.Output<String> eventingEnablementType;

  /// Eventing Runtime Data.
  late final pulumi.Output<EventingRuntimeDataResponse> eventingRuntimeData;

  /// GCR location where the runtime image is stored. formatted like: gcr.io/{bucketName}/{imageName}
  late final pulumi.Output<String> imageLocation;

  /// Is trusted tester program enabled for the project.
  late final pulumi.Output<bool> isTrustedTester;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// Optional. Configuration that indicates whether or not the Connection can be edited.
  late final pulumi.Output<LockConfigResponse> lockConfig;

  /// Optional. Log configuration for the connection.
  late final pulumi.Output<ConnectorsLogConfigResponse> logConfig;

  /// Resource name of the Connection. Format: projects/{project}/locations/{location}/connections/{connection}
  late final pulumi.Output<String> name;

  /// Optional. Node configuration for the connection.
  late final pulumi.Output<NodeConfigResponse> nodeConfig;
  late final pulumi.Output<String> project;

  /// Optional. Service account needed for runtime plane to access Google Cloud resources.
  late final pulumi.Output<String> serviceAccount;

  /// The name of the Service Directory service name. Used for Private Harpoon to resolve the ILB address. e.g. "projects/cloud-connectors-e2e-testing/locations/us-central1/namespaces/istio-system/services/istio-ingressgateway-connectors"
  late final pulumi.Output<String> serviceDirectory;

  /// Optional. Ssl config of a connection
  late final pulumi.Output<SslConfigResponse> sslConfig;

  /// Current status of the connection.
  late final pulumi.Output<ConnectionStatusResponse> status;

  /// This subscription type enum states the subscription type of the project.
  late final pulumi.Output<String> subscriptionType;

  /// Optional. Suspended indicates if a user has suspended a connection or not.
  late final pulumi.Output<bool> suspended;

  /// Updated time.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Connection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connection]. {@macro pulumi_connectors_v1_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connection(
    String name, {
    ConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:connectors/v1:Connection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
    this.nodeConfig = registerOutput<NodeConfigResponse>('nodeConfig');
    this.project = registerOutput<String>('project');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.serviceDirectory = registerOutput<String>('serviceDirectory');
    this.sslConfig = registerOutput<SslConfigResponse>('sslConfig');
    this.status = registerOutput<ConnectionStatusResponse>('status');
    this.subscriptionType = registerOutput<String>('subscriptionType');
    this.suspended = registerOutput<bool>('suspended');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
