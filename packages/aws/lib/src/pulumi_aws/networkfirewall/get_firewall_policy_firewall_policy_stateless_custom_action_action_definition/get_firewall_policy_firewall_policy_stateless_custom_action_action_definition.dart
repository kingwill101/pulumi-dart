// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_firewall_policy_firewall_policy_stateless_custom_action_action_definition_publish_metric_action/get_firewall_policy_firewall_policy_stateless_custom_action_action_definition_publish_metric_action.dart';

class GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition {
  final List<
          GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction>
      publishMetricActions;

  GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition({
    required this.publishMetricActions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['publishMetricActions'] = pulumi.Input.encodeList<
        GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction,
        Map<String, dynamic>>(publishMetricActions, (value) => value.toMap());
    return map;
  }

  factory GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition.fromMap(
      Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition(
      publishMetricActions: pulumi.Input.decodeList<
              GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction>(
          map['publishMetricActions'],
          (value) =>
              GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
