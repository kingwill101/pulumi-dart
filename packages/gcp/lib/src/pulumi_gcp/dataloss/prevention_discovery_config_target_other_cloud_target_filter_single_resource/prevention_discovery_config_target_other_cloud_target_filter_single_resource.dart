// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_discovery_config_target_other_cloud_target_filter_single_resource_amazon_s3_bucket/prevention_discovery_config_target_other_cloud_target_filter_single_resource_amazon_s3_bucket.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResource {
  /// Amazon S3 bucket.
  /// Structure is documented below.
  ///
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedTargetsOtherCloudTargetFilterSingleResourceAmazonS3Bucket"" pulumi-lang-dotnet=""NestedTargetsOtherCloudTargetFilterSingleResourceAmazonS3Bucket"" pulumi-lang-go=""nestedTargetsOtherCloudTargetFilterSingleResourceAmazonS3Bucket"" pulumi-lang-python=""nested_targets_other_cloud_target_filter_single_resource_amazon_s3_bucket"" pulumi-lang-yaml=""nestedTargetsOtherCloudTargetFilterSingleResourceAmazonS3Bucket"" pulumi-lang-java=""nestedTargetsOtherCloudTargetFilterSingleResourceAmazonS3Bucket"">"nested_targets_other_cloud_target_filter_single_resource_amazon_s3_bucket"</span>></a>The <span pulumi-lang-nodejs="`amazonS3Bucket`" pulumi-lang-dotnet="`AmazonS3Bucket`" pulumi-lang-go="`amazonS3Bucket`" pulumi-lang-python="`amazon_s3_bucket`" pulumi-lang-yaml="`amazonS3Bucket`" pulumi-lang-java="`amazonS3Bucket`">`amazon_s3_bucket`</span> block supports:
  final PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3Bucket?
      amazonS3Bucket;

  PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResource({
    this.amazonS3Bucket,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final amazonS3BucketValue = amazonS3Bucket;
    if (amazonS3BucketValue != null) {
      map['amazonS3Bucket'] = amazonS3BucketValue.toMap();
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResource.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResource(
      amazonS3Bucket: map['amazonS3Bucket'] == null
          ? null
          : PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3Bucket
              .fromMap((map['amazonS3Bucket'] as Map).cast<String, dynamic>()),
    );
  }
}
