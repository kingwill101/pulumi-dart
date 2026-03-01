// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_event_hub_args_doc}
/// Arguments for getEventHub.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_event_hub_args_doc}
class GetEventHubArgs {
  /// The Event Hub name
  final pulumi.Input<String> eventHubName;
  /// The Namespace name
  final pulumi.Input<String> namespaceName;
  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEventHubArgs].
  /// [eventHubName] The Event Hub name
  /// [namespaceName] The Namespace name
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  GetEventHubArgs({
    required pulumi.Output<String> eventHubName,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      eventHubName = pulumi.Input.asInput<String>(eventHubName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventHubName': eventHubName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEventHubArgs.fromMap(Map<String, dynamic> map) {
    return GetEventHubArgs(
      eventHubName: pulumi.Output.create<String>(map['eventHubName'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

