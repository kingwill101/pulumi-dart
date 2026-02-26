// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../document_ai_warehouse_document_schema_property_definition_property_type_options_property_definition/document_ai_warehouse_document_schema_property_definition_property_type_options_property_definition.dart';

class DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptions {
  /// Defines the metadata for a schema property.
  /// Structure is documented below.
  final List<
          DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinition>
      propertyDefinitions;

  DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptions({
    required this.propertyDefinitions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['propertyDefinitions'] = Input.encodeList<
        DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinition,
        Map<String, dynamic>>(propertyDefinitions, (value) => value.toMap());
    return map;
  }

  factory DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptions.fromMap(
      Map<String, dynamic> map) {
    return DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptions(
      propertyDefinitions: Input.decodeList<
              DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinition>(
          map['propertyDefinitions'],
          (value) =>
              DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinition
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
