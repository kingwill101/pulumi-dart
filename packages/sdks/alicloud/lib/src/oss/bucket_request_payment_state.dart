// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BucketRequestPayment resources.
class BucketRequestPaymentState {
  /// The name of the bucket.
  final pulumi.Input<String>? bucket;
  /// The payer of the request and traffic fees.Valid values: BucketOwner: request and traffic fees are paid by the bucket owner. Requester: request and traffic fees are paid by the requester.
  final pulumi.Input<String>? payer;

  /// Creates a new [BucketRequestPaymentState].
  /// [bucket] The name of the bucket.
  /// [payer] The payer of the request and traffic fees.Valid values: BucketOwner: request and traffic fees are paid by the bucket owner. Requester: request and traffic fees are paid by the requester.
  BucketRequestPaymentState({
    this.bucket,
    this.payer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'payer': ?payer,
    };
  }

  factory BucketRequestPaymentState.fromMap(Map<String, dynamic> map) {
    return BucketRequestPaymentState(
      bucket: map['bucket'] == null ? null : (map['bucket'] as String).input(),
      payer: map['payer'] == null ? null : (map['payer'] as String).input(),
    );
  }
}

