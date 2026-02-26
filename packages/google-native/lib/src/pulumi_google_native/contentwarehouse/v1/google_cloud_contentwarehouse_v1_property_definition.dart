// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_contentwarehouse_v1_enum_type_options.dart';
import 'google_cloud_contentwarehouse_v1_property_definition_retrieval_importance.dart';
import 'google_cloud_contentwarehouse_v1_property_definition_schema_source.dart';
import 'google_cloud_contentwarehouse_v1_property_type_options.dart';

/// Defines the metadata for a schema property.
class GoogleCloudContentwarehouseV1PropertyDefinition {
  /// Date time property. It is not supported by CMEK compliant deployment.
  final Map<String, dynamic>? dateTimeTypeOptions;

  /// The display-name for the property, used for front-end.
  final String? displayName;

  /// Enum/categorical property.
  final GoogleCloudContentwarehouseV1EnumTypeOptions? enumTypeOptions;

  /// Float property.
  final Map<String, dynamic>? floatTypeOptions;

  /// Integer property.
  final Map<String, dynamic>? integerTypeOptions;

  /// Whether the property can be filtered. If this is a sub-property, all the parent properties must be marked filterable.
  final bool? isFilterable;

  /// Whether the property is user supplied metadata. This out-of-the box placeholder setting can be used to tag derived properties. Its value and interpretation logic should be implemented by API user.
  final bool? isMetadata;

  /// Whether the property can have multiple values.
  final bool? isRepeatable;

  /// Whether the property is mandatory. Default is 'false', i.e. populating property value can be skipped. If 'true' then user must populate the value for this property.
  final bool? isRequired;

  /// Indicates that the property should be included in a global search.
  final bool? isSearchable;

  /// Map property.
  final Map<String, dynamic>? mapTypeOptions;

  /// The name of the metadata property. Must be unique within a document schema and is case insensitive. Names must be non-blank, start with a letter, and can contain alphanumeric characters and: /, :, -, _, and .
  final String name;

  /// Nested structured data property.
  final GoogleCloudContentwarehouseV1PropertyTypeOptions? propertyTypeOptions;

  /// The retrieval importance of the property during search.
  final GoogleCloudContentwarehouseV1PropertyDefinitionRetrievalImportance?
      retrievalImportance;

  /// The mapping information between this property to another schema source.
  final List<GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource>?
      schemaSources;

  /// Text/string property.
  final Map<String, dynamic>? textTypeOptions;

  /// Timestamp property. It is not supported by CMEK compliant deployment.
  final Map<String, dynamic>? timestampTypeOptions;

  GoogleCloudContentwarehouseV1PropertyDefinition({
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
    final propertyTypeOptionsValue = propertyTypeOptions;
    if (propertyTypeOptionsValue != null) {
      map['propertyTypeOptions'] = propertyTypeOptionsValue.toMap();
    }
    final retrievalImportanceValue = retrievalImportance;
    if (retrievalImportanceValue != null) {
      map['retrievalImportance'] = retrievalImportanceValue.value;
    }
    final schemaSourcesValue = schemaSources;
    if (schemaSourcesValue != null) {
      map['schemaSources'] = Input.encodeList<
          GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource,
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

  factory GoogleCloudContentwarehouseV1PropertyDefinition.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1PropertyDefinition(
      dateTimeTypeOptions: map['dateTimeTypeOptions'] == null
          ? null
          : (map['dateTimeTypeOptions'] as Map).cast<String, dynamic>(),
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      enumTypeOptions: map['enumTypeOptions'] == null
          ? null
          : GoogleCloudContentwarehouseV1EnumTypeOptions.fromMap(
              (map['enumTypeOptions'] as Map).cast<String, dynamic>()),
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
      propertyTypeOptions: map['propertyTypeOptions'] == null
          ? null
          : GoogleCloudContentwarehouseV1PropertyTypeOptions.fromMap(
              (map['propertyTypeOptions'] as Map).cast<String, dynamic>()),
      retrievalImportance: map['retrievalImportance'] == null
          ? null
          : GoogleCloudContentwarehouseV1PropertyDefinitionRetrievalImportance
              .fromValue(map['retrievalImportance'] as String),
      schemaSources: map['schemaSources'] == null
          ? null
          : Input.decodeList<
                  GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource>(
              map['schemaSources'],
              (value) =>
                  GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSource
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
