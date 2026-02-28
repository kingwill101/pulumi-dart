// ignore_for_file: unused_element, unnecessary_cast

class GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket {
  /// List of bucket id regexes to exclude in the storage intelligence plan.
  final List<String> bucketIdRegexes;

  /// Creates a new [GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket].
  /// [bucketIdRegexes] List of bucket id regexes to exclude in the storage intelligence plan.
  GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket({
    required this.bucketIdRegexes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketIdRegexes'] = bucketIdRegexes;
    return map;
  }

  factory GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket.fromMap(
      Map<String, dynamic> map) {
    return GetControlOrganizationIntelligenceConfigFilterIncludedCloudStorageBucket(
      bucketIdRegexes: (map['bucketIdRegexes'] as List).cast<String>(),
    );
  }
}
