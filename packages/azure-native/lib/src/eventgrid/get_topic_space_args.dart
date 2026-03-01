// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_topic_space_args_doc}
/// Arguments for getTopicSpace.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_topic_space_args_doc}
class GetTopicSpaceArgs {
  /// Name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the Topic space.
  final pulumi.Input<String> topicSpaceName;

  /// Creates a new [GetTopicSpaceArgs].
  /// [namespaceName] Name of the namespace.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [topicSpaceName] Name of the Topic space.
  GetTopicSpaceArgs({
    required String namespaceName,
    required String resourceGroupName,
    required String topicSpaceName,
  }) :
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      topicSpaceName = pulumi.Input.asInput<String>(topicSpaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'topicSpaceName': topicSpaceName,
    };
  }

  factory GetTopicSpaceArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicSpaceArgs(
      namespaceName: map['namespaceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      topicSpaceName: map['topicSpaceName'] as String,
    );
  }
}

