// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_target_other_cloud_target_filter_collection_include_regexes_pattern_amazon_s3_bucket_regex.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern {
  /// Regex for Cloud Storage.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_targets_other_cloud_target_filter_collection_include_regexes_patterns_amazon_s3_bucket_regex"></a>The `amazon_s3_bucket_regex` block supports:
  final PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex?
  amazonS3BucketRegex;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern].
  /// [amazonS3BucketRegex] Regex for Cloud Storage.
  PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern({
    this.amazonS3BucketRegex,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonS3BucketRegex': ?amazonS3BucketRegex == null
          ? null
          : amazonS3BucketRegex!.toMap(),
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPattern(
      amazonS3BucketRegex: map['amazonS3BucketRegex'] == null
          ? null
          : PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex.fromMap(
              (map['amazonS3BucketRegex'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
