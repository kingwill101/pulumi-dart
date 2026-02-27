// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSubscription.
class GetSubscriptionArgs5 {
  final Input<String>? project;
  final Input<String> subscriptionId;

  GetSubscriptionArgs5({
    this.project,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['subscriptionId'] = subscriptionId;
    return map;
  }

  factory GetSubscriptionArgs5.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionArgs5(
      project: Input.asOptionalInput<String>(map['project']),
      subscriptionId: Input.asInput<String>(map['subscriptionId']),
    );
  }
}
