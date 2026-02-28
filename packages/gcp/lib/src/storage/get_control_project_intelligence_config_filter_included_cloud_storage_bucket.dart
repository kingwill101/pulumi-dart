// ignore_for_file: unused_element, unnecessary_cast

class GetControlProjectIntelligenceConfigFilterIncludedCloudStorageBucket {
  /// List of bucket id regexes to exclude in the storage intelligence plan.
  final List<String> bucketIdRegexes;

  /// Creates a new [GetControlProjectIntelligenceConfigFilterIncludedCloudStorageBucket].
  /// [bucketIdRegexes] List of bucket id regexes to exclude in the storage intelligence plan.
  GetControlProjectIntelligenceConfigFilterIncludedCloudStorageBucket({
    required this.bucketIdRegexes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketIdRegexes'] = bucketIdRegexes;
    return map;
  }

  factory GetControlProjectIntelligenceConfigFilterIncludedCloudStorageBucket.fromMap(
      Map<String, dynamic> map) {
    return GetControlProjectIntelligenceConfigFilterIncludedCloudStorageBucket(
      bucketIdRegexes: (map['bucketIdRegexes'] as List).cast<String>(),
    );
  }
}
