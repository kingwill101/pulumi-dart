// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config.dart';
import 'config_variable.dart';
import 'connection_eventing_enablement_type.dart';
import 'connectors_log_config.dart';
import 'destination_config.dart';
import 'eventing_config.dart';
import 'lock_config.dart';
import 'node_config_connectors_v1.dart';
import 'ssl_config_connectors_v1.dart';

/// The set of arguments for Connection.
class ConnectionConnectorsV1Args {
  /// Optional. Configuration for establishing the connection's authentication with an external system.
  final pulumi.Input<AuthConfig>? authConfig;

  /// Optional. Configuration for configuring the connection with an external system.
  final pulumi.Input<List<ConfigVariable>>? configVariables;

  /// Required. Identifier to assign to the Connection. Must be unique within scope of the parent resource.
  final pulumi.Input<String> connectionId;

  /// Connector version on which the connection is created. The format is: projects/*/locations/*/providers/*/connectors/*/versions/* Only global location is supported for ConnectorVersion resource.
  final pulumi.Input<String> connectorVersion;

  /// Optional. Description of the resource.
  final pulumi.Input<String>? description;

  /// Optional. Configuration of the Connector's destination. Only accepted for Connectors that accepts user defined destination(s).
  final pulumi.Input<List<DestinationConfig>>? destinationConfigs;

  /// Optional. Eventing config of a connection
  final pulumi.Input<EventingConfig>? eventingConfig;

  /// Optional. Eventing enablement type. Will be nil if eventing is not enabled.
  final pulumi.Input<ConnectionEventingEnablementType>? eventingEnablementType;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// Optional. Configuration that indicates whether or not the Connection can be edited.
  final pulumi.Input<LockConfig>? lockConfig;

  /// Optional. Log configuration for the connection.
  final pulumi.Input<ConnectorsLogConfig>? logConfig;

  /// Optional. Node configuration for the connection.
  final pulumi.Input<NodeConfigConnectorsV1>? nodeConfig;
  final pulumi.Input<String>? project;

  /// Optional. Service account needed for runtime plane to access Google Cloud resources.
  final pulumi.Input<String>? serviceAccount;

  /// Optional. Ssl config of a connection
  final pulumi.Input<SslConfigConnectorsV1>? sslConfig;

  /// Optional. Suspended indicates if a user has suspended a connection or not.
  final pulumi.Input<bool>? suspended;

  ConnectionConnectorsV1Args({
    this.authConfig,
    this.configVariables,
    required this.connectionId,
    required this.connectorVersion,
    this.description,
    this.destinationConfigs,
    this.eventingConfig,
    this.eventingEnablementType,
    this.labels,
    this.location,
    this.lockConfig,
    this.logConfig,
    this.nodeConfig,
    this.project,
    this.serviceAccount,
    this.sslConfig,
    this.suspended,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authConfigValue = authConfig;
    if (authConfigValue != null) {
      map['authConfig'] =
          pulumi.Input.mapOptionalInputValue<AuthConfig, Map<String, dynamic>>(
              authConfigValue, (value) => value.toMap());
    }
    final configVariablesValue = configVariables;
    if (configVariablesValue != null) {
      map['configVariables'] = pulumi.Input.mapOptionalInputValue<
              List<ConfigVariable>, List<Map<String, dynamic>>>(
          configVariablesValue,
          (value) =>
              pulumi.Input.encodeList<ConfigVariable, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['connectionId'] = connectionId;
    map['connectorVersion'] = connectorVersion;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final destinationConfigsValue = destinationConfigs;
    if (destinationConfigsValue != null) {
      map['destinationConfigs'] = pulumi.Input.mapOptionalInputValue<
              List<DestinationConfig>, List<Map<String, dynamic>>>(
          destinationConfigsValue,
          (value) =>
              pulumi.Input.encodeList<DestinationConfig, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final eventingConfigValue = eventingConfig;
    if (eventingConfigValue != null) {
      map['eventingConfig'] = pulumi.Input.mapOptionalInputValue<EventingConfig,
          Map<String, dynamic>>(eventingConfigValue, (value) => value.toMap());
    }
    final eventingEnablementTypeValue = eventingEnablementType;
    if (eventingEnablementTypeValue != null) {
      map['eventingEnablementType'] = pulumi.Input.mapOptionalInputValue<
          ConnectionEventingEnablementType,
          String>(eventingEnablementTypeValue, (value) => value.value);
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final lockConfigValue = lockConfig;
    if (lockConfigValue != null) {
      map['lockConfig'] =
          pulumi.Input.mapOptionalInputValue<LockConfig, Map<String, dynamic>>(
              lockConfigValue, (value) => value.toMap());
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = pulumi.Input.mapOptionalInputValue<ConnectorsLogConfig,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] = pulumi.Input.mapOptionalInputValue<
          NodeConfigConnectorsV1,
          Map<String, dynamic>>(nodeConfigValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final serviceAccountValue = serviceAccount;
    if (serviceAccountValue != null) {
      map['serviceAccount'] = serviceAccountValue;
    }
    final sslConfigValue = sslConfig;
    if (sslConfigValue != null) {
      map['sslConfig'] = pulumi.Input.mapOptionalInputValue<
          SslConfigConnectorsV1,
          Map<String, dynamic>>(sslConfigValue, (value) => value.toMap());
    }
    final suspendedValue = suspended;
    if (suspendedValue != null) {
      map['suspended'] = suspendedValue;
    }
    return map;
  }

  factory ConnectionConnectorsV1Args.fromMap(Map<String, dynamic> map) {
    return ConnectionConnectorsV1Args(
      authConfig: pulumi.Input.asOptionalInput<AuthConfig>(map['authConfig']),
      configVariables: pulumi.Input.asOptionalInput<List<ConfigVariable>>(
          map['configVariables']),
      connectionId: pulumi.Input.asInput<String>(map['connectionId']),
      connectorVersion: pulumi.Input.asInput<String>(map['connectorVersion']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      destinationConfigs: pulumi.Input.asOptionalInput<List<DestinationConfig>>(
          map['destinationConfigs']),
      eventingConfig:
          pulumi.Input.asOptionalInput<EventingConfig>(map['eventingConfig']),
      eventingEnablementType:
          pulumi.Input.asOptionalInput<ConnectionEventingEnablementType>(
              map['eventingEnablementType']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      lockConfig: pulumi.Input.asOptionalInput<LockConfig>(map['lockConfig']),
      logConfig:
          pulumi.Input.asOptionalInput<ConnectorsLogConfig>(map['logConfig']),
      nodeConfig: pulumi.Input.asOptionalInput<NodeConfigConnectorsV1>(
          map['nodeConfig']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      serviceAccount:
          pulumi.Input.asOptionalInput<String>(map['serviceAccount']),
      sslConfig:
          pulumi.Input.asOptionalInput<SslConfigConnectorsV1>(map['sslConfig']),
      suspended: pulumi.Input.asOptionalInput<bool>(map['suspended']),
    );
  }
}
