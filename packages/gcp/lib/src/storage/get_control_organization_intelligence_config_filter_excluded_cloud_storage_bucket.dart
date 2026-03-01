// ignore_for_file: unused_element, unnecessary_cast

class GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucket {
  /// List of bucket id regexes to exclude in the storage intelligence plan.
  final List<String> bucketIdRegexes;

  /// Creates a new [GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucket].
  /// [bucketIdRegexes] List of bucket id regexes to exclude in the storage intelligence plan.
  GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucket({
    required this.bucketIdRegexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucketIdRegexes': bucketIdRegexes};
  }

  factory GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucket.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetControlOrganizationIntelligenceConfigFilterExcludedCloudStorageBucket(
      bucketIdRegexes: (map['bucketIdRegexes'] as List).cast<String>(),
    );
  }
}
