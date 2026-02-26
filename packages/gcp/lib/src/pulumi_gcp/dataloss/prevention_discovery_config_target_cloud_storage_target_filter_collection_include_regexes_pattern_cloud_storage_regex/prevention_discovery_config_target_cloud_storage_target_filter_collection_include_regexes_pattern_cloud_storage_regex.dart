// ignore_for_file: unused_element, unnecessary_cast

class PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPatternCloudStorageRegex {
  /// Regex to test the bucket name against. If empty, all buckets match. Example: "marketing2021" or "(marketing)\d{4}" will both match the bucket gs://marketing2021
  final String? bucketNameRegex;

  /// For organizations, if unset, will match all projects.
  final String? projectIdRegex;

  PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPatternCloudStorageRegex({
    this.bucketNameRegex,
    this.projectIdRegex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketNameRegexValue = bucketNameRegex;
    if (bucketNameRegexValue != null) {
      map['bucketNameRegex'] = bucketNameRegexValue;
    }
    final projectIdRegexValue = projectIdRegex;
    if (projectIdRegexValue != null) {
      map['projectIdRegex'] = projectIdRegexValue;
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPatternCloudStorageRegex.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetFilterCollectionIncludeRegexesPatternCloudStorageRegex(
      bucketNameRegex: map['bucketNameRegex'] == null
          ? null
          : map['bucketNameRegex'] as String,
      projectIdRegex: map['projectIdRegex'] == null
          ? null
          : map['projectIdRegex'] as String,
    );
  }
}
