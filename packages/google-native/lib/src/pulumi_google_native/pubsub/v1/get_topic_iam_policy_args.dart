// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTopicIamPolicy.
class GetTopicIamPolicyArgs {
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;
  final Input<String> topicId;

  GetTopicIamPolicyArgs({
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

  factory GetTopicIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicIamPolicyArgs(
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
      topicId: Input.asInput<String>(map['topicId']),
    );
  }
}
