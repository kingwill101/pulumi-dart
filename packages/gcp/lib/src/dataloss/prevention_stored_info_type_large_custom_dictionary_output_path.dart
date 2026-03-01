// ignore_for_file: unused_element, unnecessary_cast

class PreventionStoredInfoTypeLargeCustomDictionaryOutputPath {
  /// A url representing a file or path (no wildcards) in Cloud Storage. Example: `gs://[BUCKET_NAME]/dictionary.txt`
  final String path;

  /// Creates a new [PreventionStoredInfoTypeLargeCustomDictionaryOutputPath].
  /// [path] A url representing a file or path (no wildcards) in Cloud Storage. Example: `gs://[BUCKET_NAME]/dictionary.txt`
  PreventionStoredInfoTypeLargeCustomDictionaryOutputPath({required this.path});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': path};
  }

  factory PreventionStoredInfoTypeLargeCustomDictionaryOutputPath.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionStoredInfoTypeLargeCustomDictionaryOutputPath(
      path: map['path'] as String,
    );
  }
}
