// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_firewall_policy_stateless_custom_action_action_definition_publish_metric_action.dart';

class GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition {
  final pulumi.Input<List<GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction>> publishMetricActions;

  /// Creates a new [GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition].
  /// [publishMetricActions] Required.
  GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition({
    required this.publishMetricActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publishMetricActions': pulumi.Input.mapInputValue<List<GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction>, List<Map<String, dynamic>>>(publishMetricActions, (value) => pulumi.Input.encodeList<GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinition(
      publishMetricActions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction>(map['publishMetricActions']!, (value) => GetFirewallPolicyFirewallPolicyStatelessCustomActionActionDefinitionPublishMetricAction.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

