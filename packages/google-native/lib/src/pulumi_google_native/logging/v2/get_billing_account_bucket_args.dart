// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBillingAccountBucket.
class GetBillingAccountBucketArgs {
  final Input<String> billingAccountId;
  final Input<String> bucketId;
  final Input<String> location;

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
      billingAccountId: Input.asInput<String>(map['billingAccountId']),
      bucketId: Input.asInput<String>(map['bucketId']),
      location: Input.asInput<String>(map['location']),
    );
  }
}
