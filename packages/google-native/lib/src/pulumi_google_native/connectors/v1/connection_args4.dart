// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'auth_config.dart';
import 'config_variable.dart';
import 'connection_eventing_enablement_type.dart';
import 'connectors_log_config.dart';
import 'destination_config.dart';
import 'eventing_config.dart';
import 'lock_config.dart';
import 'node_config3.dart';
import 'ssl_config4.dart';

/// The set of arguments for Connection.
class ConnectionArgs4 {
  /// Optional. Configuration for establishing the connection's authentication with an external system.
  final Input<AuthConfig>? authConfig;

  /// Optional. Configuration for configuring the connection with an external system.
  final Input<List<ConfigVariable>>? configVariables;

  /// Required. Identifier to assign to the Connection. Must be unique within scope of the parent resource.
  final Input<String> connectionId;

  /// Connector version on which the connection is created. The format is: projects/*/locations/*/providers/*/connectors/*/versions/* Only global location is supported for ConnectorVersion resource.
  final Input<String> connectorVersion;

  /// Optional. Description of the resource.
  final Input<String>? description;

  /// Optional. Configuration of the Connector's destination. Only accepted for Connectors that accepts user defined destination(s).
  final Input<List<DestinationConfig>>? destinationConfigs;

  /// Optional. Eventing config of a connection
  final Input<EventingConfig>? eventingConfig;

  /// Optional. Eventing enablement type. Will be nil if eventing is not enabled.
  final Input<ConnectionEventingEnablementType>? eventingEnablementType;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// Optional. Configuration that indicates whether or not the Connection can be edited.
  final Input<LockConfig>? lockConfig;

  /// Optional. Log configuration for the connection.
  final Input<ConnectorsLogConfig>? logConfig;

  /// Optional. Node configuration for the connection.
  final Input<NodeConfig3>? nodeConfig;
  final Input<String>? project;

  /// Optional. Service account needed for runtime plane to access Google Cloud resources.
  final Input<String>? serviceAccount;

  /// Optional. Ssl config of a connection
  final Input<SslConfig4>? sslConfig;

  /// Optional. Suspended indicates if a user has suspended a connection or not.
  final Input<bool>? suspended;

  ConnectionArgs4({
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
          Input.mapOptionalInputValue<AuthConfig, Map<String, dynamic>>(
              authConfigValue, (value) => value.toMap());
    }
    final configVariablesValue = configVariables;
    if (configVariablesValue != null) {
      map['configVariables'] = Input.mapOptionalInputValue<List<ConfigVariable>,
              List<Map<String, dynamic>>>(
          configVariablesValue,
          (value) => Input.encodeList<ConfigVariable, Map<String, dynamic>>(
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
      map['destinationConfigs'] = Input.mapOptionalInputValue<
              List<DestinationConfig>, List<Map<String, dynamic>>>(
          destinationConfigsValue,
          (value) => Input.encodeList<DestinationConfig, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final eventingConfigValue = eventingConfig;
    if (eventingConfigValue != null) {
      map['eventingConfig'] =
          Input.mapOptionalInputValue<EventingConfig, Map<String, dynamic>>(
              eventingConfigValue, (value) => value.toMap());
    }
    final eventingEnablementTypeValue = eventingEnablementType;
    if (eventingEnablementTypeValue != null) {
      map['eventingEnablementType'] =
          Input.mapOptionalInputValue<ConnectionEventingEnablementType, String>(
              eventingEnablementTypeValue, (value) => value.value);
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
          Input.mapOptionalInputValue<LockConfig, Map<String, dynamic>>(
              lockConfigValue, (value) => value.toMap());
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = Input.mapOptionalInputValue<ConnectorsLogConfig,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] =
          Input.mapOptionalInputValue<NodeConfig3, Map<String, dynamic>>(
              nodeConfigValue, (value) => value.toMap());
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
      map['sslConfig'] =
          Input.mapOptionalInputValue<SslConfig4, Map<String, dynamic>>(
              sslConfigValue, (value) => value.toMap());
    }
    final suspendedValue = suspended;
    if (suspendedValue != null) {
      map['suspended'] = suspendedValue;
    }
    return map;
  }

  factory ConnectionArgs4.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs4(
      authConfig: Input.asOptionalInput<AuthConfig>(map['authConfig']),
      configVariables:
          Input.asOptionalInput<List<ConfigVariable>>(map['configVariables']),
      connectionId: Input.asInput<String>(map['connectionId']),
      connectorVersion: Input.asInput<String>(map['connectorVersion']),
      description: Input.asOptionalInput<String>(map['description']),
      destinationConfigs: Input.asOptionalInput<List<DestinationConfig>>(
          map['destinationConfigs']),
      eventingConfig:
          Input.asOptionalInput<EventingConfig>(map['eventingConfig']),
      eventingEnablementType:
          Input.asOptionalInput<ConnectionEventingEnablementType>(
              map['eventingEnablementType']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      lockConfig: Input.asOptionalInput<LockConfig>(map['lockConfig']),
      logConfig: Input.asOptionalInput<ConnectorsLogConfig>(map['logConfig']),
      nodeConfig: Input.asOptionalInput<NodeConfig3>(map['nodeConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      sslConfig: Input.asOptionalInput<SslConfig4>(map['sslConfig']),
      suspended: Input.asOptionalInput<bool>(map['suspended']),
    );
  }
}
