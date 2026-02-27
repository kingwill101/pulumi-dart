// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_property_definition.dart';

/// The set of arguments for DocumentSchema.
class DocumentSchemaArgs {
  /// Schema description.
  final pulumi.Input<String>? description;

  /// Name of the schema given by the user. Must be unique per project.
  final pulumi.Input<String> displayName;

  /// Document Type, true refers the document is a folder, otherwise it is a typical document.
  final pulumi.Input<bool>? documentIsFolder;
  final pulumi.Input<String>? location;

  /// The resource name of the document schema. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}. The name is ignored when creating a document schema.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Document details.
  final pulumi.Input<List<GoogleCloudContentwarehouseV1PropertyDefinition>>?
      propertyDefinitions;

  DocumentSchemaArgs({
    this.description,
    required this.displayName,
    this.documentIsFolder,
    this.location,
    this.name,
    this.project,
    this.propertyDefinitions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final documentIsFolderValue = documentIsFolder;
    if (documentIsFolderValue != null) {
      map['documentIsFolder'] = documentIsFolderValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final propertyDefinitionsValue = propertyDefinitions;
    if (propertyDefinitionsValue != null) {
      map['propertyDefinitions'] = pulumi.Input.mapOptionalInputValue<
              List<GoogleCloudContentwarehouseV1PropertyDefinition>,
              List<Map<String, dynamic>>>(
          propertyDefinitionsValue,
          (value) => pulumi.Input.encodeList<
              GoogleCloudContentwarehouseV1PropertyDefinition,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory DocumentSchemaArgs.fromMap(Map<String, dynamic> map) {
    return DocumentSchemaArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      documentIsFolder:
          pulumi.Input.asOptionalInput<bool>(map['documentIsFolder']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      propertyDefinitions: pulumi.Input.asOptionalInput<
              List<GoogleCloudContentwarehouseV1PropertyDefinition>>(
          map['propertyDefinitions']),
    );
  }
}
