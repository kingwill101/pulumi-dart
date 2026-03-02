// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default.dart';

class BucketServerSideEncryptionConfigurationRule {
  /// Single object for setting server-side encryption by default. See below.
  final pulumi.Input<BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault>? applyServerSideEncryptionByDefault;
  /// List of server-side encryption types to block for object uploads. Valid values are `SSE-C` (blocks uploads using server-side encryption with customer-provided keys) and `NONE` (unblocks all encryption types). Starting in March 2026, Amazon S3 will automatically block SSE-C uploads for all new buckets.
  final pulumi.Input<List<String>>? blockedEncryptionTypes;
  /// Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  final pulumi.Input<bool>? bucketKeyEnabled;

  /// Creates a new [BucketServerSideEncryptionConfigurationRule].
  /// [applyServerSideEncryptionByDefault] Single object for setting server-side encryption by default. See below.
  /// [blockedEncryptionTypes] List of server-side encryption types to block for object uploads. Valid values are `SSE-C` (blocks uploads using server-side encryption with customer-provided keys) and `NONE` (unblocks all encryption types). Starting in March 2026, Amazon S3 will automatically block SSE-C uploads for all new buckets.
  /// [bucketKeyEnabled] Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  BucketServerSideEncryptionConfigurationRule({
    this.applyServerSideEncryptionByDefault,
    this.blockedEncryptionTypes,
    this.bucketKeyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyServerSideEncryptionByDefault': ?pulumi.Input.mapOptionalInputValue<BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault, Map<String, dynamic>>(applyServerSideEncryptionByDefault, (value) => value.toMap()),
      'blockedEncryptionTypes': ?blockedEncryptionTypes,
      'bucketKeyEnabled': ?bucketKeyEnabled,
    };
  }

  factory BucketServerSideEncryptionConfigurationRule.fromMap(Map<String, dynamic> map) {
    return BucketServerSideEncryptionConfigurationRule(
      applyServerSideEncryptionByDefault: map['applyServerSideEncryptionByDefault'] == null ? null : ((BucketServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault.fromMap((map['applyServerSideEncryptionByDefault']! as Map).cast<String, dynamic>())).input()).input(),
      blockedEncryptionTypes: map['blockedEncryptionTypes'] == null ? null : (((map['blockedEncryptionTypes'] as List).cast<String>()).input()).input(),
      bucketKeyEnabled: map['bucketKeyEnabled'] == null ? null : ((map['bucketKeyEnabled'] as bool).input()).input(),
    );
  }
}

