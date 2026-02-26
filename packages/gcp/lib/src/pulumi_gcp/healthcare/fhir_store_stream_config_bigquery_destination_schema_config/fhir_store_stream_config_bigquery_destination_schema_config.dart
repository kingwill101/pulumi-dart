// ignore_for_file: unused_element, unnecessary_cast

import '../fhir_store_stream_config_bigquery_destination_schema_config_last_updated_partition_config/fhir_store_stream_config_bigquery_destination_schema_config_last_updated_partition_config.dart';

class FhirStoreStreamConfigBigqueryDestinationSchemaConfig {
  /// The configuration for exported BigQuery tables to be partitioned by FHIR resource's last updated time column.
  /// Structure is documented below.
  final FhirStoreStreamConfigBigqueryDestinationSchemaConfigLastUpdatedPartitionConfig?
      lastUpdatedPartitionConfig;

  /// The depth for all recursive structures in the output analytics schema. For example, concept in the CodeSystem
  /// resource is a recursive structure; when the depth is 2, the CodeSystem table will have a column called
  /// concept.concept but not concept.concept.concept. If not specified or set to 0, the server will use the default
  /// value 2. The maximum depth allowed is 5.
  final int recursiveStructureDepth;

  /// Specifies the output schema type.
  /// * ANALYTICS: Analytics schema defined by the FHIR community.
  /// See https://github.com/FHIR/sql-on-fhir/blob/master/sql-on-fhir.md.
  /// * ANALYTICS_V2: Analytics V2, similar to schema defined by the FHIR community, with added support for extensions with one or more occurrences and contained resources in stringified JSON.
  /// * LOSSLESS: A data-driven schema generated from the fields present in the FHIR data being exported, with no additional simplification.
  /// Default value is `ANALYTICS`.
  /// Possible values are: `ANALYTICS`, `ANALYTICS_V2`, `LOSSLESS`.
  final String? schemaType;

  FhirStoreStreamConfigBigqueryDestinationSchemaConfig({
    this.lastUpdatedPartitionConfig,
    required this.recursiveStructureDepth,
    this.schemaType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lastUpdatedPartitionConfigValue = lastUpdatedPartitionConfig;
    if (lastUpdatedPartitionConfigValue != null) {
      map['lastUpdatedPartitionConfig'] =
          lastUpdatedPartitionConfigValue.toMap();
    }
    map['recursiveStructureDepth'] = recursiveStructureDepth;
    final schemaTypeValue = schemaType;
    if (schemaTypeValue != null) {
      map['schemaType'] = schemaTypeValue;
    }
    return map;
  }

  factory FhirStoreStreamConfigBigqueryDestinationSchemaConfig.fromMap(
      Map<String, dynamic> map) {
    return FhirStoreStreamConfigBigqueryDestinationSchemaConfig(
      lastUpdatedPartitionConfig: map['lastUpdatedPartitionConfig'] == null
          ? null
          : FhirStoreStreamConfigBigqueryDestinationSchemaConfigLastUpdatedPartitionConfig
              .fromMap((map['lastUpdatedPartitionConfig'] as Map)
                  .cast<String, dynamic>()),
      recursiveStructureDepth: map['recursiveStructureDepth'] as int,
      schemaType:
          map['schemaType'] == null ? null : map['schemaType'] as String,
    );
  }
}
