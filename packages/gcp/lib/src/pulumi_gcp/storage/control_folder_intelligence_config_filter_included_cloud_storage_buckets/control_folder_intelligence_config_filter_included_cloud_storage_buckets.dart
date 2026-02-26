// ignore_for_file: unused_element, unnecessary_cast

class ControlFolderIntelligenceConfigFilterIncludedCloudStorageBuckets {
  /// List of bucket id regexes to exclude in the storage intelligence plan.
  final List<String> bucketIdRegexes;

  ControlFolderIntelligenceConfigFilterIncludedCloudStorageBuckets({
    required this.bucketIdRegexes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketIdRegexes'] = bucketIdRegexes;
    return map;
  }

  factory ControlFolderIntelligenceConfigFilterIncludedCloudStorageBuckets.fromMap(
      Map<String, dynamic> map) {
    return ControlFolderIntelligenceConfigFilterIncludedCloudStorageBuckets(
      bucketIdRegexes: (map['bucketIdRegexes'] as List).cast<String>(),
    );
  }
}
