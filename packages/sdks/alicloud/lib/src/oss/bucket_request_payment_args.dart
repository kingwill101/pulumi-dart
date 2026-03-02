// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_bucket_request_payment_bucket_request_payment_args_doc}
/// The set of arguments for BucketRequestPayment.
/// {@endtemplate}
/// {@macro pulumi_oss_bucket_request_payment_bucket_request_payment_args_doc}
class BucketRequestPaymentArgs {
  /// The name of the bucket.
  final pulumi.Input<String> bucket;
  /// The payer of the request and traffic fees.Valid values: BucketOwner: request and traffic fees are paid by the bucket owner. Requester: request and traffic fees are paid by the requester.
  final pulumi.Input<String>? payer;

  /// Creates a new [BucketRequestPaymentArgs].
  /// [bucket] The name of the bucket.
  /// [payer] The payer of the request and traffic fees.Valid values: BucketOwner: request and traffic fees are paid by the bucket owner. Requester: request and traffic fees are paid by the requester.
  BucketRequestPaymentArgs({
    required this.bucket,
    this.payer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'payer': ?payer,
    };
  }

  factory BucketRequestPaymentArgs.fromMap(Map<String, dynamic> map) {
    return BucketRequestPaymentArgs(
      bucket: (map['bucket'] as String).input(),
      payer: map['payer'] == null ? null : (map['payer'] as String).input(),
    );
  }
}

