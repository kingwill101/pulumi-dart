// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSubscription.
class GetSubscriptionArgs {
  final pulumi.Input<String> developerId;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> subscriptionId;

  GetSubscriptionArgs({
    required this.developerId,
    required this.organizationId,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['developerId'] = developerId;
    map['organizationId'] = organizationId;
    map['subscriptionId'] = subscriptionId;
    return map;
  }

  factory GetSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionArgs(
      developerId: pulumi.Input.asInput<String>(map['developerId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
      subscriptionId: pulumi.Input.asInput<String>(map['subscriptionId']),
    );
  }
}
