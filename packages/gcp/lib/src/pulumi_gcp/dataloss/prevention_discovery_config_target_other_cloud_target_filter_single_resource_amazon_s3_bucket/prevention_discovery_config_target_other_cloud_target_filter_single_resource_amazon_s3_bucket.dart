// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_discovery_config_target_other_cloud_target_filter_single_resource_amazon_s3_bucket_aws_account/prevention_discovery_config_target_other_cloud_target_filter_single_resource_amazon_s3_bucket_aws_account.dart';

class PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3Bucket {
  /// The AWS account.
  final PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3BucketAwsAccount?
      awsAccount;

  /// The bucket name.
  final String? bucketName;

  PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3Bucket({
    this.awsAccount,
    this.bucketName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountValue = awsAccount;
    if (awsAccountValue != null) {
      map['awsAccount'] = awsAccountValue.toMap();
    }
    final bucketNameValue = bucketName;
    if (bucketNameValue != null) {
      map['bucketName'] = bucketNameValue;
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3Bucket.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3Bucket(
      awsAccount: map['awsAccount'] == null
          ? null
          : PreventionDiscoveryConfigTargetOtherCloudTargetFilterSingleResourceAmazonS3BucketAwsAccount
              .fromMap((map['awsAccount'] as Map).cast<String, dynamic>()),
      bucketName:
          map['bucketName'] == null ? null : map['bucketName'] as String,
    );
  }
}
