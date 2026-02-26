// ignore_for_file: unused_element, unnecessary_cast

/// Message representing a single file or path in Cloud Storage.
class GooglePrivacyDlpV2CloudStoragePathResponse {
  /// A url representing a file or path (no wildcards) in Cloud Storage. Example: gs://[BUCKET_NAME]/dictionary.txt
  final String path;

  GooglePrivacyDlpV2CloudStoragePathResponse({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    return map;
  }

  factory GooglePrivacyDlpV2CloudStoragePathResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CloudStoragePathResponse(
      path: map['path'] as String,
    );
  }
}
