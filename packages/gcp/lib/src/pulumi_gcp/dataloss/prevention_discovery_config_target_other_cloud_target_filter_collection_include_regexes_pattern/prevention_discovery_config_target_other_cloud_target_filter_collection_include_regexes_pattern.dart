// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_discovery_config_target_other_cloud_target_filter_collection_include_regexes_pattern_amazon_s3_bucket_regex/prevention_discovery_config_target_other_cloud_target_filter_collection_include_regexes_pattern_amazon_s3_bucket_regex.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern {
  /// Regex for Cloud Storage.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_targets_other_cloud_target_filter_collection_include_regexes_patterns_amazon_s3_bucket_regex"></a>The `amazon_s3_bucket_regex` block supports:
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
