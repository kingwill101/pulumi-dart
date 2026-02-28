// ignore_for_file: unused_element, unnecessary_cast

import 'bucket_server_side_encryption_configuration_v2_rule_apply_server_side_encryption_by_default.dart';

class BucketServerSideEncryptionConfigurationV2Rule {
  /// Single object for setting server-side encryption by default. See below.
  final BucketServerSideEncryptionConfigurationV2RuleApplyServerSideEncryptionByDefault? applyServerSideEncryptionByDefault;
  /// List of server-side encryption types to block for object uploads. Valid values are `SSE-C` (blocks uploads using server-side encryption with customer-provided keys) and `NONE` (unblocks all encryption types). Starting in March 2026, Amazon S3 will automatically block SSE-C uploads for all new buckets.
  final List<String>? blockedEncryptionTypes;
  /// Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  final bool? bucketKeyEnabled;

  /// Creates a new [BucketServerSideEncryptionConfigurationV2Rule].
  /// [applyServerSideEncryptionByDefault] Single object for setting server-side encryption by default. See below.
  /// [blockedEncryptionTypes] List of server-side encryption types to block for object uploads. Valid values are `SSE-C` (blocks uploads using server-side encryption with customer-provided keys) and `NONE` (unblocks all encryption types). Starting in March 2026, Amazon S3 will automatically block SSE-C uploads for all new buckets.
  /// [bucketKeyEnabled] Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  BucketServerSideEncryptionConfigurationV2Rule({
    this.applyServerSideEncryptionByDefault,
    this.blockedEncryptionTypes,
    this.bucketKeyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyServerSideEncryptionByDefault': ?applyServerSideEncryptionByDefault == null ? null : applyServerSideEncryptionByDefault!.toMap(),
      'blockedEncryptionTypes': ?blockedEncryptionTypes,
      'bucketKeyEnabled': ?bucketKeyEnabled,
    };
  }

  factory BucketServerSideEncryptionConfigurationV2Rule.fromMap(Map<String, dynamic> map) {
    return BucketServerSideEncryptionConfigurationV2Rule(
      applyServerSideEncryptionByDefault: map['applyServerSideEncryptionByDefault'] == null ? null : BucketServerSideEncryptionConfigurationV2RuleApplyServerSideEncryptionByDefault.fromMap((map['applyServerSideEncryptionByDefault'] as Map).cast<String, dynamic>()),
      blockedEncryptionTypes: map['blockedEncryptionTypes'] == null ? null : (map['blockedEncryptionTypes'] as List).cast<String>(),
      bucketKeyEnabled: map['bucketKeyEnabled'] == null ? null : map['bucketKeyEnabled'] as bool,
    );
  }
}

