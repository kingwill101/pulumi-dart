// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_server_side_encryption_configuration_v2_rule/bucket_server_side_encryption_configuration_v2_rule.dart';

/// The set of arguments for BucketServerSideEncryptionConfigurationV2.
class BucketServerSideEncryptionConfigurationV2Args {
  /// ID (name) of the bucket.
  final pulumi.Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Set of server-side encryption configuration rules. See below. Currently, only a single rule is supported.
  final pulumi.Input<List<BucketServerSideEncryptionConfigurationV2Rule>> rules;

  BucketServerSideEncryptionConfigurationV2Args({
    required this.bucket,
    this.expectedBucketOwner,
    this.region,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final expectedBucketOwnerValue = expectedBucketOwner;
    if (expectedBucketOwnerValue != null) {
      map['expectedBucketOwner'] = expectedBucketOwnerValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['rules'] = pulumi.Input.mapInputValue<
            List<BucketServerSideEncryptionConfigurationV2Rule>,
            List<Map<String, dynamic>>>(
        rules,
        (value) => pulumi.Input.encodeList<
            BucketServerSideEncryptionConfigurationV2Rule,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    return map;
  }

  factory BucketServerSideEncryptionConfigurationV2Args.fromMap(
      Map<String, dynamic> map) {
    return BucketServerSideEncryptionConfigurationV2Args(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      expectedBucketOwner:
          pulumi.Input.asOptionalInput<String>(map['expectedBucketOwner']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      rules: pulumi.Input.asInput<
          List<BucketServerSideEncryptionConfigurationV2Rule>>(map['rules']),
    );
  }
}
