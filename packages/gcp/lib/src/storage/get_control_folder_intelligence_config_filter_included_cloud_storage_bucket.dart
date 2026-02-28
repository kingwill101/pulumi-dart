// ignore_for_file: unused_element, unnecessary_cast

class GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket {
  /// List of bucket id regexes to exclude in the storage intelligence plan.
  final List<String> bucketIdRegexes;

  /// Creates a new [GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket].
  /// [bucketIdRegexes] List of bucket id regexes to exclude in the storage intelligence plan.
  GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket({
    required this.bucketIdRegexes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketIdRegexes'] = bucketIdRegexes;
    return map;
  }

  factory GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket.fromMap(
      Map<String, dynamic> map) {
    return GetControlFolderIntelligenceConfigFilterIncludedCloudStorageBucket(
      bucketIdRegexes: (map['bucketIdRegexes'] as List).cast<String>(),
    );
  }
}
