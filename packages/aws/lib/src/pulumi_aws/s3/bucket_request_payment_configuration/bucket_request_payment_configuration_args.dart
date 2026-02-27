// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for BucketRequestPaymentConfiguration.
class BucketRequestPaymentConfigurationArgs {
  /// Name of the bucket.
  final pulumi.Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;

  /// Specifies who pays for the download and request fees. Valid values: `BucketOwner`, `Requester`.
  final pulumi.Input<String> payer;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  BucketRequestPaymentConfigurationArgs({
    required this.bucket,
    this.expectedBucketOwner,
    required this.payer,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucket'] = bucket;
    final expectedBucketOwnerValue = expectedBucketOwner;
    if (expectedBucketOwnerValue != null) {
      map['expectedBucketOwner'] = expectedBucketOwnerValue;
    }
    map['payer'] = payer;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory BucketRequestPaymentConfigurationArgs.fromMap(
      Map<String, dynamic> map) {
    return BucketRequestPaymentConfigurationArgs(
      bucket: pulumi.Input.asInput<String>(map['bucket']),
      expectedBucketOwner:
          pulumi.Input.asOptionalInput<String>(map['expectedBucketOwner']),
      payer: pulumi.Input.asInput<String>(map['payer']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
