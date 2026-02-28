// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_system_timestamps_response.dart';

/// Specification of a single file in Cloud Storage.
class GoogleCloudDatacatalogV1GcsFileSpecResponse {
  /// Full file path. Example: `gs://bucket_name/a/b.txt`.
  final String filePath;
  /// Creation, modification, and expiration timestamps of a Cloud Storage file.
  final GoogleCloudDatacatalogV1SystemTimestampsResponse gcsTimestamps;
  /// File size in bytes.
  final String sizeBytes;

  /// Creates a new [GoogleCloudDatacatalogV1GcsFileSpecResponse].
  /// [filePath] Full file path. Example: `gs://bucket_name/a/b.txt`.
  /// [gcsTimestamps] Creation, modification, and expiration timestamps of a Cloud Storage file.
  /// [sizeBytes] File size in bytes.
  GoogleCloudDatacatalogV1GcsFileSpecResponse({
    required this.filePath,
    required this.gcsTimestamps,
    required this.sizeBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePath': filePath,
      'gcsTimestamps': gcsTimestamps.toMap(),
      'sizeBytes': sizeBytes,
    };
  }

  factory GoogleCloudDatacatalogV1GcsFileSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1GcsFileSpecResponse(
      filePath: map['filePath'] as String,
      gcsTimestamps: GoogleCloudDatacatalogV1SystemTimestampsResponse.fromMap((map['gcsTimestamps'] as Map).cast<String, dynamic>()),
      sizeBytes: map['sizeBytes'] as String,
    );
  }
}

