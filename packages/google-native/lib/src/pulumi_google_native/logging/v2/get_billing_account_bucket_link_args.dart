// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBillingAccountBucketLink.
class GetBillingAccountBucketLinkArgs {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> linkId;
  final pulumi.Input<String> location;

  GetBillingAccountBucketLinkArgs({
    required this.billingAccountId,
    required this.bucketId,
    required this.linkId,
    required this.location,
  });

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
      billingAccountId: pulumi.Input.asInput<String>(map['billingAccountId']),
      bucketId: pulumi.Input.asInput<String>(map['bucketId']),
      linkId: pulumi.Input.asInput<String>(map['linkId']),
      location: pulumi.Input.asInput<String>(map['location']),
    );
  }
}
