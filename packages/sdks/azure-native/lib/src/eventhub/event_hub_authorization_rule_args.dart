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
    pulumi.Output<String>? authorizationRuleName,
    required pulumi.Output<String> eventHubName,
    required pulumi.Output<String> namespaceName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<List<String>> rights,
  }) :
      authorizationRuleName = pulumi.Input.asOptionalInput<String>(authorizationRuleName),
      eventHubName = pulumi.Input.asInput<String>(eventHubName),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      rights = pulumi.Input.asInput<List<String>>(rights);

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
      authorizationRuleName: map['authorizationRuleName'] == null ? null : pulumi.Output.create<String>(map['authorizationRuleName'] as String),
      eventHubName: pulumi.Output.create<String>(map['eventHubName'] as String),
      namespaceName: pulumi.Output.create<String>(map['namespaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      rights: pulumi.Output.create<List<String>>((map['rights'] as List).cast<String>()),
    );
  }
}

