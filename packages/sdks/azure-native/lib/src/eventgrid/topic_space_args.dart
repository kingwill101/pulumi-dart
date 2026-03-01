// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_topic_space_args_doc}
/// The set of arguments for TopicSpace.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_topic_space_args_doc}
class TopicSpaceArgs {
  /// Description for the Topic Space resource.
  final pulumi.Input<String>? description;
  /// Name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// The topic space name.
  final pulumi.Input<String>? topicSpaceName;
  /// The topic filters in the topic space.
  /// Example: "topicTemplates": [
  /// "devices/foo/bar",
  /// "devices/topic1/+",
  /// "devices/${principal.name}/${principal.attributes.keyName}" ].
  final pulumi.Input<List<String>>? topicTemplates;

  /// Creates a new [TopicSpaceArgs].
  /// [description] Description for the Topic Space resource.
  /// [namespaceName] Name of the namespace.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [topicSpaceName] The topic space name.
  /// [topicTemplates] The topic filters in the topic space.
  TopicSpaceArgs({
    pulumi.Output<String>? description,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? topicSpaceName,
    pulumi.Output<List<String>>? topicTemplates,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      topicSpaceName = pulumi.Input.asOptionalInput<String>(topicSpaceName),
      topicTemplates = pulumi.Input.asOptionalInput<List<String>>(topicTemplates);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'topicSpaceName': ?topicSpaceName,
      'topicTemplates': ?topicTemplates,
    };
  }

  factory TopicSpaceArgs.fromMap(Map<String, dynamic> map) {
    return TopicSpaceArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      topicSpaceName: map['topicSpaceName'] == null ? null : pulumi.Output.create<String>(map['topicSpaceName'] as String),
      topicTemplates: map['topicTemplates'] == null ? null : pulumi.Output.create<List<String>>((map['topicTemplates'] as List).cast<String>()),
    );
  }
}

