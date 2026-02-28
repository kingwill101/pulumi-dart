// ignore_for_file: unused_element, unnecessary_cast

/// Source of the Cloud Storage file to be imported.
class GoogleCloudDatalabelingV1beta1GcsSource {
  /// The input URI of source file. This must be a Cloud Storage path (`gs://...`).
  final String inputUri;

  /// The format of the source file. Only "text/csv" is supported.
  final String mimeType;

  /// Creates a new [GoogleCloudDatalabelingV1beta1GcsSource].
  /// [inputUri] The input URI of source file. This must be a Cloud Storage path (`gs://...`).
  /// [mimeType] The format of the source file. Only "text/csv" is supported.
  GoogleCloudDatalabelingV1beta1GcsSource({
    required this.inputUri,
    required this.mimeType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['inputUri'] = inputUri;
    map['mimeType'] = mimeType;
    return map;
  }

  factory GoogleCloudDatalabelingV1beta1GcsSource.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatalabelingV1beta1GcsSource(
      inputUri: map['inputUri'] as String,
      mimeType: map['mimeType'] as String,
    );
  }
}
