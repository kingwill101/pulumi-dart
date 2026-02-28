// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_ai_warehouse_document_schema_property_definition_property_type_options_property_definition_enum_type_options.dart';
import 'document_ai_warehouse_document_schema_property_definition_property_type_options_property_definition_schema_source.dart';

class DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinition {
  /// Date time property. Not supported by CMEK compliant deployment.
  final Map<String, dynamic>? dateTimeTypeOptions;

  /// The display-name for the property, used for front-end.
  final String? displayName;

  /// Enum/categorical property.
  /// Structure is documented below.
  final DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionEnumTypeOptions?
      enumTypeOptions;

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

  /// Stores the retrieval importance.
  /// Possible values are: `HIGHEST`, `HIGHER`, `HIGH`, `MEDIUM`, `LOW`, `LOWEST`.
  final String? retrievalImportance;

  /// The schema source information.
  /// Structure is documented below.
  final List<
          DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionSchemaSource>?
      schemaSources;

  /// Text property.
  final Map<String, dynamic>? textTypeOptions;

  /// Timestamp property. Not supported by CMEK compliant deployment.
  final Map<String, dynamic>? timestampTypeOptions;

  /// Creates a new [DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinition].
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
  /// [retrievalImportance] Stores the retrieval importance.
  /// [schemaSources] The schema source information.
  /// [textTypeOptions] Text property.
  /// [timestampTypeOptions] Timestamp property. Not supported by CMEK compliant deployment.
  DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinition({
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
    this.retrievalImportance,
    this.schemaSources,
    this.textTypeOptions,
    this.timestampTypeOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dateTimeTypeOptionsValue = dateTimeTypeOptions;
    if (dateTimeTypeOptionsValue != null) {
      map['dateTimeTypeOptions'] = dateTimeTypeOptionsValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final enumTypeOptionsValue = enumTypeOptions;
    if (enumTypeOptionsValue != null) {
      map['enumTypeOptions'] = enumTypeOptionsValue.toMap();
    }
    final floatTypeOptionsValue = floatTypeOptions;
    if (floatTypeOptionsValue != null) {
      map['floatTypeOptions'] = floatTypeOptionsValue;
    }
    final integerTypeOptionsValue = integerTypeOptions;
    if (integerTypeOptionsValue != null) {
      map['integerTypeOptions'] = integerTypeOptionsValue;
    }
    final isFilterableValue = isFilterable;
    if (isFilterableValue != null) {
      map['isFilterable'] = isFilterableValue;
    }
    final isMetadataValue = isMetadata;
    if (isMetadataValue != null) {
      map['isMetadata'] = isMetadataValue;
    }
    final isRepeatableValue = isRepeatable;
    if (isRepeatableValue != null) {
      map['isRepeatable'] = isRepeatableValue;
    }
    final isRequiredValue = isRequired;
    if (isRequiredValue != null) {
      map['isRequired'] = isRequiredValue;
    }
    final isSearchableValue = isSearchable;
    if (isSearchableValue != null) {
      map['isSearchable'] = isSearchableValue;
    }
    final mapTypeOptionsValue = mapTypeOptions;
    if (mapTypeOptionsValue != null) {
      map['mapTypeOptions'] = mapTypeOptionsValue;
    }
    map['name'] = name;
    final retrievalImportanceValue = retrievalImportance;
    if (retrievalImportanceValue != null) {
      map['retrievalImportance'] = retrievalImportanceValue;
    }
    final schemaSourcesValue = schemaSources;
    if (schemaSourcesValue != null) {
      map['schemaSources'] = pulumi.Input.encodeList<
          DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionSchemaSource,
          Map<String, dynamic>>(schemaSourcesValue, (value) => value.toMap());
    }
    final textTypeOptionsValue = textTypeOptions;
    if (textTypeOptionsValue != null) {
      map['textTypeOptions'] = textTypeOptionsValue;
    }
    final timestampTypeOptionsValue = timestampTypeOptions;
    if (timestampTypeOptionsValue != null) {
      map['timestampTypeOptions'] = timestampTypeOptionsValue;
    }
    return map;
  }

  factory DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinition.fromMap(
      Map<String, dynamic> map) {
    return DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinition(
      dateTimeTypeOptions: map['dateTimeTypeOptions'] == null
          ? null
          : (map['dateTimeTypeOptions'] as Map).cast<String, dynamic>(),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      enumTypeOptions: map['enumTypeOptions'] == null
          ? null
          : DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionEnumTypeOptions
              .fromMap((map['enumTypeOptions'] as Map).cast<String, dynamic>()),
      floatTypeOptions: map['floatTypeOptions'] == null
          ? null
          : (map['floatTypeOptions'] as Map).cast<String, dynamic>(),
      integerTypeOptions: map['integerTypeOptions'] == null
          ? null
          : (map['integerTypeOptions'] as Map).cast<String, dynamic>(),
      isFilterable:
          map['isFilterable'] == null ? null : map['isFilterable'] as bool,
      isMetadata: map['isMetadata'] == null ? null : map['isMetadata'] as bool,
      isRepeatable:
          map['isRepeatable'] == null ? null : map['isRepeatable'] as bool,
      isRequired: map['isRequired'] == null ? null : map['isRequired'] as bool,
      isSearchable:
          map['isSearchable'] == null ? null : map['isSearchable'] as bool,
      mapTypeOptions: map['mapTypeOptions'] == null
          ? null
          : (map['mapTypeOptions'] as Map).cast<String, dynamic>(),
      name: map['name'] as String,
      retrievalImportance: map['retrievalImportance'] == null
          ? null
          : map['retrievalImportance'] as String,
      schemaSources: map['schemaSources'] == null
          ? null
          : pulumi.Input.decodeList<
                  DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionSchemaSource>(
              map['schemaSources'],
              (value) =>
                  DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionSchemaSource
                      .fromMap((value as Map).cast<String, dynamic>())),
      textTypeOptions: map['textTypeOptions'] == null
          ? null
          : (map['textTypeOptions'] as Map).cast<String, dynamic>(),
      timestampTypeOptions: map['timestampTypeOptions'] == null
          ? null
          : (map['timestampTypeOptions'] as Map).cast<String, dynamic>(),
    );
  }
}
