// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_bucket_request_payment_configuration_bucket_request_payment_configuration_args_doc}
/// The set of arguments for BucketRequestPaymentConfiguration.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_request_payment_configuration_bucket_request_payment_configuration_args_doc}
class BucketRequestPaymentConfigurationArgs {
  /// Name of the bucket.
  final pulumi.Input<String> bucket;
  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;
  /// Who pays for the download and request fees. Valid values: `BucketOwner`, `Requester`.
  final pulumi.Input<String> payer;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BucketRequestPaymentConfigurationArgs].
  /// [bucket] Name of the bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [payer] Who pays for the download and request fees. Valid values: `BucketOwner`, `Requester`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const BucketRequestPaymentConfigurationArgs({
    required this.bucket,
    this.expectedBucketOwner,
    required this.payer,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'payer': payer,
      'region': ?region,
    };
  }

  factory BucketRequestPaymentConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return BucketRequestPaymentConfigurationArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      expectedBucketOwner: (() { final guardedValue = map['expectedBucketOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payer: pulumi.Input.fromValue(map['payer'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
