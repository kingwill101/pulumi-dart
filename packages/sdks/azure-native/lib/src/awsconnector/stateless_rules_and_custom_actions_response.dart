// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_action_network_firewall_rule_group_response.dart';
import 'stateless_rule_response.dart';

/// Definition of StatelessRulesAndCustomActions
class StatelessRulesAndCustomActionsResponse {
  /// Property customActions
  final pulumi.Input<List<CustomActionNetworkFirewallRuleGroupResponse>?>? customActions;
  /// Property statelessRules
  final pulumi.Input<List<StatelessRuleResponse>?>? statelessRules;

  /// Creates a new [StatelessRulesAndCustomActionsResponse].
  /// [customActions] Property customActions
  /// [statelessRules] Property statelessRules
  const StatelessRulesAndCustomActionsResponse({
    this.customActions,
    this.statelessRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customActions': ?pulumi.Input.mapOptionalInputValue<List<CustomActionNetworkFirewallRuleGroupResponse>, List<Map<String, dynamic>>>(customActions, (value) => pulumi.Input.encodeList<CustomActionNetworkFirewallRuleGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statelessRules': ?pulumi.Input.mapOptionalInputValue<List<StatelessRuleResponse>, List<Map<String, dynamic>>>(statelessRules, (value) => pulumi.Input.encodeList<StatelessRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StatelessRulesAndCustomActionsResponse.fromMap(Map<String, dynamic> map) {
    return StatelessRulesAndCustomActionsResponse(
      customActions: (() { final guardedValue = map['customActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomActionNetworkFirewallRuleGroupResponse>(guardedValue, (value) => CustomActionNetworkFirewallRuleGroupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statelessRules: (() { final guardedValue = map['statelessRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StatelessRuleResponse>(guardedValue, (value) => StatelessRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
