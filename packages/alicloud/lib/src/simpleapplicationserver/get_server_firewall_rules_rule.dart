// ignore_for_file: unused_element, unnecessary_cast


class GetServerFirewallRulesRule {
  /// The ID of the firewall rule.
  final String firewallRuleId;
  /// The ID of the Firewall Rule. The value formats as `<instance_id>:<firewall_rule_id>`.
  final String id;
  /// Alibaba Cloud simple application server instance ID.
  final String instanceId;
  /// The port range of the firewall rule.
  final String port;
  /// The remarks of the firewall rule.
  final String remark;
  /// The transport layer protocol. Valid values: `Tcp`, `Udp`, `TcpAndUdp`.
  final String ruleProtocol;

  /// Creates a new [GetServerFirewallRulesRule].
  /// [firewallRuleId] The ID of the firewall rule.
  /// [id] The ID of the Firewall Rule. The value formats as `<instance_id>:<firewall_rule_id>`.
  /// [instanceId] Alibaba Cloud simple application server instance ID.
  /// [port] The port range of the firewall rule.
  /// [remark] The remarks of the firewall rule.
  /// [ruleProtocol] The transport layer protocol. Valid values: `Tcp`, `Udp`, `TcpAndUdp`.
  GetServerFirewallRulesRule({
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
      firewallRuleId: map['firewallRuleId'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      port: map['port'] as String,
      remark: map['remark'] as String,
      ruleProtocol: map['ruleProtocol'] as String,
    );
  }
}

