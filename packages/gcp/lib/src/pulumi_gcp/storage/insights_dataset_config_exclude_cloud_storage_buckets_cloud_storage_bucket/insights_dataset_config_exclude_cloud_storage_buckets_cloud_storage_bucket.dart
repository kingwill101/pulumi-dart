// ignore_for_file: unused_element, unnecessary_cast

class InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucket {
  /// The list of cloud storage bucket names to exclude in the DatasetConfig.
  /// Exactly one of the<span pulumi-lang-nodejs=" bucketName " pulumi-lang-dotnet=" BucketName " pulumi-lang-go=" bucketName " pulumi-lang-python=" bucket_name " pulumi-lang-yaml=" bucketName " pulumi-lang-java=" bucketName "> bucket_name </span>and<span pulumi-lang-nodejs=" bucketPrefixRegex " pulumi-lang-dotnet=" BucketPrefixRegex " pulumi-lang-go=" bucketPrefixRegex " pulumi-lang-python=" bucket_prefix_regex " pulumi-lang-yaml=" bucketPrefixRegex " pulumi-lang-java=" bucketPrefixRegex "> bucket_prefix_regex </span>should be specified.
  final String? bucketName;

  /// The list of regex patterns for bucket names matching the regex.
  /// Regex should follow the syntax specified in google/re2 on GitHub.
  /// Exactly one of the<span pulumi-lang-nodejs=" bucketName " pulumi-lang-dotnet=" BucketName " pulumi-lang-go=" bucketName " pulumi-lang-python=" bucket_name " pulumi-lang-yaml=" bucketName " pulumi-lang-java=" bucketName "> bucket_name </span>and<span pulumi-lang-nodejs=" bucketPrefixRegex " pulumi-lang-dotnet=" BucketPrefixRegex " pulumi-lang-go=" bucketPrefixRegex " pulumi-lang-python=" bucket_prefix_regex " pulumi-lang-yaml=" bucketPrefixRegex " pulumi-lang-java=" bucketPrefixRegex "> bucket_prefix_regex </span>should be specified.
  final String? bucketPrefixRegex;

  InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucket({
    this.bucketName,
    this.bucketPrefixRegex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketNameValue = bucketName;
    if (bucketNameValue != null) {
      map['bucketName'] = bucketNameValue;
    }
    final bucketPrefixRegexValue = bucketPrefixRegex;
    if (bucketPrefixRegexValue != null) {
      map['bucketPrefixRegex'] = bucketPrefixRegexValue;
    }
    return map;
  }

  factory InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucket.fromMap(
      Map<String, dynamic> map) {
    return InsightsDatasetConfigExcludeCloudStorageBucketsCloudStorageBucket(
      bucketName:
          map['bucketName'] == null ? null : map['bucketName'] as String,
      bucketPrefixRegex: map['bucketPrefixRegex'] == null
          ? null
          : map['bucketPrefixRegex'] as String,
    );
  }
}
