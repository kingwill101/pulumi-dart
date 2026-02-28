// ignore_for_file: unused_element, unnecessary_cast

class ControlProjectIntelligenceConfigFilterIncludedCloudStorageBuckets {
  /// List of bucket id regexes to exclude in the storage intelligence plan.
  final List<String> bucketIdRegexes;

  /// Creates a new [ControlProjectIntelligenceConfigFilterIncludedCloudStorageBuckets].
  /// [bucketIdRegexes] List of bucket id regexes to exclude in the storage intelligence plan.
  ControlProjectIntelligenceConfigFilterIncludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketIdRegexes'] = bucketIdRegexes;
    return map;
  }

  factory ControlProjectIntelligenceConfigFilterIncludedCloudStorageBuckets.fromMap(
      Map<String, dynamic> map) {
    return ControlProjectIntelligenceConfigFilterIncludedCloudStorageBuckets(
      bucketIdRegexes: (map['bucketIdRegexes'] as List).cast<String>(),
    );
  }
}
