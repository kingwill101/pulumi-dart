// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'custom_connector_custom_connector_type.dart';

/// The set of arguments for CustomConnector.
class CustomConnectorArgs {
  /// Required. Identifier to assign to the CreateCustomConnector. Must be unique within scope of the parent resource.
  final Input<String> customConnectorId;

  /// Type of the custom connector.
  final Input<CustomConnectorCustomConnectorType> customConnectorType;

  /// Optional. Description of the resource.
  final Input<String>? description;

  /// Optional. Display name.
  final Input<String>? displayName;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Input<Map<String, String>>? labels;

  /// Optional. Logo of the resource.
  final Input<String>? logo;

  /// Identifier. Resource name of the CustomConnector. Format: projects/{project}/locations/{location}/customConnectors/{connector}
  final Input<String>? name;
  final Input<String>? project;

  CustomConnectorArgs({
    required this.customConnectorId,
    required this.customConnectorType,
    this.description,
    this.displayName,
    this.labels,
    this.logo,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customConnectorId'] = customConnectorId;
    map['customConnectorType'] =
        Input.mapInputValue<CustomConnectorCustomConnectorType, String>(
            customConnectorType, (value) => value.value);
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final logoValue = logo;
    if (logoValue != null) {
      map['logo'] = logoValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory CustomConnectorArgs.fromMap(Map<String, dynamic> map) {
    return CustomConnectorArgs(
      customConnectorId: Input.asInput<String>(map['customConnectorId']),
      customConnectorType: Input.asInput<CustomConnectorCustomConnectorType>(
          map['customConnectorType']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      logo: Input.asOptionalInput<String>(map['logo']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
