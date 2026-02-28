// ignore_for_file: unused_element, unnecessary_cast

class ControlProjectIntelligenceConfigFilterExcludedCloudStorageBuckets {
  /// List of bucket id regexes to exclude in the storage intelligence plan.
  final List<String> bucketIdRegexes;

  /// Creates a new [ControlProjectIntelligenceConfigFilterExcludedCloudStorageBuckets].
  /// [bucketIdRegexes] List of bucket id regexes to exclude in the storage intelligence plan.
  ControlProjectIntelligenceConfigFilterExcludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketIdRegexes'] = bucketIdRegexes;
    return map;
  }

  factory ControlProjectIntelligenceConfigFilterExcludedCloudStorageBuckets.fromMap(
      Map<String, dynamic> map) {
    return ControlProjectIntelligenceConfigFilterExcludedCloudStorageBuckets(
      bucketIdRegexes: (map['bucketIdRegexes'] as List).cast<String>(),
    );
  }
}
