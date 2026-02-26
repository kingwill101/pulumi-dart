// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../connection_auth_config/connection_auth_config.dart';
import '../connection_config_variable/connection_config_variable.dart';
import '../connection_destination_config/connection_destination_config.dart';
import '../connection_eventing_config/connection_eventing_config.dart';
import '../connection_lock_config/connection_lock_config.dart';
import '../connection_log_config/connection_log_config.dart';
import '../connection_node_config/connection_node_config.dart';
import '../connection_ssl_config/connection_ssl_config.dart';

/// The set of arguments for Connection.
class ConnectionArgs4 {
  /// authConfig for the connection.
  /// Structure is documented below.
  final Input<ConnectionAuthConfig>? authConfig;

  /// Config Variables for the connection.
  /// Structure is documented below.
  final Input<List<ConnectionConfigVariable>>? configVariables;

  /// connectorVersion of the Connector.
  final Input<String> connectorVersion;

  /// An arbitrary description for the Connection.
  final Input<String>? description;

  /// Define the Connectors target endpoint.
  /// Structure is documented below.
  final Input<List<ConnectionDestinationConfig>>? destinationConfigs;

  /// Eventing Configuration of a connection
  /// Structure is documented below.
  final Input<ConnectionEventingConfig>? eventingConfig;

  /// Eventing enablement type. Will be nil if eventing is not enabled.
  /// Possible values are: `EVENTING_AND_CONNECTION`, `ONLY_EVENTING`.
  final Input<String>? eventingEnablementType;

  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Location in which Connection needs to be created.
  final Input<String> location;

  /// Determines whether or no a connection is locked. If locked, a reason must be specified.
  /// Structure is documented below.
  final Input<ConnectionLockConfig>? lockConfig;

  /// Log configuration for the connection.
  /// Structure is documented below.
  final Input<ConnectionLogConfig>? logConfig;

  /// Name of Connection needs to be created.
  final Input<String>? name;

  /// Node configuration for the connection.
  /// Structure is documented below.
  final Input<ConnectionNodeConfig>? nodeConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Service account needed for runtime plane to access Google Cloud resources.
  final Input<String>? serviceAccount;

  /// SSL Configuration of a connection
  /// Structure is documented below.
  final Input<ConnectionSslConfig>? sslConfig;

  /// Suspended indicates if a user has suspended a connection or not.
  final Input<bool>? suspended;

  ConnectionArgs4({
    this.authConfig,
    this.configVariables,
    required this.connectorVersion,
    this.description,
    this.destinationConfigs,
    this.eventingConfig,
    this.eventingEnablementType,
    this.labels,
    required this.location,
    this.lockConfig,
    this.logConfig,
    this.name,
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
      map['authConfig'] = Input.mapOptionalInputValue<ConnectionAuthConfig,
          Map<String, dynamic>>(authConfigValue, (value) => value.toMap());
    }
    final configVariablesValue = configVariables;
    if (configVariablesValue != null) {
      map['configVariables'] = Input.mapOptionalInputValue<
              List<ConnectionConfigVariable>, List<Map<String, dynamic>>>(
          configVariablesValue,
          (value) =>
              Input.encodeList<ConnectionConfigVariable, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    map['connectorVersion'] = connectorVersion;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final destinationConfigsValue = destinationConfigs;
    if (destinationConfigsValue != null) {
      map['destinationConfigs'] = Input.mapOptionalInputValue<
              List<ConnectionDestinationConfig>, List<Map<String, dynamic>>>(
          destinationConfigsValue,
          (value) => Input.encodeList<ConnectionDestinationConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final eventingConfigValue = eventingConfig;
    if (eventingConfigValue != null) {
      map['eventingConfig'] = Input.mapOptionalInputValue<
          ConnectionEventingConfig,
          Map<String, dynamic>>(eventingConfigValue, (value) => value.toMap());
    }
    final eventingEnablementTypeValue = eventingEnablementType;
    if (eventingEnablementTypeValue != null) {
      map['eventingEnablementType'] = eventingEnablementTypeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    final lockConfigValue = lockConfig;
    if (lockConfigValue != null) {
      map['lockConfig'] = Input.mapOptionalInputValue<ConnectionLockConfig,
          Map<String, dynamic>>(lockConfigValue, (value) => value.toMap());
    }
    final logConfigValue = logConfig;
    if (logConfigValue != null) {
      map['logConfig'] = Input.mapOptionalInputValue<ConnectionLogConfig,
          Map<String, dynamic>>(logConfigValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final nodeConfigValue = nodeConfig;
    if (nodeConfigValue != null) {
      map['nodeConfig'] = Input.mapOptionalInputValue<ConnectionNodeConfig,
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
      map['sslConfig'] = Input.mapOptionalInputValue<ConnectionSslConfig,
          Map<String, dynamic>>(sslConfigValue, (value) => value.toMap());
    }
    final suspendedValue = suspended;
    if (suspendedValue != null) {
      map['suspended'] = suspendedValue;
    }
    return map;
  }

  factory ConnectionArgs4.fromMap(Map<String, dynamic> map) {
    return ConnectionArgs4(
      authConfig:
          Input.asOptionalInput<ConnectionAuthConfig>(map['authConfig']),
      configVariables: Input.asOptionalInput<List<ConnectionConfigVariable>>(
          map['configVariables']),
      connectorVersion: Input.asInput<String>(map['connectorVersion']),
      description: Input.asOptionalInput<String>(map['description']),
      destinationConfigs:
          Input.asOptionalInput<List<ConnectionDestinationConfig>>(
              map['destinationConfigs']),
      eventingConfig: Input.asOptionalInput<ConnectionEventingConfig>(
          map['eventingConfig']),
      eventingEnablementType:
          Input.asOptionalInput<String>(map['eventingEnablementType']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      lockConfig:
          Input.asOptionalInput<ConnectionLockConfig>(map['lockConfig']),
      logConfig: Input.asOptionalInput<ConnectionLogConfig>(map['logConfig']),
      name: Input.asOptionalInput<String>(map['name']),
      nodeConfig:
          Input.asOptionalInput<ConnectionNodeConfig>(map['nodeConfig']),
      project: Input.asOptionalInput<String>(map['project']),
      serviceAccount: Input.asOptionalInput<String>(map['serviceAccount']),
      sslConfig: Input.asOptionalInput<ConnectionSslConfig>(map['sslConfig']),
      suspended: Input.asOptionalInput<bool>(map['suspended']),
    );
  }
}
