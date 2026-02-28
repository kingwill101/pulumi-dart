// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_get_topic_iam_policy_get_topic_iam_policy_args_doc}
/// Arguments for getTopicIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_pubsub_get_topic_iam_policy_get_topic_iam_policy_args_doc}
class GetTopicIamPolicyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> topic;

  /// Creates a new [GetTopicIamPolicyArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [topic] Used to find the parent resource to bind the IAM policy to
  GetTopicIamPolicyArgs({
    String? project,
    required String topic,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        topic = pulumi.Input.asInput<String>(topic);

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
      project: map['project'] == null ? null : map['project'] as String,
      topic: map['topic'] as String,
    );
  }
}
