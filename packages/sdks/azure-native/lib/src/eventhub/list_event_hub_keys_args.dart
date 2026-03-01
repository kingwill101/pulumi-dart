// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_list_event_hub_keys_args_doc}
/// Arguments for listEventHubKeys.
/// {@endtemplate}
/// {@macro pulumi_eventhub_list_event_hub_keys_args_doc}
class ListEventHubKeysArgs {
  /// The authorization rule name.
  final pulumi.Input<String> authorizationRuleName;
  /// The Event Hub name
  final pulumi.Input<String> eventHubName;
  /// The Namespace name
  final pulumi.Input<String> namespaceName;
  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListEventHubKeysArgs].
  /// [authorizationRuleName] The authorization rule name.
  /// [eventHubName] The Event Hub name
  /// [namespaceName] The Namespace name
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  ListEventHubKeysArgs({
    required pulumi.Output<String> authorizationRuleName,
    required pulumi.Output<String> eventHubName,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      authorizationRuleName = pulumi.Input.asInput<String>(authorizationRuleName),
      eventHubName = pulumi.Input.asInput<String>(eventHubName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': authorizationRuleName,
      'eventHubName': eventHubName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListEventHubKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListEventHubKeysArgs(
      authorizationRuleName: pulumi.Output.create<String>(map['authorizationRuleName'] as String),
      eventHubName: pulumi.Output.create<String>(map['eventHubName'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

