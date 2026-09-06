// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_definition_network_firewall_rule_group_response.dart';

/// Definition of CustomAction
class CustomActionNetworkFirewallRuleGroupResponse {
  /// Property actionDefinition
  final pulumi.Input<ActionDefinitionNetworkFirewallRuleGroupResponse?>? actionDefinition;
  /// Property actionName
  final pulumi.Input<String?>? actionName;

  /// Creates a new [CustomActionNetworkFirewallRuleGroupResponse].
  /// [actionDefinition] Property actionDefinition
  /// [actionName] Property actionName
  const CustomActionNetworkFirewallRuleGroupResponse({
    this.actionDefinition,
    this.actionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionDefinition': ?pulumi.Input.mapOptionalInputValue<ActionDefinitionNetworkFirewallRuleGroupResponse, Map<String, dynamic>>(actionDefinition, (value) => value.toMap()),
      'actionName': ?actionName,
    };
  }

  factory CustomActionNetworkFirewallRuleGroupResponse.fromMap(Map<String, dynamic> map) {
    return CustomActionNetworkFirewallRuleGroupResponse(
      actionDefinition: (() { final guardedValue = map['actionDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActionDefinitionNetworkFirewallRuleGroupResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      actionName: (() { final guardedValue = map['actionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
