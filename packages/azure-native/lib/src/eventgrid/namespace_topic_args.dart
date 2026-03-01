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
    int? eventRetentionInDays,
    String? inputSchema,
    required String namespaceName,
    String? publisherType,
    required String resourceGroupName,
    String? topicName,
  }) :
      eventRetentionInDays = pulumi.Input.asOptionalInput<int>(eventRetentionInDays),
      inputSchema = pulumi.Input.asOptionalInput<String>(inputSchema),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      publisherType = pulumi.Input.asOptionalInput<String>(publisherType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      topicName = pulumi.Input.asOptionalInput<String>(topicName);

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
      eventRetentionInDays: map['eventRetentionInDays'] == null ? null : map['eventRetentionInDays'] as int,
      inputSchema: map['inputSchema'] == null ? null : map['inputSchema'] as String,
      namespaceName: map['namespaceName'] as String,
      publisherType: map['publisherType'] == null ? null : map['publisherType'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      topicName: map['topicName'] == null ? null : map['topicName'] as String,
    );
  }
}

