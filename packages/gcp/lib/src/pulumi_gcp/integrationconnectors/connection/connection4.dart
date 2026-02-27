import 'package:pulumi/pulumi.dart';
import '../connection_auth_config/connection_auth_config.dart';
import '../connection_config_variable/connection_config_variable.dart';
import '../connection_connector_version_infra_config/connection_connector_version_infra_config.dart';
import '../connection_destination_config/connection_destination_config.dart';
import '../connection_eventing_config/connection_eventing_config.dart';
import '../connection_eventing_runtime_data/connection_eventing_runtime_data.dart';
import '../connection_lock_config/connection_lock_config.dart';
import '../connection_log_config/connection_log_config.dart';
import '../connection_node_config/connection_node_config.dart';
import '../connection_ssl_config/connection_ssl_config.dart';
import '../connection_status/connection_status.dart';
import 'connection_args4.dart';

/// An Integration connectors Connection.
///
///
/// To get more information about Connection, see:
///
/// * [API documentation](https://cloud.google.com/integration-connectors/docs/reference/rest/v1/projects.locations.connections)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/integration-connectors/docs/createconnection)
///
/// ## Example Usage
///
/// ### Integration Connectors Connection Basic
///
///
///
/// ### Integration Connectors Connection Advanced
///
///
///
///
/// ## Import
///
/// Connection can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/connections/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Connection can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:integrationconnectors/connection:Connection default projects/{{project}}/locations/{{location}}/connections/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:integrationconnectors/connection:Connection default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:integrationconnectors/connection:Connection default {{location}}/{{name}}
/// ```
class Connection4 extends CustomResource {
  /// authConfig for the connection.
  /// Structure is documented below.
  late final Output<ConnectionAuthConfig?> authConfig;

  /// Config Variables for the connection.
  /// Structure is documented below.
  late final Output<List<ConnectionConfigVariable>?> configVariables;

  /// Connection revision. This field is only updated when the connection is created or updated by User.
  late final Output<String> connectionRevision;

  /// connectorVersion of the Connector.
  late final Output<String> connectorVersion;

  /// This configuration provides infra configs like rate limit threshold which need to be configurable for every connector version.
  /// Structure is documented below.
  late final Output<List<ConnectionConnectorVersionInfraConfig>>
      connectorVersionInfraConfigs;

  /// Flag to mark the version indicating the launch stage.
  late final Output<String> connectorVersionLaunchStage;

  /// Time the Namespace was created in UTC.
  late final Output<String> createTime;

  /// An arbitrary description for the Connection.
  late final Output<String?> description;

  /// Define the Connectors target endpoint.
  /// Structure is documented below.
  late final Output<List<ConnectionDestinationConfig>?> destinationConfigs;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Eventing Configuration of a connection
  /// Structure is documented below.
  late final Output<ConnectionEventingConfig?> eventingConfig;

  /// Eventing enablement type. Will be nil if eventing is not enabled.
  /// Possible values are: `EVENTING_AND_CONNECTION`, `ONLY_EVENTING`.
  late final Output<String?> eventingEnablementType;

  /// Eventing Runtime Data.
  /// Structure is documented below.
  late final Output<List<ConnectionEventingRuntimeData>> eventingRuntimeDatas;

  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Location in which Connection needs to be created.
  late final Output<String> location;

  /// Determines whether or no a connection is locked. If locked, a reason must be specified.
  /// Structure is documented below.
  late final Output<ConnectionLockConfig?> lockConfig;

  /// Log configuration for the connection.
  /// Structure is documented below.
  late final Output<ConnectionLogConfig?> logConfig;

  /// Name of Connection needs to be created.
  late final Output<String> name;

  /// Node configuration for the connection.
  /// Structure is documented below.
  late final Output<ConnectionNodeConfig> nodeConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Service account needed for runtime plane to access Google Cloud resources.
  late final Output<String> serviceAccount;

  /// The name of the Service Directory service name. Used for Private Harpoon to resolve the ILB address.
  /// e.g. "projects/cloud-connectors-e2e-testing/locations/us-central1/namespaces/istio-system/services/istio-ingressgateway-connectors"
  late final Output<String> serviceDirectory;

  /// SSL Configuration of a connection
  /// Structure is documented below.
  late final Output<ConnectionSslConfig?> sslConfig;

  /// (Output)
  /// Current status of eventing.
  /// Structure is documented below.
  late final Output<List<ConnectionStatus>> statuses;

  /// This subscription type enum states the subscription type of the project.
  late final Output<String> subscriptionType;

  /// Suspended indicates if a user has suspended a connection or not.
  late final Output<bool?> suspended;

  /// Time the Namespace was updated in UTC.
  late final Output<String> updateTime;

  Connection4(
    String name, {
    ConnectionArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:integrationconnectors/connection:Connection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authConfig = registerOutput<ConnectionAuthConfig?>('authConfig');
    this.configVariables =
        registerOutput<List<ConnectionConfigVariable>?>('configVariables');
    this.connectionRevision = registerOutput<String>('connectionRevision');
    this.connectorVersion = registerOutput<String>('connectorVersion');
    this.connectorVersionInfraConfigs =
        registerOutput<List<ConnectionConnectorVersionInfraConfig>>(
            'connectorVersionInfraConfigs');
    this.connectorVersionLaunchStage =
        registerOutput<String>('connectorVersionLaunchStage');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.destinationConfigs =
        registerOutput<List<ConnectionDestinationConfig>?>(
            'destinationConfigs');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.eventingConfig =
        registerOutput<ConnectionEventingConfig?>('eventingConfig');
    this.eventingEnablementType =
        registerOutput<String?>('eventingEnablementType');
    this.eventingRuntimeDatas =
        registerOutput<List<ConnectionEventingRuntimeData>>(
            'eventingRuntimeDatas');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.lockConfig = registerOutput<ConnectionLockConfig?>('lockConfig');
    this.logConfig = registerOutput<ConnectionLogConfig?>('logConfig');
    this.name = registerOutput<String>('name');
    this.nodeConfig = registerOutput<ConnectionNodeConfig>('nodeConfig');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.serviceDirectory = registerOutput<String>('serviceDirectory');
    this.sslConfig = registerOutput<ConnectionSslConfig?>('sslConfig');
    this.statuses = registerOutput<List<ConnectionStatus>>('statuses');
    this.subscriptionType = registerOutput<String>('subscriptionType');
    this.suspended = registerOutput<bool?>('suspended');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
