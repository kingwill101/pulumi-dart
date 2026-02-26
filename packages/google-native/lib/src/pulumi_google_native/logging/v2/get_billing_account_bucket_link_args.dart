// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getBillingAccountBucketLink.
class GetBillingAccountBucketLinkArgs {
  final Input<String> billingAccountId;
  final Input<String> bucketId;
  final Input<String> linkId;
  final Input<String> location;

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
      billingAccountId: Input.asInput<String>(map['billingAccountId']),
      bucketId: Input.asInput<String>(map['bucketId']),
      linkId: Input.asInput<String>(map['linkId']),
      location: Input.asInput<String>(map['location']),
    );
  }
}
