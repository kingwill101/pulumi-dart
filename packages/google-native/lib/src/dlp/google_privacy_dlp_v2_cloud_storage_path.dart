// ignore_for_file: unused_element, unnecessary_cast

/// Message representing a single file or path in Cloud Storage.
class GooglePrivacyDlpV2CloudStoragePath {
  /// A url representing a file or path (no wildcards) in Cloud Storage. Example: gs://[BUCKET_NAME]/dictionary.txt
  final String? path;

  /// Creates a new [GooglePrivacyDlpV2CloudStoragePath].
  /// [path] A url representing a file or path (no wildcards) in Cloud Storage. Example: gs://[BUCKET_NAME]/dictionary.txt
  GooglePrivacyDlpV2CloudStoragePath({
    this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pathValue = path;
    if (pathValue != null) {
      map['path'] = pathValue;
    }
    return map;
  }

  factory GooglePrivacyDlpV2CloudStoragePath.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2CloudStoragePath(
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}
