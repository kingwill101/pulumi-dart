// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSubscription.
class GetSubscriptionArgs {
  final Input<String> developerId;
  final Input<String> organizationId;
  final Input<String> subscriptionId;

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
      developerId: Input.asInput<String>(map['developerId']),
      organizationId: Input.asInput<String>(map['organizationId']),
      subscriptionId: Input.asInput<String>(map['subscriptionId']),
    );
  }
}
