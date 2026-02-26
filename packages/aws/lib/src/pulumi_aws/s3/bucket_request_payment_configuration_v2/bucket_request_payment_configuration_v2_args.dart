// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for BucketRequestPaymentConfigurationV2.
class BucketRequestPaymentConfigurationV2Args {
  /// Name of the bucket.
  final Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final Input<String>? expectedBucketOwner;

  /// Specifies who pays for the download and request fees. Valid values: `BucketOwner`, `Requester`.
  final Input<String> payer;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  BucketRequestPaymentConfigurationV2Args({
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

  factory BucketRequestPaymentConfigurationV2Args.fromMap(
      Map<String, dynamic> map) {
    return BucketRequestPaymentConfigurationV2Args(
      bucket: Input.asInput<String>(map['bucket']),
      expectedBucketOwner:
          Input.asOptionalInput<String>(map['expectedBucketOwner']),
      payer: Input.asInput<String>(map['payer']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
