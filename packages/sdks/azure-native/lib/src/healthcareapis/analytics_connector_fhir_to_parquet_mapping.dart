// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// FHIR Service data mapping configuration for Analytics Connector.
class AnalyticsConnectorFhirToParquetMapping {
  /// Artifact reference for extension schema.
  final pulumi.Input<String>? extensionSchemaReference;
  /// Artifact reference for filter configurations.
  final pulumi.Input<String>? filterConfigurationReference;
  /// Type of data mapping.
  /// Expected value is 'fhirToParquet'.
  final pulumi.Input<String> type;

  /// Creates a new [AnalyticsConnectorFhirToParquetMapping].
  /// [extensionSchemaReference] Artifact reference for extension schema.
  /// [filterConfigurationReference] Artifact reference for filter configurations.
  /// [type] Type of data mapping.
  AnalyticsConnectorFhirToParquetMapping({
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

  factory AnalyticsConnectorFhirToParquetMapping.fromMap(Map<String, dynamic> map) {
    return AnalyticsConnectorFhirToParquetMapping(
      extensionSchemaReference: map['extensionSchemaReference'] == null ? null : (map['extensionSchemaReference'] as String).input(),
      filterConfigurationReference: map['filterConfigurationReference'] == null ? null : (map['filterConfigurationReference'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

