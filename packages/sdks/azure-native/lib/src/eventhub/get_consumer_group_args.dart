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
  const GetConsumerGroupArgs({
    required this.consumerGroupName,
    required this.eventHubName,
    required this.namespaceName,
    required this.resourceGroupName,
  });

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
      consumerGroupName: pulumi.Input.fromValue(map['consumerGroupName'] as String),
      eventHubName: pulumi.Input.fromValue(map['eventHubName'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
