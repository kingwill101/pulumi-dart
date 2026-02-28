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

  /// Specifies who pays for the download and request fees. Valid values: `BucketOwner`, `Requester`.
  final pulumi.Input<String> payer;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [BucketRequestPaymentConfigurationArgs].
  /// [bucket] Name of the bucket.
  /// [expectedBucketOwner] Account ID of the expected bucket owner.
  /// [payer] Specifies who pays for the download and request fees. Valid values: `BucketOwner`, `Requester`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  BucketRequestPaymentConfigurationArgs({
    required String bucket,
    String? expectedBucketOwner,
    required String payer,
    String? region,
  })  : bucket = pulumi.Input.asInput<String>(bucket),
        expectedBucketOwner =
            pulumi.Input.asOptionalInput<String>(expectedBucketOwner),
        payer = pulumi.Input.asInput<String>(payer),
        region = pulumi.Input.asOptionalInput<String>(region);

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
      bucket: map['bucket'] as String,
      expectedBucketOwner: map['expectedBucketOwner'] == null
          ? null
          : map['expectedBucketOwner'] as String,
      payer: map['payer'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
