// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pubsublite_v1_get_topic_args_doc}
/// Arguments for getTopic.
/// {@endtemplate}
/// {@macro pulumi_pubsublite_v1_get_topic_args_doc}
class GetTopicArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> topicId;

  /// Creates a new [GetTopicArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [topicId] Required.
  GetTopicArgs({
    required String location,
    String? project,
    required String topicId,
  }) : location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       topicId = pulumi.Input.asInput<String>(topicId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'topicId': topicId,
    };
  }

  factory GetTopicArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicArgs(
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      topicId: map['topicId'] as String,
    );
  }
}
