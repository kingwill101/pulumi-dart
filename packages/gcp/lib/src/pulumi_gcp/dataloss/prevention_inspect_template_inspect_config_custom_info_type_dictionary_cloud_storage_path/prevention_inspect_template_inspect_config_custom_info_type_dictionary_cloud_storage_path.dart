// ignore_for_file: unused_element, unnecessary_cast

class PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath {
  /// A url representing a file or path (no wildcards) in Cloud Storage. Example: `gs://[BUCKET_NAME]/dictionary.txt`
  final String path;

  PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    return map;
  }

  factory PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath.fromMap(
      Map<String, dynamic> map) {
    return PreventionInspectTemplateInspectConfigCustomInfoTypeDictionaryCloudStoragePath(
      path: map['path'] as String,
    );
  }
}
