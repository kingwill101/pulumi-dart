// ignore_for_file: unused_element, unnecessary_cast

class GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket {
  /// The list of cloud storage bucket names to include in the DatasetConfig.
  /// Exactly one of the bucket_name and bucket_prefix_regex should be specified.
  final String bucketName;

  /// The list of regex patterns for bucket names matching the regex.
  /// Regex should follow the syntax specified in google/re2 on GitHub.
  /// Exactly one of the bucket_name and bucket_prefix_regex should be specified.
  final String bucketPrefixRegex;

  /// Creates a new [GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket].
  /// [bucketName] The list of cloud storage bucket names to include in the DatasetConfig.
  /// [bucketPrefixRegex] The list of regex patterns for bucket names matching the regex.
  GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket({
    required this.bucketName,
    required this.bucketPrefixRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'bucketPrefixRegex': bucketPrefixRegex,
    };
  }

  factory GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket(
      bucketName: map['bucketName'] as String,
      bucketPrefixRegex: map['bucketPrefixRegex'] as String,
    );
  }
}
