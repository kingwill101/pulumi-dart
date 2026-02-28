// ignore_for_file: unused_element, unnecessary_cast


class GetControlFolderIntelligenceConfigFilterExcludedCloudStorageBucket {
  /// List of bucket id regexes to exclude in the storage intelligence plan.
  final List<String> bucketIdRegexes;

  /// Creates a new [GetControlFolderIntelligenceConfigFilterExcludedCloudStorageBucket].
  /// [bucketIdRegexes] List of bucket id regexes to exclude in the storage intelligence plan.
  GetControlFolderIntelligenceConfigFilterExcludedCloudStorageBucket({
    required this.bucketIdRegexes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketIdRegexes': bucketIdRegexes,
    };
  }

  factory GetControlFolderIntelligenceConfigFilterExcludedCloudStorageBucket.fromMap(Map<String, dynamic> map) {
    return GetControlFolderIntelligenceConfigFilterExcludedCloudStorageBucket(
      bucketIdRegexes: (map['bucketIdRegexes'] as List).cast<String>(),
    );
  }
}

