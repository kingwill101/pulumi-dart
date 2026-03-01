// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_topic_args_doc}
/// Arguments for getTopic.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_topic_args_doc}
class GetTopicArgs {
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the topic.
  final pulumi.Input<String> topicName;

  /// Creates a new [GetTopicArgs].
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [topicName] Name of the topic.
  GetTopicArgs({
    required String resourceGroupName,
    required String topicName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      topicName = pulumi.Input.asInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'topicName': topicName,
    };
  }

  factory GetTopicArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicArgs(
      resourceGroupName: map['resourceGroupName'] as String,
      topicName: map['topicName'] as String,
    );
  }
}

