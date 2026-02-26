// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_discovery_config_target_other_cloud_target_filter_collection_include_regexes_pattern_amazon_s3_bucket_regex/prevention_discovery_config_target_other_cloud_target_filter_collection_include_regexes_pattern_amazon_s3_bucket_regex.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern {
  /// Regex for Cloud Storage.
  /// Structure is documented below.
  ///
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedTargetsOtherCloudTargetFilterCollectionIncludeRegexesPatternsAmazonS3BucketRegex"" pulumi-lang-dotnet=""NestedTargetsOtherCloudTargetFilterCollectionIncludeRegexesPatternsAmazonS3BucketRegex"" pulumi-lang-go=""nestedTargetsOtherCloudTargetFilterCollectionIncludeRegexesPatternsAmazonS3BucketRegex"" pulumi-lang-python=""nested_targets_other_cloud_target_filter_collection_include_regexes_patterns_amazon_s3_bucket_regex"" pulumi-lang-yaml=""nestedTargetsOtherCloudTargetFilterCollectionIncludeRegexesPatternsAmazonS3BucketRegex"" pulumi-lang-java=""nestedTargetsOtherCloudTargetFilterCollectionIncludeRegexesPatternsAmazonS3BucketRegex"">"nested_targets_other_cloud_target_filter_collection_include_regexes_patterns_amazon_s3_bucket_regex"</span>></a>The <span pulumi-lang-nodejs="`amazonS3BucketRegex`" pulumi-lang-dotnet="`AmazonS3BucketRegex`" pulumi-lang-go="`amazonS3BucketRegex`" pulumi-lang-python="`amazon_s3_bucket_regex`" pulumi-lang-yaml="`amazonS3BucketRegex`" pulumi-lang-java="`amazonS3BucketRegex`">`amazon_s3_bucket_regex`</span> block supports:
  final PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex?
      amazonS3BucketRegex;

  PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern({
    this.amazonS3BucketRegex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final amazonS3BucketRegexValue = amazonS3BucketRegex;
    if (amazonS3BucketRegexValue != null) {
      map['amazonS3BucketRegex'] = amazonS3BucketRegexValue.toMap();
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern(
      amazonS3BucketRegex: map['amazonS3BucketRegex'] == null
          ? null
          : PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex
              .fromMap(
                  (map['amazonS3BucketRegex'] as Map).cast<String, dynamic>()),
    );
  }
}
