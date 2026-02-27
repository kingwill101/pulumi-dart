// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSubscription.
class GetSubscriptionPubsubV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> subscriptionId;

  GetSubscriptionPubsubV1Args({
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

  factory GetSubscriptionPubsubV1Args.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionPubsubV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      subscriptionId: pulumi.Input.asInput<String>(map['subscriptionId']),
    );
  }
}
