// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_property_definition.dart';

/// {@template pulumi_contentwarehouse_v1_document_schema_args_doc}
/// The set of arguments for DocumentSchema.
/// {@endtemplate}
/// {@macro pulumi_contentwarehouse_v1_document_schema_args_doc}
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

  /// Creates a new [DocumentSchemaArgs].
  /// [description] Schema description.
  /// [displayName] Name of the schema given by the user. Must be unique per project.
  /// [documentIsFolder] Document Type, true refers the document is a folder, otherwise it is a typical document.
  /// [location] Optional.
  /// [name] The resource name of the document schema. Format: projects/{project_number}/locations/{location}/documentSchemas/{document_schema_id}. The name is ignored when creating a document schema.
  /// [project] Optional.
  /// [propertyDefinitions] Document details.
  DocumentSchemaArgs({
    String? description,
    required String displayName,
    bool? documentIsFolder,
    String? location,
    String? name,
    String? project,
    List<GoogleCloudContentwarehouseV1PropertyDefinition>? propertyDefinitions,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        documentIsFolder = pulumi.Input.asOptionalInput<bool>(documentIsFolder),
        location = pulumi.Input.asOptionalInput<String>(location),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        propertyDefinitions = pulumi.Input.asOptionalInput<
                List<GoogleCloudContentwarehouseV1PropertyDefinition>>(
            propertyDefinitions);

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
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      documentIsFolder: map['documentIsFolder'] == null
          ? null
          : map['documentIsFolder'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      propertyDefinitions: map['propertyDefinitions'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudContentwarehouseV1PropertyDefinition>(
              map['propertyDefinitions'],
              (value) =>
                  GoogleCloudContentwarehouseV1PropertyDefinition.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
