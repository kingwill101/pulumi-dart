// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSubscription.
class GetSubscriptionArgs4 {
  final Input<String> subscriptionId;

  GetSubscriptionArgs4({
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subscriptionId'] = subscriptionId;
    return map;
  }

  factory GetSubscriptionArgs4.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionArgs4(
      subscriptionId: Input.asInput<String>(map['subscriptionId']),
    );
  }
}
