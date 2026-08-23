// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'publish_metric_action_network_firewall_rule_group_response.dart';

/// Definition of ActionDefinition
class ActionDefinitionNetworkFirewallRuleGroupResponse {
  /// Property publishMetricAction
  final pulumi.Input<PublishMetricActionNetworkFirewallRuleGroupResponse>? publishMetricAction;

  /// Creates a new [ActionDefinitionNetworkFirewallRuleGroupResponse].
  /// [publishMetricAction] Property publishMetricAction
  const ActionDefinitionNetworkFirewallRuleGroupResponse({
    this.publishMetricAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'publishMetricAction': ?pulumi.Input.mapOptionalInputValue<PublishMetricActionNetworkFirewallRuleGroupResponse, Map<String, dynamic>>(publishMetricAction, (value) => value.toMap()),
    };
  }

  factory ActionDefinitionNetworkFirewallRuleGroupResponse.fromMap(Map<String, dynamic> map) {
    return ActionDefinitionNetworkFirewallRuleGroupResponse(
      publishMetricAction: (() { final guardedValue = map['publishMetricAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublishMetricActionNetworkFirewallRuleGroupResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
