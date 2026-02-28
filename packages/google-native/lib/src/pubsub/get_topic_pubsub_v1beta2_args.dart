// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1beta2_get_topic_pubsub_v1beta2_args_doc}
/// Arguments for getTopic.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1beta2_get_topic_pubsub_v1beta2_args_doc}
class GetTopicPubsubV1beta2Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> topicId;

  /// Creates a new [GetTopicPubsubV1beta2Args].
  /// [project] Optional.
  /// [topicId] Required.
  GetTopicPubsubV1beta2Args({
    String? project,
    required String topicId,
  }) :
      project = pulumi.Input.asOptionalInput<String>(project),
      topicId = pulumi.Input.asInput<String>(topicId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'topicId': topicId,
    };
  }

  factory GetTopicPubsubV1beta2Args.fromMap(Map<String, dynamic> map) {
    return GetTopicPubsubV1beta2Args(
      project: map['project'] == null ? null : map['project'] as String,
      topicId: map['topicId'] as String,
    );
  }
}

