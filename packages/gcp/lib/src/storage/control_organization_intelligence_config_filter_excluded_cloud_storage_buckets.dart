// ignore_for_file: unused_element, unnecessary_cast

class ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBuckets {
  /// List of bucket id regexes to exclude in the storage intelligence plan.
  final List<String> bucketIdRegexes;

  /// Creates a new [ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBuckets].
  /// [bucketIdRegexes] List of bucket id regexes to exclude in the storage intelligence plan.
  ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucketIdRegexes': bucketIdRegexes};
  }

  factory ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBuckets.fromMap(
    Map<String, dynamic> map,
  ) {
    return ControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBuckets(
      bucketIdRegexes: (map['bucketIdRegexes'] as List).cast<String>(),
    );
  }
}
