// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getSubscriptionIamPolicy.
class GetSubscriptionIamPolicyArgs {
  final Input<String> location;
  final Input<String>? project;
  final Input<String> subscriptionId;

  GetSubscriptionIamPolicyArgs({
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

  factory GetSubscriptionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionIamPolicyArgs(
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      subscriptionId: Input.asInput<String>(map['subscriptionId']),
    );
  }
}
