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
  const ListEventHubKeysArgs({
    required this.authorizationRuleName,
    required this.eventHubName,
    required this.namespaceName,
    required this.resourceGroupName,
  });

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
      authorizationRuleName: pulumi.Input.fromValue(map['authorizationRuleName'] as String),
      eventHubName: pulumi.Input.fromValue(map['eventHubName'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
