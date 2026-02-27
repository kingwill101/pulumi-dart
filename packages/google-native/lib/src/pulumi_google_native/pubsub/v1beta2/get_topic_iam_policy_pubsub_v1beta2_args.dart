// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTopicIamPolicy.
class GetTopicIamPolicyPubsubV1beta2Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> topicId;

  GetTopicIamPolicyPubsubV1beta2Args({
    this.optionsRequestedPolicyVersion,
    this.project,
    required this.topicId,
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
    map['topicId'] = topicId;
    return map;
  }

  factory GetTopicIamPolicyPubsubV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetTopicIamPolicyPubsubV1beta2Args(
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      topicId: pulumi.Input.asInput<String>(map['topicId']),
    );
  }
}
