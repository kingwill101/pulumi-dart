// ignore_for_file: unused_element, unnecessary_cast

class PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePath {
  /// A url representing a file or path (no wildcards) in Cloud Storage. Example: `gs://[BUCKET_NAME]/dictionary.txt`
  final String path;

  /// Creates a new [PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePath].
  /// [path] A url representing a file or path (no wildcards) in Cloud Storage. Example: `gs://[BUCKET_NAME]/dictionary.txt`
  PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePath({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': path};
  }

  factory PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePath.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobInspectConfigRuleSetRuleExclusionRuleDictionaryCloudStoragePath(
      path: map['path'] as String,
    );
  }
}
