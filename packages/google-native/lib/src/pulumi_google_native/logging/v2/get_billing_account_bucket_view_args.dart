// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBillingAccountBucketView.
class GetBillingAccountBucketViewArgs {
  final Input<String> billingAccountId;
  final Input<String> bucketId;
  final Input<String> location;
  final Input<String> viewId;

  GetBillingAccountBucketViewArgs({
    required this.billingAccountId,
    required this.bucketId,
    required this.location,
    required this.viewId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    map['bucketId'] = bucketId;
    map['location'] = location;
    map['viewId'] = viewId;
    return map;
  }

  factory GetBillingAccountBucketViewArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountBucketViewArgs(
      billingAccountId: Input.asInput<String>(map['billingAccountId']),
      bucketId: Input.asInput<String>(map['bucketId']),
      location: Input.asInput<String>(map['location']),
      viewId: Input.asInput<String>(map['viewId']),
    );
  }
}
