// ignore_for_file: unused_element, unnecessary_cast


class InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucket {
  /// The list of cloud storage bucket names to exclude in the DatasetConfig.
  /// Exactly one of the bucket_name and bucket_prefix_regex should be specified.
  final String? bucketName;
  /// The list of regex patterns for bucket names matching the regex.
  /// Regex should follow the syntax specified in google/re2 on GitHub.
  /// Exactly one of the bucket_name and bucket_prefix_regex should be specified.
  final String? bucketPrefixRegex;

  /// Creates a new [InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucket].
  /// [bucketName] The list of cloud storage bucket names to exclude in the DatasetConfig.
  /// [bucketPrefixRegex] The list of regex patterns for bucket names matching the regex.
  InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucket({
    this.bucketName,
    this.bucketPrefixRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'bucketPrefixRegex': ?bucketPrefixRegex,
    };
  }

  factory InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucket.fromMap(Map<String, dynamic> map) {
    return InsightsDatasetConfigIncludeCloudStorageBucketsCloudStorageBucket(
      bucketName: map['bucketName'] == null ? null : map['bucketName'] as String,
      bucketPrefixRegex: map['bucketPrefixRegex'] == null ? null : map['bucketPrefixRegex'] as String,
    );
  }
}

