// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBillingAccountBucketView.
class GetBillingAccountBucketViewArgs {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> viewId;

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
      billingAccountId: pulumi.Input.asInput<String>(map['billingAccountId']),
      bucketId: pulumi.Input.asInput<String>(map['bucketId']),
      location: pulumi.Input.asInput<String>(map['location']),
      viewId: pulumi.Input.asInput<String>(map['viewId']),
    );
  }
}
