// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_enum_type_options_response.dart';
import 'google_cloud_contentwarehouse_v1_property_definition_schema_source_response.dart';
import 'google_cloud_contentwarehouse_v1_property_type_options_response.dart';

/// Defines the metadata for a schema property.
class GoogleCloudContentwarehouseV1PropertyDefinitionResponse {
  /// Date time property. It is not supported by CMEK compliant deployment.
  final Map<String, dynamic> dateTimeTypeOptions;

  /// The display-name for the property, used for front-end.
  final String displayName;

  /// Enum/categorical property.
  final GoogleCloudContentwarehouseV1EnumTypeOptionsResponse enumTypeOptions;

  /// Float property.
  final Map<String, dynamic> floatTypeOptions;

  /// Integer property.
  final Map<String, dynamic> integerTypeOptions;

  /// Whether the property can be filtered. If this is a sub-property, all the parent properties must be marked filterable.
  final bool isFilterable;

  /// Whether the property is user supplied metadata. This out-of-the box placeholder setting can be used to tag derived properties. Its value and interpretation logic should be implemented by API user.
  final bool isMetadata;

  /// Whether the property can have multiple values.
  final bool isRepeatable;

  /// Whether the property is mandatory. Default is 'false', i.e. populating property value can be skipped. If 'true' then user must populate the value for this property.
  final bool isRequired;

  /// Indicates that the property should be included in a global search.
  final bool isSearchable;

  /// Map property.
  final Map<String, dynamic> mapTypeOptions;

  /// The name of the metadata property. Must be unique within a document schema and is case insensitive. Names must be non-blank, start with a letter, and can contain alphanumeric characters and: /, :, -, _, and .
  final String name;

  /// Nested structured data property.
  final GoogleCloudContentwarehouseV1PropertyTypeOptionsResponse
      propertyTypeOptions;

  /// The retrieval importance of the property during search.
  final String retrievalImportance;

  /// The mapping information between this property to another schema source.
  final List<
          GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSourceResponse>
      schemaSources;

  /// Text/string property.
  final Map<String, dynamic> textTypeOptions;

  /// Timestamp property. It is not supported by CMEK compliant deployment.
  final Map<String, dynamic> timestampTypeOptions;

  GoogleCloudContentwarehouseV1PropertyDefinitionResponse({
    required this.dateTimeTypeOptions,
    required this.displayName,
    required this.enumTypeOptions,
    required this.floatTypeOptions,
    required this.integerTypeOptions,
    required this.isFilterable,
    required this.isMetadata,
    required this.isRepeatable,
    required this.isRequired,
    required this.isSearchable,
    required this.mapTypeOptions,
    required this.name,
    required this.propertyTypeOptions,
    required this.retrievalImportance,
    required this.schemaSources,
    required this.textTypeOptions,
    required this.timestampTypeOptions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dateTimeTypeOptions'] = dateTimeTypeOptions;
    map['displayName'] = displayName;
    map['enumTypeOptions'] = enumTypeOptions.toMap();
    map['floatTypeOptions'] = floatTypeOptions;
    map['integerTypeOptions'] = integerTypeOptions;
    map['isFilterable'] = isFilterable;
    map['isMetadata'] = isMetadata;
    map['isRepeatable'] = isRepeatable;
    map['isRequired'] = isRequired;
    map['isSearchable'] = isSearchable;
    map['mapTypeOptions'] = mapTypeOptions;
    map['name'] = name;
    map['propertyTypeOptions'] = propertyTypeOptions.toMap();
    map['retrievalImportance'] = retrievalImportance;
    map['schemaSources'] = pulumi.Input.encodeList<
        GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSourceResponse,
        Map<String, dynamic>>(schemaSources, (value) => value.toMap());
    map['textTypeOptions'] = textTypeOptions;
    map['timestampTypeOptions'] = timestampTypeOptions;
    return map;
  }

  factory GoogleCloudContentwarehouseV1PropertyDefinitionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1PropertyDefinitionResponse(
      dateTimeTypeOptions:
          (map['dateTimeTypeOptions'] as Map).cast<String, dynamic>(),
      displayName: map['displayName'] as String,
      enumTypeOptions:
          GoogleCloudContentwarehouseV1EnumTypeOptionsResponse.fromMap(
              (map['enumTypeOptions'] as Map).cast<String, dynamic>()),
      floatTypeOptions:
          (map['floatTypeOptions'] as Map).cast<String, dynamic>(),
      integerTypeOptions:
          (map['integerTypeOptions'] as Map).cast<String, dynamic>(),
      isFilterable: map['isFilterable'] as bool,
      isMetadata: map['isMetadata'] as bool,
      isRepeatable: map['isRepeatable'] as bool,
      isRequired: map['isRequired'] as bool,
      isSearchable: map['isSearchable'] as bool,
      mapTypeOptions: (map['mapTypeOptions'] as Map).cast<String, dynamic>(),
      name: map['name'] as String,
      propertyTypeOptions:
          GoogleCloudContentwarehouseV1PropertyTypeOptionsResponse.fromMap(
              (map['propertyTypeOptions'] as Map).cast<String, dynamic>()),
      retrievalImportance: map['retrievalImportance'] as String,
      schemaSources: pulumi.Input.decodeList<
              GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSourceResponse>(
          map['schemaSources'],
          (value) =>
              GoogleCloudContentwarehouseV1PropertyDefinitionSchemaSourceResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
      textTypeOptions: (map['textTypeOptions'] as Map).cast<String, dynamic>(),
      timestampTypeOptions:
          (map['timestampTypeOptions'] as Map).cast<String, dynamic>(),
    );
  }
}
