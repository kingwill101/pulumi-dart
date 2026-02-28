// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_connector_custom_connector_type.dart';

/// {@template pulumi_connectors_v1_custom_connector_args_doc}
/// The set of arguments for CustomConnector.
/// {@endtemplate}
/// {@macro pulumi_connectors_v1_custom_connector_args_doc}
class CustomConnectorArgs {
  /// Required. Identifier to assign to the CreateCustomConnector. Must be unique within scope of the parent resource.
  final pulumi.Input<String> customConnectorId;

  /// Type of the custom connector.
  final pulumi.Input<CustomConnectorCustomConnectorType> customConnectorType;

  /// Optional. Description of the resource.
  final pulumi.Input<String>? description;

  /// Optional. Display name.
  final pulumi.Input<String>? displayName;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final pulumi.Input<Map<String, String>>? labels;

  /// Optional. Logo of the resource.
  final pulumi.Input<String>? logo;

  /// Identifier. Resource name of the CustomConnector. Format: projects/{project}/locations/{location}/customConnectors/{connector}
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [CustomConnectorArgs].
  /// [customConnectorId] Required. Identifier to assign to the CreateCustomConnector. Must be unique within scope of the parent resource.
  /// [customConnectorType] Type of the custom connector.
  /// [description] Optional. Description of the resource.
  /// [displayName] Optional. Display name.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [logo] Optional. Logo of the resource.
  /// [name] Identifier. Resource name of the CustomConnector. Format: projects/{project}/locations/{location}/customConnectors/{connector}
  /// [project] Optional.
  CustomConnectorArgs({
    required String customConnectorId,
    required CustomConnectorCustomConnectorType customConnectorType,
    String? description,
    String? displayName,
    Map<String, String>? labels,
    String? logo,
    String? name,
    String? project,
  })  : customConnectorId = pulumi.Input.asInput<String>(customConnectorId),
        customConnectorType =
            pulumi.Input.asInput<CustomConnectorCustomConnectorType>(
                customConnectorType),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        logo = pulumi.Input.asOptionalInput<String>(logo),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customConnectorId'] = customConnectorId;
    map['customConnectorType'] =
        pulumi.Input.mapInputValue<CustomConnectorCustomConnectorType, String>(
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
      customConnectorId: map['customConnectorId'] as String,
      customConnectorType: CustomConnectorCustomConnectorType.fromValue(
          map['customConnectorType'] as String),
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      logo: map['logo'] == null ? null : map['logo'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
