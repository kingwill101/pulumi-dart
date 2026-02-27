// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBillingAccountBucket.
class GetBillingAccountBucketArgs {
  final pulumi.Input<String> billingAccountId;
  final pulumi.Input<String> bucketId;
  final pulumi.Input<String> location;

  GetBillingAccountBucketArgs({
    required this.billingAccountId,
    required this.bucketId,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['billingAccountId'] = billingAccountId;
    map['bucketId'] = bucketId;
    map['location'] = location;
    return map;
  }

  factory GetBillingAccountBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingAccountBucketArgs(
      billingAccountId: pulumi.Input.asInput<String>(map['billingAccountId']),
      bucketId: pulumi.Input.asInput<String>(map['bucketId']),
      location: pulumi.Input.asInput<String>(map['location']),
    );
  }
}
