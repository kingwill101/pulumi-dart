// ignore_for_file: unused_element, unnecessary_cast

class ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBuckets {
  /// List of bucket id regexes to exclude in the storage intelligence plan.
  final List<String> bucketIdRegexes;

  ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketIdRegexes'] = bucketIdRegexes;
    return map;
  }

  factory ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBuckets.fromMap(
      Map<String, dynamic> map) {
    return ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBuckets(
      bucketIdRegexes: (map['bucketIdRegexes'] as List).cast<String>(),
    );
  }
}
