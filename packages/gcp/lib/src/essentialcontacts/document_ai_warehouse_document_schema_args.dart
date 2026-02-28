// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_ai_warehouse_document_schema_property_definition.dart';

/// {@template pulumi_essentialcontacts_document_ai_warehouse_document_schema_document_ai_warehouse_document_schema_args_doc}
/// The set of arguments for DocumentAiWarehouseDocumentSchema.
/// {@endtemplate}
/// {@macro pulumi_essentialcontacts_document_ai_warehouse_document_schema_document_ai_warehouse_document_schema_args_doc}
class DocumentAiWarehouseDocumentSchemaArgs {
  /// Name of the schema given by the user.
  final pulumi.Input<String> displayName;

  /// Tells whether the document is a folder or a typical document.
  final pulumi.Input<bool>? documentIsFolder;

  /// The location of the resource.
  final pulumi.Input<String> location;

  /// The unique identifier of the project.
  final pulumi.Input<String> projectNumber;

  /// Defines the metadata for a schema property.
  /// Structure is documented below.
  final pulumi.Input<List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>>
      propertyDefinitions;

  /// Creates a new [DocumentAiWarehouseDocumentSchemaArgs].
  /// [displayName] Name of the schema given by the user.
  /// [documentIsFolder] Tells whether the document is a folder or a typical document.
  /// [location] The location of the resource.
  /// [projectNumber] The unique identifier of the project.
  /// [propertyDefinitions] Defines the metadata for a schema property.
  DocumentAiWarehouseDocumentSchemaArgs({
    required String displayName,
    bool? documentIsFolder,
    required String location,
    required String projectNumber,
    required List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>
        propertyDefinitions,
  })  : displayName = pulumi.Input.asInput<String>(displayName),
        documentIsFolder = pulumi.Input.asOptionalInput<bool>(documentIsFolder),
        location = pulumi.Input.asInput<String>(location),
        projectNumber = pulumi.Input.asInput<String>(projectNumber),
        propertyDefinitions = pulumi.Input.asInput<
                List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>>(
            propertyDefinitions);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final documentIsFolderValue = documentIsFolder;
    if (documentIsFolderValue != null) {
      map['documentIsFolder'] = documentIsFolderValue;
    }
    map['location'] = location;
    map['projectNumber'] = projectNumber;
    map['propertyDefinitions'] = pulumi.Input.mapInputValue<
            List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>,
            List<Map<String, dynamic>>>(
        propertyDefinitions,
        (value) => pulumi.Input.encodeList<
            DocumentAiWarehouseDocumentSchemaPropertyDefinition,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory DocumentAiWarehouseDocumentSchemaArgs.fromMap(
      Map<String, dynamic> map) {
    return DocumentAiWarehouseDocumentSchemaArgs(
      displayName: map['displayName'] as String,
      documentIsFolder: map['documentIsFolder'] == null
          ? null
          : map['documentIsFolder'] as bool,
      location: map['location'] as String,
      projectNumber: map['projectNumber'] as String,
      propertyDefinitions: pulumi.Input.decodeList<
              DocumentAiWarehouseDocumentSchemaPropertyDefinition>(
          map['propertyDefinitions'],
          (value) =>
              DocumentAiWarehouseDocumentSchemaPropertyDefinition.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
