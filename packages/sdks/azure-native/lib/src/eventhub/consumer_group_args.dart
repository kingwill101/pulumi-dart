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
  ConsumerGroupArgs({
    pulumi.Output<String>? consumerGroupName,
    required pulumi.Output<String> eventHubName,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? userMetadata,
  }) :
      consumerGroupName = pulumi.Input.asOptionalInput<String>(consumerGroupName),
      eventHubName = pulumi.Input.asInput<String>(eventHubName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      userMetadata = pulumi.Input.asOptionalInput<String>(userMetadata);

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
      consumerGroupName: map['consumerGroupName'] == null ? null : pulumi.Output.create<String>(map['consumerGroupName'] as String),
      eventHubName: pulumi.Output.create<String>(map['eventHubName'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      userMetadata: map['userMetadata'] == null ? null : pulumi.Output.create<String>(map['userMetadata'] as String),
    );
  }
}

