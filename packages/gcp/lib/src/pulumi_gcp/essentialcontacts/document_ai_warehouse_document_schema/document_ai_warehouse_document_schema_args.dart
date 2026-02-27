// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../document_ai_warehouse_document_schema_property_definition/document_ai_warehouse_document_schema_property_definition.dart';

/// The set of arguments for DocumentAiWarehouseDocumentSchema.
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
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      documentIsFolder:
          pulumi.Input.asOptionalInput<bool>(map['documentIsFolder']),
      location: pulumi.Input.asInput<String>(map['location']),
      projectNumber: pulumi.Input.asInput<String>(map['projectNumber']),
      propertyDefinitions: pulumi.Input.asInput<
              List<DocumentAiWarehouseDocumentSchemaPropertyDefinition>>(
          map['propertyDefinitions']),
    );
  }
}
