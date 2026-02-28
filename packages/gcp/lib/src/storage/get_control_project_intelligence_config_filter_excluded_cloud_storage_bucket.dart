// ignore_for_file: unused_element, unnecessary_cast


class GetControlProjectIntelligenceConfigFilterExcludedCloudStorageBucket {
  /// List of bucket id regexes to exclude in the storage intelligence plan.
  final List<String> bucketIdRegexes;

  /// Creates a new [GetControlProjectIntelligenceConfigFilterExcludedCloudStorageBucket].
  /// [bucketIdRegexes] List of bucket id regexes to exclude in the storage intelligence plan.
  GetControlProjectIntelligenceConfigFilterExcludedCloudStorageBucket({
    required this.bucketIdRegexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketIdRegexes': bucketIdRegexes,
    };
  }

  factory GetControlProjectIntelligenceConfigFilterExcludedCloudStorageBucket.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceConfigFilterExcludedCloudStorageBucket(
      bucketIdRegexes: (map['bucketIdRegexes'] as List).cast<String>(),
    );
  }
}

