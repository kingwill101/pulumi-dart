// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1beta1_system_timestamps_response.dart';

/// Specifications of a single file in Cloud Storage.
class GoogleCloudDatacatalogV1beta1GcsFileSpecResponse {
  /// The full file path. Example: `gs://bucket_name/a/b.txt`.
  final String filePath;

  /// Timestamps about the Cloud Storage file.
  final GoogleCloudDatacatalogV1beta1SystemTimestampsResponse gcsTimestamps;

  /// The size of the file, in bytes.
  final String sizeBytes;

  GoogleCloudDatacatalogV1beta1GcsFileSpecResponse({
    required this.filePath,
    required this.gcsTimestamps,
    required this.sizeBytes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['filePath'] = filePath;
    map['gcsTimestamps'] = gcsTimestamps.toMap();
    map['sizeBytes'] = sizeBytes;
    return map;
  }

  factory GoogleCloudDatacatalogV1beta1GcsFileSpecResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1beta1GcsFileSpecResponse(
      filePath: map['filePath'] as String,
      gcsTimestamps:
          GoogleCloudDatacatalogV1beta1SystemTimestampsResponse.fromMap(
              (map['gcsTimestamps'] as Map).cast<String, dynamic>()),
      sizeBytes: map['sizeBytes'] as String,
    );
  }
}
