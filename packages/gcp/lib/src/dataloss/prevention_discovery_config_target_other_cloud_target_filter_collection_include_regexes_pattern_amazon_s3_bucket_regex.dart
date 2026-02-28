// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_target_other_cloud_target_filter_collection_include_regexes_pattern_amazon_s3_bucket_regex_aws_account_regex.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex {
  /// The AWS account regex
  final PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegexAwsAccountRegex?
      awsAccountRegex;

  /// Regex to test the bucket name against. If empty, all buckets match.
  final String? bucketNameRegex;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex].
  /// [awsAccountRegex] The AWS account regex
  /// [bucketNameRegex] Regex to test the bucket name against. If empty, all buckets match.
  PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex({
    this.awsAccountRegex,
    this.bucketNameRegex,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountRegexValue = awsAccountRegex;
    if (awsAccountRegexValue != null) {
      map['awsAccountRegex'] = awsAccountRegexValue.toMap();
    }
    final bucketNameRegexValue = bucketNameRegex;
    if (bucketNameRegexValue != null) {
      map['bucketNameRegex'] = bucketNameRegexValue;
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegex(
      awsAccountRegex: map['awsAccountRegex'] == null
          ? null
          : PreventionDiscoveryConfigTargetOtherCloudTargetFilterCollectionIncludeRegexesPatternAmazonS3BucketRegexAwsAccountRegex
              .fromMap((map['awsAccountRegex'] as Map).cast<String, dynamic>()),
      bucketNameRegex: map['bucketNameRegex'] == null
          ? null
          : map['bucketNameRegex'] as String,
    );
  }
}
