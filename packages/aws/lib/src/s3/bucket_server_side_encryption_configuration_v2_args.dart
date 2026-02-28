// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_server_side_encryption_configuration_v2_rule.dart';

/// {@template pulumi_s3_bucket_server_side_encryption_configuration_v2_bucket_server_side_encryption_configuration_v2_args_doc}
/// The set of arguments for BucketServerSideEncryptionConfigurationV2.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_server_side_encryption_configuration_v2_bucket_server_side_encryption_configuration_v2_args_doc}
class BucketServerSideEncryptionConfigurationV2Args {
  /// ID (name) of the bucket.
  final pulumi.Input<String> bucket;
  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Set of server-side encryption configuration rules. See below. Currently, only a single rule is supported.
  final pulumi.Input<List<BucketServerSideEncryptionConfigurationV2Rule>> rules;

  /// Creates a new [BucketServerSideEncryptionConfigurationV2Args].
  /// [bucket] ID (name) of the bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] Set of server-side encryption configuration rules. See below. Currently, only a single rule is supported.
  BucketServerSideEncryptionConfigurationV2Args({
    required String bucket,
    String? expectedBucketOwner,
    String? region,
    required List<BucketServerSideEncryptionConfigurationV2Rule> rules,
  }) :
      bucket = pulumi.Input.asInput<String>(bucket),
      expectedBucketOwner = pulumi.Input.asOptionalInput<String>(expectedBucketOwner),
      region = pulumi.Input.asOptionalInput<String>(region),
      rules = pulumi.Input.asInput<List<BucketServerSideEncryptionConfigurationV2Rule>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'region': ?region,
      'rules': pulumi.Input.mapInputValue<List<BucketServerSideEncryptionConfigurationV2Rule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<BucketServerSideEncryptionConfigurationV2Rule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketServerSideEncryptionConfigurationV2Args.fromMap(Map<String, dynamic> map) {
    return BucketServerSideEncryptionConfigurationV2Args(
      bucket: map['bucket'] as String,
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : map['expectedBucketOwner'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      rules: pulumi.Input.decodeList<BucketServerSideEncryptionConfigurationV2Rule>(map['rules'], (value) => BucketServerSideEncryptionConfigurationV2Rule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

