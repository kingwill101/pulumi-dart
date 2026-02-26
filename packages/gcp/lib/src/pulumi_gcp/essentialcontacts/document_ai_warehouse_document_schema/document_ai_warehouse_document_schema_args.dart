// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../document_ai_warehouse_document_schema_property_definition/document_ai_warehouse_document_schema_property_definition.dart';

/// The set of arguments for DocumentAiWarehouseDocumentSchema.
class DocumentAiWarehouseDocumentSchemaArgs {
  /// Name of the schema given by the user.
  final Input<String> displayName;

  /// Tells whether the document is a folder or a typical document.
  final Input<bool>? documentIsFolder;

  /// The location of the resource.
  final Input<String> location;

  /// The unique identifier of the project.
  final Input<String> projectNumber;

  /// Defines the metadata for a schema property.
  /// Structure is documented below.
  final Input<List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>>
      propertyDefinitions;

  DocumentAiWarehouseDocumentSchemaArgs({
    required this.displayName,
    this.documentIsFolder,
    required this.location,
    required this.projectNumber,
    required this.propertyDefinitions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayName'] = displayName;
    final documentIsFolderValue = documentIsFolder;
    if (documentIsFolderValue != null) {
      map['documentIsFolder'] = documentIsFolderValue;
    }
    map['location'] = location;
    map['projectNumber'] = projectNumber;
    map['propertyDefinitions'] = Input.mapInputValue<
            List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>,
            List<Map<String, dynamic>>>(
        propertyDefinitions,
        (value) => Input.encodeList<
            DocumentAiWarehouseDocumentSchemaPropertyDefinition,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory DocumentAiWarehouseDocumentSchemaArgs.fromMap(
      Map<String, dynamic> map) {
    return DocumentAiWarehouseDocumentSchemaArgs(
      displayName: Input.asInput<String>(map['displayName']),
      documentIsFolder: Input.asOptionalInput<bool>(map['documentIsFolder']),
      location: Input.asInput<String>(map['location']),
      projectNumber: Input.asInput<String>(map['projectNumber']),
      propertyDefinitions: Input.asInput<
              List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>>(
          map['propertyDefinitions']),
    );
  }
}
