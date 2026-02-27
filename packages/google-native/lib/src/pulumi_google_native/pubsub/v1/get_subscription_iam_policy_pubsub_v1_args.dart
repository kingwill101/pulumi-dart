// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSubscriptionIamPolicy.
class GetSubscriptionIamPolicyPubsubV1Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> subscriptionId;

  GetSubscriptionIamPolicyPubsubV1Args({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['subscriptionId'] = subscriptionId;
    return map;
  }

  factory GetSubscriptionIamPolicyPubsubV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetSubscriptionIamPolicyPubsubV1Args(
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      subscriptionId: pulumi.Input.asInput<String>(map['subscriptionId']),
    );
  }
}
