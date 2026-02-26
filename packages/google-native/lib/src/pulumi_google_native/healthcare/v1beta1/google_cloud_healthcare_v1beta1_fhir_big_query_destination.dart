// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_healthcare_v1beta1_fhir_big_query_destination_write_disposition.dart';
import 'schema_config2.dart';

/// The configuration for exporting to BigQuery.
class GoogleCloudHealthcareV1beta1FhirBigQueryDestination {
  /// BigQuery URI to an existing dataset, up to 2000 characters long, in the format `bq://projectId.bqDatasetId`.
  final String? datasetUri;

  /// Use `write_disposition` instead. If `write_disposition` is specified, this parameter is ignored. force=false is equivalent to write_disposition=WRITE_EMPTY and force=true is equivalent to write_disposition=WRITE_TRUNCATE.
  final bool? force;

  /// The configuration for the exported BigQuery schema.
  final SchemaConfig2? schemaConfig;

  /// Determines if existing data in the destination dataset is overwritten, appended to, or not written if the tables contain data. If a write_disposition is specified, the `force` parameter is ignored.
  final GoogleCloudHealthcareV1beta1FhirBigQueryDestinationWriteDisposition?
      writeDisposition;

  GoogleCloudHealthcareV1beta1FhirBigQueryDestination({
    this.datasetUri,
    this.force,
    this.schemaConfig,
    this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datasetUriValue = datasetUri;
    if (datasetUriValue != null) {
      map['datasetUri'] = datasetUriValue;
    }
    final forceValue = force;
    if (forceValue != null) {
      map['force'] = forceValue;
    }
    final schemaConfigValue = schemaConfig;
    if (schemaConfigValue != null) {
      map['schemaConfig'] = schemaConfigValue.toMap();
    }
    final writeDispositionValue = writeDisposition;
    if (writeDispositionValue != null) {
      map['writeDisposition'] = writeDispositionValue.value;
    }
    return map;
  }

  factory GoogleCloudHealthcareV1beta1FhirBigQueryDestination.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudHealthcareV1beta1FhirBigQueryDestination(
      datasetUri:
          map['datasetUri'] == null ? null : map['datasetUri'] as String,
      force: map['force'] == null ? null : map['force'] as bool,
      schemaConfig: map['schemaConfig'] == null
          ? null
          : SchemaConfig2.fromMap(
              (map['schemaConfig'] as Map).cast<String, dynamic>()),
      writeDisposition: map['writeDisposition'] == null
          ? null
          : GoogleCloudHealthcareV1beta1FhirBigQueryDestinationWriteDisposition
              .fromValue(map['writeDisposition'] as String),
    );
  }
}
