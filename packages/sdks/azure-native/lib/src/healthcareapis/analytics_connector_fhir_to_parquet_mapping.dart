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
  const AnalyticsConnectorFhirToParquetMapping({
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
      extensionSchemaReference: (() { final guardedValue = map['extensionSchemaReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterConfigurationReference: (() { final guardedValue = map['filterConfigurationReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

