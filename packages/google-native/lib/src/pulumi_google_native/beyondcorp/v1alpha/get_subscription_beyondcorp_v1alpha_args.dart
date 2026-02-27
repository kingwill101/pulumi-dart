// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSubscription.
class GetSubscriptionBeyondcorpV1alphaArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> subscriptionId;

  GetSubscriptionBeyondcorpV1alphaArgs({
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

  factory GetSubscriptionBeyondcorpV1alphaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetSubscriptionBeyondcorpV1alphaArgs(
      location: pulumi.Input.asInput<String>(map['location']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      subscriptionId: pulumi.Input.asInput<String>(map['subscriptionId']),
    );
  }
}
