// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSubscription.
class GetSubscriptionArgs2 {
  final Input<String> location;
  final Input<String> organizationId;
  final Input<String> subscriptionId;

  GetSubscriptionArgs2({
    required this.location,
    required this.organizationId,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['organizationId'] = organizationId;
    map['subscriptionId'] = subscriptionId;
    return map;
  }

  factory GetSubscriptionArgs2.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionArgs2(
      location: Input.asInput<String>(map['location']),
      organizationId: Input.asInput<String>(map['organizationId']),
      subscriptionId: Input.asInput<String>(map['subscriptionId']),
    );
  }
}
