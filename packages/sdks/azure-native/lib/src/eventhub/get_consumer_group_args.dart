// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_consumer_group_args_doc}
/// Arguments for getConsumerGroup.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_consumer_group_args_doc}
class GetConsumerGroupArgs {
  /// The consumer group name
  final pulumi.Input<String> consumerGroupName;
  /// The Event Hub name
  final pulumi.Input<String> eventHubName;
  /// The Namespace name
  final pulumi.Input<String> namespaceName;
  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConsumerGroupArgs].
  /// [consumerGroupName] The consumer group name
  /// [eventHubName] The Event Hub name
  /// [namespaceName] The Namespace name
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  GetConsumerGroupArgs({
    required pulumi.Output<String> consumerGroupName,
    required pulumi.Output<String> eventHubName,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      consumerGroupName = pulumi.Input.asInput<String>(consumerGroupName),
      eventHubName = pulumi.Input.asInput<String>(eventHubName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroupName': consumerGroupName,
      'eventHubName': eventHubName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConsumerGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetConsumerGroupArgs(
      consumerGroupName: pulumi.Output.create<String>(map['consumerGroupName'] as String),
      eventHubName: pulumi.Output.create<String>(map['eventHubName'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

