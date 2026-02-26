// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_healthcare_v1beta1_dicom_big_query_destination_write_disposition.dart';

/// The BigQuery table where the server writes output.
class GoogleCloudHealthcareV1beta1DicomBigQueryDestination {
  /// Use `write_disposition` instead. If `write_disposition` is specified, this parameter is ignored. force=false is equivalent to write_disposition=WRITE_EMPTY and force=true is equivalent to write_disposition=WRITE_TRUNCATE.
  final bool? force;

  /// BigQuery URI to a table, up to 2000 characters long, in the format `bq://projectId.bqDatasetId.tableId`
  final String? tableUri;

  /// Determines whether the existing table in the destination is to be overwritten or appended to. If a write_disposition is specified, the `force` parameter is ignored.
  final GoogleCloudHealthcareV1beta1DicomBigQueryDestinationWriteDisposition?
      writeDisposition;

  GoogleCloudHealthcareV1beta1DicomBigQueryDestination({
    this.force,
    this.tableUri,
    this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final forceValue = force;
    if (forceValue != null) {
      map['force'] = forceValue;
    }
    final tableUriValue = tableUri;
    if (tableUriValue != null) {
      map['tableUri'] = tableUriValue;
    }
    final writeDispositionValue = writeDisposition;
    if (writeDispositionValue != null) {
      map['writeDisposition'] = writeDispositionValue.value;
    }
    return map;
  }

  factory GoogleCloudHealthcareV1beta1DicomBigQueryDestination.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudHealthcareV1beta1DicomBigQueryDestination(
      force: map['force'] == null ? null : map['force'] as bool,
      tableUri: map['tableUri'] == null ? null : map['tableUri'] as String,
      writeDisposition: map['writeDisposition'] == null
          ? null
          : GoogleCloudHealthcareV1beta1DicomBigQueryDestinationWriteDisposition
              .fromValue(map['writeDisposition'] as String),
    );
  }
}
