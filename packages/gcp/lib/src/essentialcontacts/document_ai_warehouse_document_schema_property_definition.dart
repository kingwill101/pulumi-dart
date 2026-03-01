// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_ai_warehouse_document_schema_property_definition_enum_type_options.dart';
import 'document_ai_warehouse_document_schema_property_definition_property_type_options.dart';
import 'document_ai_warehouse_document_schema_property_definition_schema_source.dart';

class DocumentAiWarehouseDocumentSchemaPropertyDefinition {
  /// Date time property. Not supported by CMEK compliant deployment.
  final Map<String, dynamic>? dateTimeTypeOptions;
  /// The display-name for the property, used for front-end.
  final String? displayName;
  /// Enum/categorical property.
  /// Structure is documented below.
  final DocumentAiWarehouseDocumentSchemaPropertyDefinitionEnumTypeOptions? enumTypeOptions;
  /// Float property.
  final Map<String, dynamic>? floatTypeOptions;
  /// Integer property.
  final Map<String, dynamic>? integerTypeOptions;
  /// Whether the property can be filtered. If this is a sub-property, all the parent properties must be marked filterable.
  final bool? isFilterable;
  /// Whether the property is user supplied metadata.
  final bool? isMetadata;
  /// Whether the property can have multiple values.
  final bool? isRepeatable;
  /// Whether the property is mandatory.
  final bool? isRequired;
  /// Indicates that the property should be included in a global search.
  final bool? isSearchable;
  /// Map property.
  final Map<String, dynamic>? mapTypeOptions;
  /// The name of the metadata property.
  final String name;
  /// Nested structured data property.
  /// Structure is documented below.
  final DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptions? propertyTypeOptions;
  /// Stores the retrieval importance.
  /// Possible values are: `HIGHEST`, `HIGHER`, `HIGH`, `MEDIUM`, `LOW`, `LOWEST`.
  final String? retrievalImportance;
  /// The schema source information.
  /// Structure is documented below.
  final List<DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource>? schemaSources;
  /// Text property.
  final Map<String, dynamic>? textTypeOptions;
  /// Timestamp property. Not supported by CMEK compliant deployment.
  final Map<String, dynamic>? timestampTypeOptions;

  /// Creates a new [DocumentAiWarehouseDocumentSchemaPropertyDefinition].
  /// [dateTimeTypeOptions] Date time property. Not supported by CMEK compliant deployment.
  /// [displayName] The display-name for the property, used for front-end.
  /// [enumTypeOptions] Enum/categorical property.
  /// [floatTypeOptions] Float property.
  /// [integerTypeOptions] Integer property.
  /// [isFilterable] Whether the property can be filtered. If this is a sub-property, all the parent properties must be marked filterable.
  /// [isMetadata] Whether the property is user supplied metadata.
  /// [isRepeatable] Whether the property can have multiple values.
  /// [isRequired] Whether the property is mandatory.
  /// [isSearchable] Indicates that the property should be included in a global search.
  /// [mapTypeOptions] Map property.
  /// [name] The name of the metadata property.
  /// [propertyTypeOptions] Nested structured data property.
  /// [retrievalImportance] Stores the retrieval importance.
  /// [schemaSources] The schema source information.
  /// [textTypeOptions] Text property.
  /// [timestampTypeOptions] Timestamp property. Not supported by CMEK compliant deployment.
  DocumentAiWarehouseDocumentSchemaPropertyDefinition({
    this.dateTimeTypeOptions,
    this.displayName,
    this.enumTypeOptions,
    this.floatTypeOptions,
    this.integerTypeOptions,
    this.isFilterable,
    this.isMetadata,
    this.isRepeatable,
    this.isRequired,
    this.isSearchable,
    this.mapTypeOptions,
    required this.name,
    this.propertyTypeOptions,
    this.retrievalImportance,
    this.schemaSources,
    this.textTypeOptions,
    this.timestampTypeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dateTimeTypeOptions': ?dateTimeTypeOptions,
      'displayName': ?displayName,
      'enumTypeOptions': ?enumTypeOptions == null ? null : enumTypeOptions!.toMap(),
      'floatTypeOptions': ?floatTypeOptions,
      'integerTypeOptions': ?integerTypeOptions,
      'isFilterable': ?isFilterable,
      'isMetadata': ?isMetadata,
      'isRepeatable': ?isRepeatable,
      'isRequired': ?isRequired,
      'isSearchable': ?isSearchable,
      'mapTypeOptions': ?mapTypeOptions,
      'name': name,
      'propertyTypeOptions': ?propertyTypeOptions == null ? null : propertyTypeOptions!.toMap(),
      'retrievalImportance': ?retrievalImportance,
      'schemaSources': ?schemaSources == null ? null : pulumi.Input.encodeList<DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource, Map<String, dynamic>>(schemaSources!, (value) => value.toMap()),
      'textTypeOptions': ?textTypeOptions,
      'timestampTypeOptions': ?timestampTypeOptions,
    };
  }

  factory DocumentAiWarehouseDocumentSchemaPropertyDefinition.fromMap(Map<String, dynamic> map) {
    return DocumentAiWarehouseDocumentSchemaPropertyDefinition(
      dateTimeTypeOptions: map['dateTimeTypeOptions'] == null ? null : (map['dateTimeTypeOptions'] as Map).cast<String, dynamic>(),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      enumTypeOptions: map['enumTypeOptions'] == null ? null : DocumentAiWarehouseDocumentSchemaPropertyDefinitionEnumTypeOptions.fromMap((map['enumTypeOptions'] as Map).cast<String, dynamic>()),
      floatTypeOptions: map['floatTypeOptions'] == null ? null : (map['floatTypeOptions'] as Map).cast<String, dynamic>(),
      integerTypeOptions: map['integerTypeOptions'] == null ? null : (map['integerTypeOptions'] as Map).cast<String, dynamic>(),
      isFilterable: map['isFilterable'] == null ? null : map['isFilterable'] as bool,
      isMetadata: map['isMetadata'] == null ? null : map['isMetadata'] as bool,
      isRepeatable: map['isRepeatable'] == null ? null : map['isRepeatable'] as bool,
      isRequired: map['isRequired'] == null ? null : map['isRequired'] as bool,
      isSearchable: map['isSearchable'] == null ? null : map['isSearchable'] as bool,
      mapTypeOptions: map['mapTypeOptions'] == null ? null : (map['mapTypeOptions'] as Map).cast<String, dynamic>(),
      name: map['name'] as String,
      propertyTypeOptions: map['propertyTypeOptions'] == null ? null : DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptions.fromMap((map['propertyTypeOptions'] as Map).cast<String, dynamic>()),
      retrievalImportance: map['retrievalImportance'] == null ? null : map['retrievalImportance'] as String,
      schemaSources: map['schemaSources'] == null ? null : pulumi.Input.decodeList<DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource>(map['schemaSources'], (value) => DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource.fromMap((value as Map).cast<String, dynamic>())),
      textTypeOptions: map['textTypeOptions'] == null ? null : (map['textTypeOptions'] as Map).cast<String, dynamic>(),
      timestampTypeOptions: map['timestampTypeOptions'] == null ? null : (map['timestampTypeOptions'] as Map).cast<String, dynamic>(),
    );
  }
}

