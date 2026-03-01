// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_s3_bucket_request_payment_configuration_v2_bucket_request_payment_configuration_v2_args_doc}
/// The set of arguments for BucketRequestPaymentConfigurationV2.
/// {@endtemplate}
/// {@macro pulumi_s3_bucket_request_payment_configuration_v2_bucket_request_payment_configuration_v2_args_doc}
class BucketRequestPaymentConfigurationV2Args {
  /// Name of the bucket.
  final pulumi.Input<String> bucket;

  /// Account ID of the expected bucket owner.
  final pulumi.Input<String>? expectedBucketOwner;

  /// Specifies who pays for the download and request fees. Valid values: `BucketOwner`, `Requester`.
  final pulumi.Input<String> payer;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BucketRequestPaymentConfigurationV2Args].
  /// [bucket] Name of the bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [payer] Specifies who pays for the download and request fees. Valid values: `BucketOwner`, `Requester`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BucketRequestPaymentConfigurationV2Args({
    required String bucket,
    String? expectedBucketOwner,
    required String payer,
    String? region,
  }) : bucket = pulumi.Input.asInput<String>(bucket),
       expectedBucketOwner = pulumi.Input.asOptionalInput<String>(
         expectedBucketOwner,
       ),
       payer = pulumi.Input.asInput<String>(payer),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'expectedBucketOwner': ?expectedBucketOwner,
      'payer': payer,
      'region': ?region,
    };
  }

  factory BucketRequestPaymentConfigurationV2Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return BucketRequestPaymentConfigurationV2Args(
      bucket: map['bucket'] as String,
      expectedBucketOwner: map['expectedBucketOwner'] == null
          ? null
          : map['expectedBucketOwner'] as String,
      payer: map['payer'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
