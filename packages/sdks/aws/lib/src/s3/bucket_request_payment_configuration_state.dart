// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketRequestPaymentConfiguration resources.
class BucketRequestPaymentConfigurationState {
  /// Name of the bucket.
  final pulumi.Input<String>? bucket;
  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;
  /// Specifies who pays for the download and request fees. Valid values: `BucketOwner`, `Requester`.
  final pulumi.Input<String>? payer;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BucketRequestPaymentConfigurationState].
  /// [bucket] Name of the bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [payer] Specifies who pays for the download and request fees. Valid values: `BucketOwner`, `Requester`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BucketRequestPaymentConfigurationState({
    this.bucket,
    this.expectedBucketOwner,
    this.payer,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'payer': ?payer,
      'region': ?region,
    };
  }

  factory BucketRequestPaymentConfigurationState.fromMap(Map<String, dynamic> map) {
    return BucketRequestPaymentConfigurationState(
      bucket: map['bucket'] == null ? null : ((map['bucket'] as String).input()).input(),
      expectedBucketOwner: map['expectedBucketOwner'] == null ? null : ((map['expectedBucketOwner'] as String).input()).input(),
      payer: map['payer'] == null ? null : ((map['payer'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

