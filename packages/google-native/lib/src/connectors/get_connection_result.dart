// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_response.dart';
import 'config_variable_response.dart';
import 'connection_status_response.dart';
import 'connector_version_infra_config_response.dart';
import 'connectors_log_config_response.dart';
import 'destination_config_response.dart';
import 'eventing_config_response.dart';
import 'eventing_runtime_data_response.dart';
import 'lock_config_response.dart';
import 'node_config_response.dart';
import 'ssl_config_response.dart';

/// Result data returned by getConnection.
class GetConnectionResult {
  /// Optional. Configuration for establishing the connection's authentication with an external system.
  final AuthConfigResponse authConfig;

  /// Optional. Configuration for configuring the connection with an external system.
  final List<ConfigVariableResponse> configVariables;

  /// Connection revision. This field is only updated when the connection is created or updated by User.
  final String connectionRevision;

  /// Connector version on which the connection is created. The format is: projects/*/locations/*/providers/*/connectors/*/versions/* Only global location is supported for ConnectorVersion resource.
  final String connectorVersion;

  /// Infra configs supported by Connector Version.
  final ConnectorVersionInfraConfigResponse connectorVersionInfraConfig;

  /// Flag to mark the version indicating the launch stage.
  final String connectorVersionLaunchStage;

  /// Created time.
  final String createTime;

  /// Optional. Description of the resource.
  final String description;

  /// Optional. Configuration of the Connector's destination. Only accepted for Connectors that accepts user defined destination(s).
  final List<DestinationConfigResponse> destinationConfigs;

  /// GCR location where the envoy image is stored. formatted like: gcr.io/{bucketName}/{imageName}
  final String envoyImageLocation;

  /// Optional. Eventing config of a connection
  final EventingConfigResponse eventingConfig;

  /// Optional. Eventing enablement type. Will be nil if eventing is not enabled.
  final String eventingEnablementType;

  /// Eventing Runtime Data.
  final EventingRuntimeDataResponse eventingRuntimeData;

  /// GCR location where the runtime image is stored. formatted like: gcr.io/{bucketName}/{imageName}
  final String imageLocation;

  /// Is trusted tester program enabled for the project.
  final bool isTrustedTester;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String> labels;

  /// Optional. Configuration that indicates whether or not the Connection can be edited.
  final LockConfigResponse lockConfig;

  /// Optional. Log configuration for the connection.
  final ConnectorsLogConfigResponse logConfig;

  /// Resource name of the Connection. Format: projects/{project}/locations/{location}/connections/{connection}
  final String name;

  /// Optional. Node configuration for the connection.
  final NodeConfigResponse nodeConfig;

  /// Optional. Service account needed for runtime plane to access Google Cloud resources.
  final String serviceAccount;

  /// The name of the Service Directory service name. Used for Private Harpoon to resolve the ILB address. e.g. "projects/cloud-connectors-e2e-testing/locations/us-central1/namespaces/istio-system/services/istio-ingressgateway-connectors"
  final String serviceDirectory;

  /// Optional. Ssl config of a connection
  final SslConfigResponse sslConfig;

  /// Current status of the connection.
  final ConnectionStatusResponse status;

  /// This subscription type enum states the subscription type of the project.
  final String subscriptionType;

  /// Optional. Suspended indicates if a user has suspended a connection or not.
  final bool suspended;

  /// Updated time.
  final String updateTime;

  /// Creates a new [GetConnectionResult].
  /// [authConfig] Optional. Configuration for establishing the connection's authentication with an external system.
  /// [configVariables] Optional. Configuration for configuring the connection with an external system.
  /// [connectionRevision] Connection revision. This field is only updated when the connection is created or updated by User.
  /// [connectorVersion] Connector version on which the connection is created. The format is: projects/*/locations/*/providers/*/connectors/*/versions/* Only global location is supported for ConnectorVersion resource.
  /// [connectorVersionInfraConfig] Infra configs supported by Connector Version.
  /// [connectorVersionLaunchStage] Flag to mark the version indicating the launch stage.
  /// [createTime] Created time.
  /// [description] Optional. Description of the resource.
  /// [destinationConfigs] Optional. Configuration of the Connector's destination. Only accepted for Connectors that accepts user defined destination(s).
  /// [envoyImageLocation] GCR location where the envoy image is stored. formatted like: gcr.io/{bucketName}/{imageName}
  /// [eventingConfig] Optional. Eventing config of a connection
  /// [eventingEnablementType] Optional. Eventing enablement type. Will be nil if eventing is not enabled.
  /// [eventingRuntimeData] Eventing Runtime Data.
  /// [imageLocation] GCR location where the runtime image is stored. formatted like: gcr.io/{bucketName}/{imageName}
  /// [isTrustedTester] Is trusted tester program enabled for the project.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [lockConfig] Optional. Configuration that indicates whether or not the Connection can be edited.
  /// [logConfig] Optional. Log configuration for the connection.
  /// [name] Resource name of the Connection. Format: projects/{project}/locations/{location}/connections/{connection}
  /// [nodeConfig] Optional. Node configuration for the connection.
  /// [serviceAccount] Optional. Service account needed for runtime plane to access Google Cloud resources.
  /// [serviceDirectory] The name of the Service Directory service name. Used for Private Harpoon to resolve the ILB address. e.g. "projects/cloud-connectors-e2e-testing/locations/us-central1/namespaces/istio-system/services/istio-ingressgateway-connectors"
  /// [sslConfig] Optional. Ssl config of a connection
  /// [status] Current status of the connection.
  /// [subscriptionType] This subscription type enum states the subscription type of the project.
  /// [suspended] Optional. Suspended indicates if a user has suspended a connection or not.
  /// [updateTime] Updated time.
  GetConnectionResult({
    required this.authConfig,
    required this.configVariables,
    required this.connectionRevision,
    required this.connectorVersion,
    required this.connectorVersionInfraConfig,
    required this.connectorVersionLaunchStage,
    required this.createTime,
    required this.description,
    required this.destinationConfigs,
    required this.envoyImageLocation,
    required this.eventingConfig,
    required this.eventingEnablementType,
    required this.eventingRuntimeData,
    required this.imageLocation,
    required this.isTrustedTester,
    required this.labels,
    required this.lockConfig,
    required this.logConfig,
    required this.name,
    required this.nodeConfig,
    required this.serviceAccount,
    required this.serviceDirectory,
    required this.sslConfig,
    required this.status,
    required this.subscriptionType,
    required this.suspended,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authConfig'] = authConfig.toMap();
    map['configVariables'] =
        pulumi.Input.encodeList<ConfigVariableResponse, Map<String, dynamic>>(
            configVariables, (value) => value.toMap());
    map['connectionRevision'] = connectionRevision;
    map['connectorVersion'] = connectorVersion;
    map['connectorVersionInfraConfig'] = connectorVersionInfraConfig.toMap();
    map['connectorVersionLaunchStage'] = connectorVersionLaunchStage;
    map['createTime'] = createTime;
    map['description'] = description;
    map['destinationConfigs'] = pulumi.Input.encodeList<
        DestinationConfigResponse,
        Map<String, dynamic>>(destinationConfigs, (value) => value.toMap());
    map['envoyImageLocation'] = envoyImageLocation;
    map['eventingConfig'] = eventingConfig.toMap();
    map['eventingEnablementType'] = eventingEnablementType;
    map['eventingRuntimeData'] = eventingRuntimeData.toMap();
    map['imageLocation'] = imageLocation;
    map['isTrustedTester'] = isTrustedTester;
    map['labels'] = labels;
    map['lockConfig'] = lockConfig.toMap();
    map['logConfig'] = logConfig.toMap();
    map['name'] = name;
    map['nodeConfig'] = nodeConfig.toMap();
    map['serviceAccount'] = serviceAccount;
    map['serviceDirectory'] = serviceDirectory;
    map['sslConfig'] = sslConfig.toMap();
    map['status'] = status.toMap();
    map['subscriptionType'] = subscriptionType;
    map['suspended'] = suspended;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionResult(
      authConfig: AuthConfigResponse.fromMap(
          (map['authConfig'] as Map).cast<String, dynamic>()),
      configVariables: pulumi.Input.decodeList<ConfigVariableResponse>(
          map['configVariables'],
          (value) => ConfigVariableResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      connectionRevision: map['connectionRevision'] as String,
      connectorVersion: map['connectorVersion'] as String,
      connectorVersionInfraConfig: ConnectorVersionInfraConfigResponse.fromMap(
          (map['connectorVersionInfraConfig'] as Map).cast<String, dynamic>()),
      connectorVersionLaunchStage: map['connectorVersionLaunchStage'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      destinationConfigs: pulumi.Input.decodeList<DestinationConfigResponse>(
          map['destinationConfigs'],
          (value) => DestinationConfigResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      envoyImageLocation: map['envoyImageLocation'] as String,
      eventingConfig: EventingConfigResponse.fromMap(
          (map['eventingConfig'] as Map).cast<String, dynamic>()),
      eventingEnablementType: map['eventingEnablementType'] as String,
      eventingRuntimeData: EventingRuntimeDataResponse.fromMap(
          (map['eventingRuntimeData'] as Map).cast<String, dynamic>()),
      imageLocation: map['imageLocation'] as String,
      isTrustedTester: map['isTrustedTester'] as bool,
      labels: (map['labels'] as Map).cast<String, String>(),
      lockConfig: LockConfigResponse.fromMap(
          (map['lockConfig'] as Map).cast<String, dynamic>()),
      logConfig: ConnectorsLogConfigResponse.fromMap(
          (map['logConfig'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      nodeConfig: NodeConfigResponse.fromMap(
          (map['nodeConfig'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] as String,
      serviceDirectory: map['serviceDirectory'] as String,
      sslConfig: SslConfigResponse.fromMap(
          (map['sslConfig'] as Map).cast<String, dynamic>()),
      status: ConnectionStatusResponse.fromMap(
          (map['status'] as Map).cast<String, dynamic>()),
      subscriptionType: map['subscriptionType'] as String,
      suspended: map['suspended'] as bool,
      updateTime: map['updateTime'] as String,
    );
  }
}
