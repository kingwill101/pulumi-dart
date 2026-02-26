// ignore_for_file: unused_element, unnecessary_cast

import 'schema_config_schema_type2.dart';
import 'time_partitioning3.dart';

/// Configuration for the FHIR BigQuery schema. Determines how the server generates the schema.
class SchemaConfig2 {
  /// The configuration for exported BigQuery tables to be partitioned by FHIR resource's last updated time column.
  final TimePartitioning3? lastUpdatedPartitionConfig;

  /// The depth for all recursive structures in the output analytics schema. For example, `concept` in the CodeSystem resource is a recursive structure; when the depth is 2, the CodeSystem table will have a column called `concept.concept` but not `concept.concept.concept`. If not specified or set to 0, the server will use the default value 2. The maximum depth allowed is 5.
  final String? recursiveStructureDepth;

  /// Specifies the output schema type. Schema type is required.
  final SchemaConfigSchemaType2? schemaType;

  SchemaConfig2({
    this.lastUpdatedPartitionConfig,
    this.recursiveStructureDepth,
    this.schemaType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lastUpdatedPartitionConfigValue = lastUpdatedPartitionConfig;
    if (lastUpdatedPartitionConfigValue != null) {
      map['lastUpdatedPartitionConfig'] =
          lastUpdatedPartitionConfigValue.toMap();
    }
    final recursiveStructureDepthValue = recursiveStructureDepth;
    if (recursiveStructureDepthValue != null) {
      map['recursiveStructureDepth'] = recursiveStructureDepthValue;
    }
    final schemaTypeValue = schemaType;
    if (schemaTypeValue != null) {
      map['schemaType'] = schemaTypeValue.value;
    }
    return map;
  }

  factory SchemaConfig2.fromMap(Map<String, dynamic> map) {
    return SchemaConfig2(
      lastUpdatedPartitionConfig: map['lastUpdatedPartitionConfig'] == null
          ? null
          : TimePartitioning3.fromMap((map['lastUpdatedPartitionConfig'] as Map)
              .cast<String, dynamic>()),
      recursiveStructureDepth: map['recursiveStructureDepth'] == null
          ? null
          : map['recursiveStructureDepth'] as String,
      schemaType: map['schemaType'] == null
          ? null
          : SchemaConfigSchemaType2.fromValue(map['schemaType'] as String),
    );
  }
}
