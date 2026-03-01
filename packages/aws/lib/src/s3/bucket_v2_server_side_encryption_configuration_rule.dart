// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_v2_server_side_encryption_configuration_rule_apply_server_side_encryption_by_default.dart';

class BucketV2ServerSideEncryptionConfigurationRule {
  /// Single object for setting server-side encryption by default. (documented below)
  final List<
    BucketV2ServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault
  >
  applyServerSideEncryptionByDefaults;

  /// Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  final bool? bucketKeyEnabled;

  /// Creates a new [BucketV2ServerSideEncryptionConfigurationRule].
  /// [applyServerSideEncryptionByDefaults] Single object for setting server-side encryption by default. (documented below)
  /// [bucketKeyEnabled] Whether or not to use [Amazon S3 Bucket Keys](https://docs.aws.amazon.com/AmazonS3/latest/dev/bucket-key.html) for SSE-KMS.
  BucketV2ServerSideEncryptionConfigurationRule({
    required this.applyServerSideEncryptionByDefaults,
    this.bucketKeyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyServerSideEncryptionByDefaults':
          pulumi.Input.encodeList<
            BucketV2ServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault,
            Map<String, dynamic>
          >(applyServerSideEncryptionByDefaults, (value) => value.toMap()),
      'bucketKeyEnabled': ?bucketKeyEnabled,
    };
  }

  factory BucketV2ServerSideEncryptionConfigurationRule.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketV2ServerSideEncryptionConfigurationRule(
      applyServerSideEncryptionByDefaults:
          pulumi.Input.decodeList<
            BucketV2ServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault
          >(
            map['applyServerSideEncryptionByDefaults'],
            (value) =>
                BucketV2ServerSideEncryptionConfigurationRuleApplyServerSideEncryptionByDefault.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      bucketKeyEnabled: map['bucketKeyEnabled'] == null
          ? null
          : map['bucketKeyEnabled'] as bool,
    );
  }
}
