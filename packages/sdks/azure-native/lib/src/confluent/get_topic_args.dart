// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_confluent_get_topic_args_doc}
/// Arguments for getTopic.
/// {@endtemplate}
/// {@macro pulumi_confluent_get_topic_args_doc}
class GetTopicArgs {
  /// Confluent kafka or schema registry cluster id
  final pulumi.Input<String> clusterId;
  /// Confluent environment id
  final pulumi.Input<String> environmentId;
  /// Organization resource name
  final pulumi.Input<String> organizationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Confluent kafka or schema registry topic name
  final pulumi.Input<String> topicName;

  /// Creates a new [GetTopicArgs].
  /// [clusterId] Confluent kafka or schema registry cluster id
  /// [environmentId] Confluent environment id
  /// [organizationName] Organization resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [topicName] Confluent kafka or schema registry topic name
  GetTopicArgs({
    required pulumi.Output<String> clusterId,
    required pulumi.Output<String> environmentId,
    required pulumi.Output<String> organizationName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> topicName,
  }) :
      clusterId = pulumi.Input.asInput<String>(clusterId),
      environmentId = pulumi.Input.asInput<String>(environmentId),
      organizationName = pulumi.Input.asInput<String>(organizationName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      topicName = pulumi.Input.asInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': clusterId,
      'environmentId': environmentId,
      'organizationName': organizationName,
      'resourceGroupName': resourceGroupName,
      'topicName': topicName,
    };
  }

  factory GetTopicArgs.fromMap(Map<String, dynamic> map) {
    return GetTopicArgs(
      clusterId: pulumi.Output.create<String>(map['clusterId'] as String),
      environmentId: pulumi.Output.create<String>(map['environmentId'] as String),
      organizationName: pulumi.Output.create<String>(map['organizationName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      topicName: pulumi.Output.create<String>(map['topicName'] as String),
    );
  }
}

