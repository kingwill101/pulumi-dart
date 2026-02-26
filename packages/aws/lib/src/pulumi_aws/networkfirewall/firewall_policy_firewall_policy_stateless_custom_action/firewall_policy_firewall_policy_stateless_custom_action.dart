// ignore_for_file: unused_element, unnecessary_cast

import '../firewall_policy_firewall_policy_stateless_custom_action_action_definition/firewall_policy_firewall_policy_stateless_custom_action_action_definition.dart';

class FirewallPolicyFirewallPolicyStatelessCustomAction {
  /// A configuration block describing the custom action associated with the <span pulumi-lang-nodejs="`actionName`" pulumi-lang-dotnet="`ActionName`" pulumi-lang-go="`actionName`" pulumi-lang-python="`action_name`" pulumi-lang-yaml="`actionName`" pulumi-lang-java="`actionName`">`action_name`</span>. See Action Definition below for details.
  final FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition
      actionDefinition;

  /// A friendly name of the custom action.
  final String actionName;

  FirewallPolicyFirewallPolicyStatelessCustomAction({
    required this.actionDefinition,
    required this.actionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionDefinition'] = actionDefinition.toMap();
    map['actionName'] = actionName;
    return map;
  }

  factory FirewallPolicyFirewallPolicyStatelessCustomAction.fromMap(
      Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicyStatelessCustomAction(
      actionDefinition:
          FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition
              .fromMap(
                  (map['actionDefinition'] as Map).cast<String, dynamic>()),
      actionName: map['actionName'] as String,
    );
  }
}
