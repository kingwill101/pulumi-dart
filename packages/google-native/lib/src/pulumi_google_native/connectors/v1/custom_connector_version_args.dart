// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'auth_config.dart';
import 'custom_connector_version_type.dart';
import 'destination_config.dart';

/// The set of arguments for CustomConnectorVersion.
class CustomConnectorVersionArgs {
  /// Configuration for establishing the authentication to the connector destination.
  final Input<AuthConfig> authConfig;
  final Input<String> customConnectorId;

  /// Required. Identifier to assign to the CreateCustomConnectorVersion. Must be unique within scope of the parent resource.
  final Input<String> customConnectorVersionId;

  /// Configuration of the customConnector's destination.
  final Input<DestinationConfig> destinationConfig;

  /// Optional. Whether to enable backend destination config. This is the backend server that the connector connects to.
  final Input<bool>? enableBackendDestinationConfig;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Input<Map<String, String>>? labels;
  final Input<String>? project;

  /// Optional. Location of the custom connector spec.
  final Input<String>? specLocation;

  /// Type of the customConnector.
  final Input<CustomConnectorVersionType> type;

  CustomConnectorVersionArgs({
    required this.authConfig,
    required this.customConnectorId,
    required this.customConnectorVersionId,
    required this.destinationConfig,
    this.enableBackendDestinationConfig,
    this.labels,
    this.project,
    this.specLocation,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authConfig'] = Input.mapInputValue<AuthConfig, Map<String, dynamic>>(
        authConfig, (value) => value.toMap());
    map['customConnectorId'] = customConnectorId;
    map['customConnectorVersionId'] = customConnectorVersionId;
    map['destinationConfig'] =
        Input.mapInputValue<DestinationConfig, Map<String, dynamic>>(
            destinationConfig, (value) => value.toMap());
    final enableBackendDestinationConfigValue = enableBackendDestinationConfig;
    if (enableBackendDestinationConfigValue != null) {
      map['enableBackendDestinationConfig'] =
          enableBackendDestinationConfigValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final specLocationValue = specLocation;
    if (specLocationValue != null) {
      map['specLocation'] = specLocationValue;
    }
    map['type'] = Input.mapInputValue<CustomConnectorVersionType, String>(
        type, (value) => value.value);
    return map;
  }

  factory CustomConnectorVersionArgs.fromMap(Map<String, dynamic> map) {
    return CustomConnectorVersionArgs(
      authConfig: Input.asInput<AuthConfig>(map['authConfig']),
      customConnectorId: Input.asInput<String>(map['customConnectorId']),
      customConnectorVersionId:
          Input.asInput<String>(map['customConnectorVersionId']),
      destinationConfig:
          Input.asInput<DestinationConfig>(map['destinationConfig']),
      enableBackendDestinationConfig:
          Input.asOptionalInput<bool>(map['enableBackendDestinationConfig']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      project: Input.asOptionalInput<String>(map['project']),
      specLocation: Input.asOptionalInput<String>(map['specLocation']),
      type: Input.asInput<CustomConnectorVersionType>(map['type']),
    );
  }
}
