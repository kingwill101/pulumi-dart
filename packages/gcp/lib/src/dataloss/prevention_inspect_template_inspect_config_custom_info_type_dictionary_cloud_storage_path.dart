// ignore_for_file: unused_element, unnecessary_cast


class PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath {
  /// A url representing a file or path (no wildcards) in Cloud Storage. Example: `gs://[BUCKET_NAME]/dictionary.txt`
  final String path;

  /// Creates a new [PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath].
  /// [path] A url representing a file or path (no wildcards) in Cloud Storage. Example: `gs://[BUCKET_NAME]/dictionary.txt`
  PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath.fromMap(Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath(
      path: map['path'] as String,
    );
  }
}

