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
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> topicSpaceName,
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
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      topicSpaceName: pulumi.Output.create<String>(map['topicSpaceName'] as String),
    );
  }
}

