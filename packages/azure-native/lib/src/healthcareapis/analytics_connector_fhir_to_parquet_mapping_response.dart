// ignore_for_file: unused_element, unnecessary_cast


/// FHIR Service data mapping configuration for Analytics Connector.
class AnalyticsConnectorFhirToParquetMappingResponse {
  /// Artifact reference for extension schema.
  final String? extensionSchemaReference;
  /// Artifact reference for filter configurations.
  final String? filterConfigurationReference;
  /// Type of data mapping.
  /// Expected value is 'fhirToParquet'.
  final String type;

  /// Creates a new [AnalyticsConnectorFhirToParquetMappingResponse].
  /// [extensionSchemaReference] Artifact reference for extension schema.
  /// [filterConfigurationReference] Artifact reference for filter configurations.
  /// [type] Type of data mapping.
  AnalyticsConnectorFhirToParquetMappingResponse({
    this.extensionSchemaReference,
    this.filterConfigurationReference,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionSchemaReference': ?extensionSchemaReference,
      'filterConfigurationReference': ?filterConfigurationReference,
      'type': type,
    };
  }

  factory AnalyticsConnectorFhirToParquetMappingResponse.fromMap(Map<String, dynamic> map) {
    return AnalyticsConnectorFhirToParquetMappingResponse(
      extensionSchemaReference: map['extensionSchemaReference'] == null ? null : map['extensionSchemaReference'] as String,
      filterConfigurationReference: map['filterConfigurationReference'] == null ? null : map['filterConfigurationReference'] as String,
      type: map['type'] as String,
    );
  }
}

