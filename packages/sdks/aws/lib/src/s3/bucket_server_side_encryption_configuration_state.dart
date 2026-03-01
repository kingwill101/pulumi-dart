// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_server_side_encryption_configuration_rule.dart';

/// Input properties used for looking up and filtering BucketServerSideEncryptionConfiguration resources.
class BucketServerSideEncryptionConfigurationState {
  /// ID (name) of the bucket.
  final pulumi.Input<String>? bucket;
  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Set of server-side encryption configuration rules. See below. Currently, only a single rule is supported.
  final pulumi.Input<List<BucketServerSideEncryptionConfigurationRule>>? rules;

  /// Creates a new [BucketServerSideEncryptionConfigurationState].
  /// [bucket] ID (name) of the bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] Set of server-side encryption configuration rules. See below. Currently, only a single rule is supported.
  BucketServerSideEncryptionConfigurationState({
    pulumi.Output<String>? bucket,
    pulumi.Output<String>? expectedBucketOwner,
    pulumi.Output<String>? region,
    pulumi.Output<List<BucketServerSideEncryptionConfigurationRule>>? rules,
  }) :
      bucket = pulumi.Input.asOptionalInput<String>(bucket),
      expectedBucketOwner = pulumi.Input.asOptionalInput<String>(expectedBucketOwner),
      region = pulumi.Input.asOptionalInput<String>(region),
      rules = pulumi.Input.asOptionalInput<List<BucketServerSideEncryptionConfigurationRule>>(rules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'region': ?region,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<BucketServerSideEncryptionConfigurationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<BucketServerSideEncryptionConfigurationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketServerSideEncryptionConfigurationState.fromMap(Map<String, dynamic> map) {
    return BucketServerSideEncryptionConfigurationState(
      bucket: map['bucket'] == null ? null : pulumi.Output.create<String>(map['bucket'] as String),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : pulumi.Output.create<String>(map['expectedBucketOwner'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<BucketServerSideEncryptionConfigurationRule>>(pulumi.Input.decodeList<BucketServerSideEncryptionConfigurationRule>(map['rules'], (value) => BucketServerSideEncryptionConfigurationRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

