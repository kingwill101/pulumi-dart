// ignore_for_file: unused_element, unnecessary_cast

import 'schema_config_response.dart';

/// The configuration for exporting to BigQuery.
class GoogleCloudHealthcareV1FhirBigQueryDestinationResponse {
  /// BigQuery URI to an existing dataset, up to 2000 characters long, in the format `bq://projectId.bqDatasetId`.
  final String datasetUri;

  /// If this flag is `TRUE`, all tables are deleted from the dataset before the new exported tables are written. If the flag is not set and the destination dataset contains tables, the export call returns an error. If `write_disposition` is specified, this parameter is ignored. force=false is equivalent to write_disposition=WRITE_EMPTY and force=true is equivalent to write_disposition=WRITE_TRUNCATE.
  final bool force;

  /// The configuration for the exported BigQuery schema.
  final SchemaConfigResponse schemaConfig;

  /// Determines if existing data in the destination dataset is overwritten, appended to, or not written if the tables contain data. If a write_disposition is specified, the `force` parameter is ignored.
  final String writeDisposition;

  /// Creates a new [GoogleCloudHealthcareV1FhirBigQueryDestinationResponse].
  /// [datasetUri] BigQuery URI to an existing dataset, up to 2000 characters long, in the format `bq://projectId.bqDatasetId`.
  /// [force] If this flag is `TRUE`, all tables are deleted from the dataset before the new exported tables are written. If the flag is not set and the destination dataset contains tables, the export call returns an error. If `write_disposition` is specified, this parameter is ignored. force=false is equivalent to write_disposition=WRITE_EMPTY and force=true is equivalent to write_disposition=WRITE_TRUNCATE.
  /// [schemaConfig] The configuration for the exported BigQuery schema.
  /// [writeDisposition] Determines if existing data in the destination dataset is overwritten, appended to, or not written if the tables contain data. If a write_disposition is specified, the `force` parameter is ignored.
  GoogleCloudHealthcareV1FhirBigQueryDestinationResponse({
    required this.datasetUri,
    required this.force,
    required this.schemaConfig,
    required this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetUri': datasetUri,
      'force': force,
      'schemaConfig': schemaConfig.toMap(),
      'writeDisposition': writeDisposition,
    };
  }

  factory GoogleCloudHealthcareV1FhirBigQueryDestinationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudHealthcareV1FhirBigQueryDestinationResponse(
      datasetUri: map['datasetUri'] as String,
      force: map['force'] as bool,
      schemaConfig: SchemaConfigResponse.fromMap(
        (map['schemaConfig'] as Map).cast<String, dynamic>(),
      ),
      writeDisposition: map['writeDisposition'] as String,
    );
  }
}
