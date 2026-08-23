// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_consumer_group_args_doc}
/// The set of arguments for ConsumerGroup.
/// {@endtemplate}
/// {@macro pulumi_eventhub_consumer_group_args_doc}
class ConsumerGroupArgs {
  /// The consumer group name
  final pulumi.Input<String>? consumerGroupName;
  /// The Event Hub name
  final pulumi.Input<String> eventHubName;
  /// The Namespace name
  final pulumi.Input<String> namespaceName;
  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;
  /// User Metadata is a placeholder to store user-defined string data with maximum length 1024. e.g. it can be used to store descriptive data, such as list of teams and their contact information also user-defined configuration settings can be stored.
  final pulumi.Input<String>? userMetadata;

  /// Creates a new [ConsumerGroupArgs].
  /// [consumerGroupName] The consumer group name
  /// [eventHubName] The Event Hub name
  /// [namespaceName] The Namespace name
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  /// [userMetadata] User Metadata is a placeholder to store user-defined string data with maximum length 1024. e.g. it can be used to store descriptive data, such as list of teams and their contact information also user-defined configuration settings can be stored.
  const ConsumerGroupArgs({
    this.consumerGroupName,
    required this.eventHubName,
    required this.namespaceName,
    required this.resourceGroupName,
    this.userMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerGroupName': ?consumerGroupName,
      'eventHubName': eventHubName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'userMetadata': ?userMetadata,
    };
  }

  factory ConsumerGroupArgs.fromMap(Map<String, dynamic> map) {
    return ConsumerGroupArgs(
      consumerGroupName: (() { final guardedValue = map['consumerGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventHubName: pulumi.Input.fromValue(map['eventHubName'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      userMetadata: (() { final guardedValue = map['userMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
