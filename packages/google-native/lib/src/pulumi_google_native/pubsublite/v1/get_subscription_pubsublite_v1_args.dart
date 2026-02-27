// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSubscription.
class GetSubscriptionPubsubliteV1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> subscriptionId;

  GetSubscriptionPubsubliteV1Args({
    required this.location,
    this.project,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['subscriptionId'] = subscriptionId;
    return map;
  }

  factory GetSubscriptionPubsubliteV1Args.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionPubsubliteV1Args(
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      subscriptionId: pulumi.Input.asInput<String>(map['subscriptionId']),
    );
  }
}
