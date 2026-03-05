// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_namespace_topic_args_doc}
/// The set of arguments for NamespaceTopic.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_namespace_topic_args_doc}
class NamespaceTopicArgs {
  /// Event retention for the namespace topic expressed in days. The property default value is 1 day.
  /// Min event retention duration value is 1 day and max event retention duration value is 1 day.
  final pulumi.Input<int>? eventRetentionInDays;
  /// This determines the format that is expected for incoming events published to the topic.
  final pulumi.Input<String>? inputSchema;
  /// Name of the namespace.
  final pulumi.Input<String> namespaceName;
  /// Publisher type of the namespace topic.
  final pulumi.Input<String>? publisherType;
  /// The name of the resource group within the user's subscription.
  final pulumi.Input<String> resourceGroupName;
  /// Name of the namespace topic.
  final pulumi.Input<String>? topicName;

  /// Creates a new [NamespaceTopicArgs].
  /// [eventRetentionInDays] Event retention for the namespace topic expressed in days. The property default value is 1 day.
  /// [inputSchema] This determines the format that is expected for incoming events published to the topic.
  /// [namespaceName] Name of the namespace.
  /// [publisherType] Publisher type of the namespace topic.
  /// [resourceGroupName] The name of the resource group within the user's subscription.
  /// [topicName] Name of the namespace topic.
  NamespaceTopicArgs({
    this.eventRetentionInDays,
    this.inputSchema,
    required this.namespaceName,
    this.publisherType,
    required this.resourceGroupName,
    this.topicName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventRetentionInDays': ?eventRetentionInDays,
      'inputSchema': ?inputSchema,
      'namespaceName': namespaceName,
      'publisherType': ?publisherType,
      'resourceGroupName': resourceGroupName,
      'topicName': ?topicName,
    };
  }

  factory NamespaceTopicArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceTopicArgs(
      eventRetentionInDays: (() { final guardedValue = map['eventRetentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      inputSchema: (() { final guardedValue = map['inputSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      publisherType: (() { final guardedValue = map['publisherType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      topicName: (() { final guardedValue = map['topicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

