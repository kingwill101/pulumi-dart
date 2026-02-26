// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigStoragePath {
  /// A URL representing a file or path (no wildcards) in Cloud Storage.
  /// Example: `gs://[BUCKET_NAME]/dictionary.txt`
  final String path;

  PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigStoragePath({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['path'] = path;
    return map;
  }

  factory PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigStoragePath.fromMap(
      Map<String, dynamic> map) {
    return PreventionJobTriggerInspectJobActionSaveFindingsOutputConfigStoragePath(
      path: map['path'] as String,
    );
  }
}
