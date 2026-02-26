// ignore_for_file: unused_element, unnecessary_cast

class GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket {
  /// The list of cloud storage bucket names to include in the DatasetConfig.
  /// Exactly one of the<span pulumi-lang-nodejs=" bucketName " pulumi-lang-dotnet=" BucketName " pulumi-lang-go=" bucketName " pulumi-lang-python=" bucket_name " pulumi-lang-yaml=" bucketName " pulumi-lang-java=" bucketName "> bucket_name </span>and<span pulumi-lang-nodejs=" bucketPrefixRegex " pulumi-lang-dotnet=" BucketPrefixRegex " pulumi-lang-go=" bucketPrefixRegex " pulumi-lang-python=" bucket_prefix_regex " pulumi-lang-yaml=" bucketPrefixRegex " pulumi-lang-java=" bucketPrefixRegex "> bucket_prefix_regex </span>should be specified.
  final String bucketName;

  /// The list of regex patterns for bucket names matching the regex.
  /// Regex should follow the syntax specified in google/re2 on GitHub.
  /// Exactly one of the<span pulumi-lang-nodejs=" bucketName " pulumi-lang-dotnet=" BucketName " pulumi-lang-go=" bucketName " pulumi-lang-python=" bucket_name " pulumi-lang-yaml=" bucketName " pulumi-lang-java=" bucketName "> bucket_name </span>and<span pulumi-lang-nodejs=" bucketPrefixRegex " pulumi-lang-dotnet=" BucketPrefixRegex " pulumi-lang-go=" bucketPrefixRegex " pulumi-lang-python=" bucket_prefix_regex " pulumi-lang-yaml=" bucketPrefixRegex " pulumi-lang-java=" bucketPrefixRegex "> bucket_prefix_regex </span>should be specified.
  final String bucketPrefixRegex;

  GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket({
    required this.bucketName,
    required this.bucketPrefixRegex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    map['bucketPrefixRegex'] = bucketPrefixRegex;
    return map;
  }

  factory GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket.fromMap(
      Map<String, dynamic> map) {
    return GetInsightsDatasetConfigIncludeCloudStorageBucketCloudStorageBucket(
      bucketName: map['bucketName'] as String,
      bucketPrefixRegex: map['bucketPrefixRegex'] as String,
    );
  }
}
