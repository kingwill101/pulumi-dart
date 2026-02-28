// ignore_for_file: unused_element, unnecessary_cast

class DicomStoreStreamConfigBigqueryDestination {
  /// a fully qualified BigQuery table URI where DICOM instance metadata will be streamed.
  final String tableUri;

  /// Creates a new [DicomStoreStreamConfigBigqueryDestination].
  /// [tableUri] a fully qualified BigQuery table URI where DICOM instance metadata will be streamed.
  DicomStoreStreamConfigBigqueryDestination({
    required this.tableUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tableUri'] = tableUri;
    return map;
  }

  factory DicomStoreStreamConfigBigqueryDestination.fromMap(
      Map<String, dynamic> map) {
    return DicomStoreStreamConfigBigqueryDestination(
      tableUri: map['tableUri'] as String,
    );
  }
}
