// ignore_for_file: unused_element, unnecessary_cast

import '../fhir_store_stream_config_bigquery_destination_schema_config/fhir_store_stream_config_bigquery_destination_schema_config.dart';

class FhirStoreStreamConfigBigqueryDestination {
  /// BigQuery URI to a dataset, up to 2000 characters long, in the format bq://projectId.bqDatasetId
  final String datasetUri;

  /// The configuration for the exported BigQuery schema.
  /// Structure is documented below.
  final FhirStoreStreamConfigBigqueryDestinationSchemaConfig schemaConfig;

  FhirStoreStreamConfigBigqueryDestination({
    required this.datasetUri,
    required this.schemaConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetUri'] = datasetUri;
    map['schemaConfig'] = schemaConfig.toMap();
    return map;
  }

  factory FhirStoreStreamConfigBigqueryDestination.fromMap(
      Map<String, dynamic> map) {
    return FhirStoreStreamConfigBigqueryDestination(
      datasetUri: map['datasetUri'] as String,
      schemaConfig:
          FhirStoreStreamConfigBigqueryDestinationSchemaConfig.fromMap(
              (map['schemaConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
