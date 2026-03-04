// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_list_namespace_topic_shared_access_keys_args_doc}
/// Arguments for listNamespaceTopicSharedAccessKeys.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_list_namespace_topic_shared_access_keys_args_doc}
class ListNamespaceTopicSharedAccessKeysArgs {
  /// Name of the namespace.
  final pulumi.Input<String> namespaceName;

  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Name of the topic.
  final pulumi.Input<String> topicName;

  /// Creates a new [ListNamespaceTopicSharedAccessKeysArgs].
  /// [namespaceName] Name of the namespace.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [topicName] Name of the topic.
  ListNamespaceTopicSharedAccessKeysArgs({
    required this.namespaceName,
    required this.resourceGroupName,
    required this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'topicName': topicName,
    };
  }

  factory ListNamespaceTopicSharedAccessKeysArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListNamespaceTopicSharedAccessKeysArgs(
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      topicName: pulumi.Input.fromValue(map['topicName'] as String),
    );
  }
}
