// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSubscription.
class GetSubscriptionPubsubV1beta1aArgs {
  final pulumi.Input<String> subscriptionId;

  GetSubscriptionPubsubV1beta1aArgs({
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subscriptionId'] = subscriptionId;
    return map;
  }

  factory GetSubscriptionPubsubV1beta1aArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionPubsubV1beta1aArgs(
      subscriptionId: pulumi.Input.asInput<String>(map['subscriptionId']),
    );
  }
}
