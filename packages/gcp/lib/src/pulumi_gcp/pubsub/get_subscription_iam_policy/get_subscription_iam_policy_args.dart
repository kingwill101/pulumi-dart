// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSubscriptionIamPolicy.
class GetSubscriptionIamPolicyArgs {
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final Input<String>? project;

  /// The subscription name or id to bind to attach IAM policy to.
  final Input<String> subscription;

  GetSubscriptionIamPolicyArgs({
    this.project,
    required this.subscription,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['subscription'] = subscription;
    return map;
  }

  factory GetSubscriptionIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionIamPolicyArgs(
      project: Input.asOptionalInput<String>(map['project']),
      subscription: Input.asInput<String>(map['subscription']),
    );
  }
}
