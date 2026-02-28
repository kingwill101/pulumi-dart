// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_logging_v2_get_billing_account_bucket_link_args_doc}
/// Arguments for getBillingAccountBucketLink.
/// {@endtemplate}
/// {@macro pulumi_logging_v2_get_billing_account_bucket_link_args_doc}
class GetBillingAccountBucketLinkArgs {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> linkId;
  final pulumi.Input<String> location;

  /// Creates a new [GetBillingAccountBucketLinkArgs].
  /// [billingAccountId] Required.
  /// [bucketId] Required.
  /// [linkId] Required.
  /// [location] Required.
  GetBillingAccountBucketLinkArgs({
    required String billingAccountId,
    required String bucketId,
    required String linkId,
    required String location,
  })  : billingAccountId = pulumi.Input.asInput<String>(billingAccountId),
        bucketId = pulumi.Input.asInput<String>(bucketId),
        linkId = pulumi.Input.asInput<String>(linkId),
        location = pulumi.Input.asInput<String>(location);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    map['bucketId'] = bucketId;
    map['linkId'] = linkId;
    map['location'] = location;
    return map;
  }

  factory GetBillingAccountBucketLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountBucketLinkArgs(
      billingAccountId: map['billingAccountId'] as String,
      bucketId: map['bucketId'] as String,
      linkId: map['linkId'] as String,
      location: map['location'] as String,
    );
  }
}
