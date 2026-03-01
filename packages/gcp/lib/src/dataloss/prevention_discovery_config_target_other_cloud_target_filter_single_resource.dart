// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_discovery_config_target_other_cloud_target_filter_single_resource_amazon_s3_bucket.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResource {
  /// Amazon S3 bucket.
  /// Structure is documented below.
  ///
  ///
  /// <a name="nested_targets_other_cloud_target_filter_single_resource_amazon_s3_bucket"></a>The `amazon_s3_bucket` block supports:
  final PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3Bucket? amazonS3Bucket;

  /// Creates a new [PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResource].
  /// [amazonS3Bucket] Amazon S3 bucket.
  PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResource({
    this.amazonS3Bucket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amazonS3Bucket': ?amazonS3Bucket == null ? null : amazonS3Bucket!.toMap(),
    };
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResource.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResource(
      amazonS3Bucket: map['amazonS3Bucket'] == null ? null : PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3Bucket.fromMap((map['amazonS3Bucket'] as Map).cast<String, dynamic>()),
    );
  }
}

