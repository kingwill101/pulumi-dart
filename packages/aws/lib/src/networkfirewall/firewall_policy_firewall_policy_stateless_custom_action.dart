// ignore_for_file: unused_element, unnecessary_cast

import 'firewall_policy_firewall_policy_stateless_custom_action_action_definition.dart';

class FirewallPolicyFirewallPolicyStatelessCustomAction {
  /// A configuration block describing the custom action associated with the `action_name`. See Action Definition below for details.
  final FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition
      actionDefinition;

  /// A friendly name of the custom action.
  final String actionName;

  /// Creates a new [FirewallPolicyFirewallPolicyStatelessCustomAction].
  /// [actionDefinition] A configuration block describing the custom action associated with the `action_name`. See Action Definition below for details.
  /// [actionName] A friendly name of the custom action.
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
