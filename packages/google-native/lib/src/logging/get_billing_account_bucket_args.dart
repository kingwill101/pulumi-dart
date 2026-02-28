// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_billing_account_bucket_args_doc}
/// Arguments for getBillingAccountBucket.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_billing_account_bucket_args_doc}
class GetBillingAccountBucketArgs {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> location;

  /// Creates a new [GetBillingAccountBucketArgs].
  /// [billingAccountId] Required.
  /// [bucketId] Required.
  /// [location] Required.
  GetBillingAccountBucketArgs({
    required String billingAccountId,
    required String bucketId,
    required String location,
  })  : billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
        bucketId = pulumi.Input.asInput<String>(bucketId),
        location = pulumi.Input.asInput<String>(location);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    map['bucketId'] = bucketId;
    map['location'] = location;
    return map;
  }

  factory GetBillingAccountBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountBucketArgs(
      billingAccountId: map['billingAccountId'] as String,
      bucketId: map['bucketId'] as String,
      location: map['location'] as String,
    );
  }
}
