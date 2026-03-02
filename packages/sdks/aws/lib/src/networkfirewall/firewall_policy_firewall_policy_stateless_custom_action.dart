// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_firewall_policy_stateless_custom_action_action_definition.dart';

class FirewallPolicyFirewallPolicyStatelessCustomAction {
  /// A configuration block describing the custom action associated with the `action_name`. See Action Definition below for details.
  final pulumi.Input<FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition> actionDefinition;
  /// A friendly name of the custom action.
  final pulumi.Input<String> actionName;

  /// Creates a new [FirewallPolicyFirewallPolicyStatelessCustomAction].
  /// [actionDefinition] A configuration block describing the custom action associated with the `action_name`. See Action Definition below for details.
  /// [actionName] A friendly name of the custom action.
  FirewallPolicyFirewallPolicyStatelessCustomAction({
    required this.actionDefinition,
    required this.actionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionDefinition': pulumi.Input.mapInputValue<FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition, Map<String, dynamic>>(actionDefinition, (value) => value.toMap()),
      'actionName': actionName,
    };
  }

  factory FirewallPolicyFirewallPolicyStatelessCustomAction.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicyStatelessCustomAction(
      actionDefinition: (FirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition.fromMap((map['actionDefinition'] as Map).cast<String, dynamic>())).input(),
      actionName: (map['actionName'] as String).input(),
    );
  }
}

