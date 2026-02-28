// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1beta2_get_topic_iam_policy_pubsub_v1beta2_args_doc}
/// Arguments for getTopicIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1beta2_get_topic_iam_policy_pubsub_v1beta2_args_doc}
class GetTopicIamPolicyPubsubV1beta2Args {
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> topicId;

  /// Creates a new [GetTopicIamPolicyPubsubV1beta2Args].
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [topicId] Required.
  GetTopicIamPolicyPubsubV1beta2Args({
    int? optionsRequestedPolicyVersion,
    String? project,
    required String topicId,
  })  : optionsRequestedPolicyVersion =
            pulumi.Input.asOptionalInput<int>(optionsRequestedPolicyVersion),
        project = pulumi.Input.asOptionalInput<String>(project),
        topicId = pulumi.Input.asInput<String>(topicId);

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
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
              ? null
              : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      topicId: map['topicId'] as String,
    );
  }
}
