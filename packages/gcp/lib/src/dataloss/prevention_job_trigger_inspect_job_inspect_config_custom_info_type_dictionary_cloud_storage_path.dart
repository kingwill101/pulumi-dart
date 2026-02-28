// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryCloudStoragePath {
  /// A url representing a file or path (no wildcards) in Cloud Storage. Example: `gs://[BUCKET_NAME]/dictionary.txt`
  final String path;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryCloudStoragePath].
  /// [path] A url representing a file or path (no wildcards) in Cloud Storage. Example: `gs://[BUCKET_NAME]/dictionary.txt`
  PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryCloudStoragePath({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    return map;
  }

  factory PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryCloudStoragePath.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobInspectConfigCustomInfoTypeDictionaryCloudStoragePath(
      path: map['path'] as String,
    );
  }
}
