// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getTopicIamPolicy.
class GetTopicIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final Input<String> topic;

  GetTopicIamPolicyArgs({
    this.project,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['topic'] = topic;
    return map;
  }

  factory GetTopicIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicIamPolicyArgs(
      project: Input.asOptionalInput<String>(map['project']),
      topic: Input.asInput<String>(map['topic']),
    );
  }
}
