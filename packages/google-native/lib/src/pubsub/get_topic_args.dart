// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsub_v1_get_topic_args_doc}
/// Arguments for getTopic.
/// {@endtemplate}
/// {@macro pulumi_pubsub_v1_get_topic_args_doc}
class GetTopicArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> topicId;

  /// Creates a new [GetTopicArgs].
  /// [project] Optional.
  /// [topicId] Required.
  GetTopicArgs({
    String? project,
    required String topicId,
  })  : project = pulumi.Input.asOptionalInput<String>(project),
        topicId = pulumi.Input.asInput<String>(topicId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['topicId'] = topicId;
    return map;
  }

  factory GetTopicArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicArgs(
      project: map['project'] == null ? null : map['project'] as String,
      topicId: map['topicId'] as String,
    );
  }
}
