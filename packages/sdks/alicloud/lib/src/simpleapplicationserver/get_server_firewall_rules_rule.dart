// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerFirewallRulesRule {
  /// The ID of the firewall rule.
  final pulumi.Input<String> firewallRuleId;
  /// The ID of the Firewall Rule. The value formats as `&lt;instance_id&gt;:&lt;firewall_rule_id&gt;`.
  final pulumi.Input<String> id;
  /// Alibaba Cloud simple application server instance ID.
  final pulumi.Input<String> instanceId;
  /// The port range of the firewall rule.
  final pulumi.Input<String> port;
  /// The remarks of the firewall rule.
  final pulumi.Input<String> remark;
  /// The transport layer protocol. Valid values: `Tcp`, `Udp`, `TcpAndUdp`.
  final pulumi.Input<String> ruleProtocol;

  /// Creates a new [GetServerFirewallRulesRule].
  /// [firewallRuleId] The ID of the firewall rule.
  /// [id] The ID of the Firewall Rule. The value formats as `&lt;instance_id&gt;:&lt;firewall_rule_id&gt;`.
  /// [instanceId] Alibaba Cloud simple application server instance ID.
  /// [port] The port range of the firewall rule.
  /// [remark] The remarks of the firewall rule.
  /// [ruleProtocol] The transport layer protocol. Valid values: `Tcp`, `Udp`, `TcpAndUdp`.
  const GetServerFirewallRulesRule({
    required this.firewallRuleId,
    required this.id,
    required this.instanceId,
    required this.port,
    required this.remark,
    required this.ruleProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallRuleId': firewallRuleId,
      'id': id,
      'instanceId': instanceId,
      'port': port,
      'remark': remark,
      'ruleProtocol': ruleProtocol,
    };
  }

  factory GetServerFirewallRulesRule.fromMap(Map<String, dynamic> map) {
    return GetServerFirewallRulesRule(
      firewallRuleId: pulumi.Input.fromValue(map['firewallRuleId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      port: pulumi.Input.fromValue(map['port'] as String),
      remark: pulumi.Input.fromValue(map['remark'] as String),
      ruleProtocol: pulumi.Input.fromValue(map['ruleProtocol'] as String),
    );
  }
}

