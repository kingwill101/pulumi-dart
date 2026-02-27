// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_contentwarehouse_v1_property_definition.dart';

/// The set of arguments for DocumentSchema.
class DocumentSchemaArgs {
  /// Schema description.
  final Input<String>? description;

  /// Name of the schema given by the user. Must be unique per project.
  final Input<String> displayName;

  /// Document Type, true refers the document is a folder, otherwise it is a typical document.
  final Input<bool>? documentIsFolder;
  final Input<String>? location;

  /// The resource name of the document schema. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}. The name is ignored when creating a document schema.
  final Input<String>? name;
  final Input<String>? project;

  /// Document details.
  final Input<List<GoogleCloudContentwarehouseV1PropertyDefinition>>?
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
      map['propertyDefinitions'] = Input.mapOptionalInputValue<
              List<GoogleCloudContentwarehouseV1PropertyDefinition>,
              List<Map<String, dynamic>>>(
          propertyDefinitionsValue,
          (value) => Input.encodeList<
              GoogleCloudContentwarehouseV1PropertyDefinition,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory DocumentSchemaArgs.fromMap(Map<String, dynamic> map) {
    return DocumentSchemaArgs(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      documentIsFolder: Input.asOptionalInput<bool>(map['documentIsFolder']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      propertyDefinitions: Input.asOptionalInput<
              List<GoogleCloudContentwarehouseV1PropertyDefinition>>(
          map['propertyDefinitions']),
    );
  }
}
