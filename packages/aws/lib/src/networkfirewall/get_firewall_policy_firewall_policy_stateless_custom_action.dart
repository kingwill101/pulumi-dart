// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_firewall_policy_stateless_custom_action_action_definition.dart';

class GetFirewallPolicyFirewallPolicyStatelessCustomAction {
  final List<
          GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition>
      actionDefinitions;
  final String actionName;

  /// Creates a new [GetFirewallPolicyFirewallPolicyStatelessCustomAction].
  /// [actionDefinitions] Required.
  /// [actionName] Required.
  GetFirewallPolicyFirewallPolicyStatelessCustomAction({
    required this.actionDefinitions,
    required this.actionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actionDefinitions'] = pulumi.Input.encodeList<
        GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition,
        Map<String, dynamic>>(actionDefinitions, (value) => value.toMap());
    map['actionName'] = actionName;
    return map;
  }

  factory GetFirewallPolicyFirewallPolicyStatelessCustomAction.fromMap(
      Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyStatelessCustomAction(
      actionDefinitions: pulumi.Input.decodeList<
              GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition>(
          map['actionDefinitions'],
          (value) =>
              GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition
                  .fromMap((value as Map).cast<String, dynamic>())),
      actionName: map['actionName'] as String,
    );
  }
}
