// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_firewall_policy_stateless_custom_action_action_definition.dart';

class GetFirewallPolicyFirewallPolicyStatelessCustomAction {
  final pulumi.Input<
    List<GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition>
  >
  actionDefinitions;
  final pulumi.Input<String> actionName;

  /// Creates a new [GetFirewallPolicyFirewallPolicyStatelessCustomAction].
  /// [actionDefinitions] Required.
  /// [actionName] Required.
  GetFirewallPolicyFirewallPolicyStatelessCustomAction({
    required this.actionDefinitions,
    required this.actionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionDefinitions':
          pulumi.Input.mapInputValue<
            List<
              GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition
            >,
            List<Map<String, dynamic>>
          >(
            actionDefinitions,
            (value) =>
                pulumi.Input.encodeList<
                  GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'actionName': actionName,
    };
  }

  factory GetFirewallPolicyFirewallPolicyStatelessCustomAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFirewallPolicyFirewallPolicyStatelessCustomAction(
      actionDefinitions: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition
        >(
          map['actionDefinitions']!,
          (value) =>
              GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      actionName: pulumi.Input.fromValue(map['actionName'] as String),
    );
  }
}
