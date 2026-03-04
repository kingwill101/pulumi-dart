// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_event_hub_authorization_rule_args_doc}
/// The set of arguments for EventHubAuthorizationRule.
/// {@endtemplate}
/// {@macro pulumi_eventhub_event_hub_authorization_rule_args_doc}
class EventHubAuthorizationRuleArgs {
  /// The authorization rule name.
  final pulumi.Input<String>? authorizationRuleName;

  /// The Event Hub name
  final pulumi.Input<String> eventHubName;

  /// The Namespace name
  final pulumi.Input<String> namespaceName;

  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// The rights associated with the rule.
  final pulumi.Input<List<String>> rights;

  /// Creates a new [EventHubAuthorizationRuleArgs].
  /// [authorizationRuleName] The authorization rule name.
  /// [eventHubName] The Event Hub name
  /// [namespaceName] The Namespace name
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  /// [rights] The rights associated with the rule.
  EventHubAuthorizationRuleArgs({
    this.authorizationRuleName,
    required this.eventHubName,
    required this.namespaceName,
    required this.resourceGroupName,
    required this.rights,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationRuleName': ?authorizationRuleName,
      'eventHubName': eventHubName,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
      'rights': rights,
    };
  }

  factory EventHubAuthorizationRuleArgs.fromMap(Map<String, dynamic> map) {
    return EventHubAuthorizationRuleArgs(
      authorizationRuleName: (() {
        final guardedValue = map['authorizationRuleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventHubName: pulumi.Input.fromValue(map['eventHubName'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      rights: pulumi.Input.fromValue((map['rights'] as List).cast<String>()),
    );
  }
}
