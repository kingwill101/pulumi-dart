// ignore_for_file: unused_element, unnecessary_cast

class PreventionStoredInfoTypeDictionaryCloudStoragePath {
  /// A url representing a file or path (no wildcards) in Cloud Storage. Example: `gs://[BUCKET_NAME]/dictionary.txt`
  final String path;

  /// Creates a new [PreventionStoredInfoTypeDictionaryCloudStoragePath].
  /// [path] A url representing a file or path (no wildcards) in Cloud Storage. Example: `gs://[BUCKET_NAME]/dictionary.txt`
  PreventionStoredInfoTypeDictionaryCloudStoragePath({required this.path});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': path};
  }

  factory PreventionStoredInfoTypeDictionaryCloudStoragePath.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionStoredInfoTypeDictionaryCloudStoragePath(
      path: map['path'] as String,
    );
  }
}
