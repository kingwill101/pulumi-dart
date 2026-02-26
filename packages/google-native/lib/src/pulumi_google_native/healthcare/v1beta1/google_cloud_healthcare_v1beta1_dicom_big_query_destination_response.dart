// ignore_for_file: unused_element, unnecessary_cast

/// The BigQuery table where the server writes output.
class GoogleCloudHealthcareV1beta1DicomBigQueryDestinationResponse {
  /// Use `write_disposition` instead. If `write_disposition` is specified, this parameter is ignored. force=false is equivalent to write_disposition=WRITE_EMPTY and force=true is equivalent to write_disposition=WRITE_TRUNCATE.
  final bool force;

  /// BigQuery URI to a table, up to 2000 characters long, in the format `bq://projectId.bqDatasetId.tableId`
  final String tableUri;

  /// Determines whether the existing table in the destination is to be overwritten or appended to. If a write_disposition is specified, the `force` parameter is ignored.
  final String writeDisposition;

  GoogleCloudHealthcareV1beta1DicomBigQueryDestinationResponse({
    required this.force,
    required this.tableUri,
    required this.writeDisposition,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['force'] = force;
    map['tableUri'] = tableUri;
    map['writeDisposition'] = writeDisposition;
    return map;
  }

  factory GoogleCloudHealthcareV1beta1DicomBigQueryDestinationResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudHealthcareV1beta1DicomBigQueryDestinationResponse(
      force: map['force'] as bool,
      tableUri: map['tableUri'] as String,
      writeDisposition: map['writeDisposition'] as String,
    );
  }
}
