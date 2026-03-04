// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_simpleapplicationserver_firewall_rule_firewall_rule_args_doc}
/// The set of arguments for FirewallRule.
/// {@endtemplate}
/// {@macro pulumi_simpleapplicationserver_firewall_rule_firewall_rule_args_doc}
class FirewallRuleArgs {
  /// Alibaba Cloud simple application server instance ID.
  final pulumi.Input<String> instanceId;

  /// The port range. Valid values of port numbers: `1` to `65535`. Specify a port range in the format of `&lt;start port number&gt;/&lt;end port number&gt;`. Example: `1024/1055`, which indicates the port range of `1024` through `1055`.
  final pulumi.Input<String> port;

  /// The remarks of the firewall rule.
  final pulumi.Input<String>? remark;

  /// The transport layer protocol. Valid values: `Tcp`, `Udp`, `TcpAndUdp`.
  final pulumi.Input<String> ruleProtocol;

  /// Creates a new [FirewallRuleArgs].
  /// [instanceId] Alibaba Cloud simple application server instance ID.
  /// [port] The port range. Valid values of port numbers: `1` to `65535`. Specify a port range in the format of `&lt;start port number&gt;/&lt;end port number&gt;`. Example: `1024/1055`, which indicates the port range of `1024` through `1055`.
  /// [remark] The remarks of the firewall rule.
  /// [ruleProtocol] The transport layer protocol. Valid values: `Tcp`, `Udp`, `TcpAndUdp`.
  FirewallRuleArgs({
    required this.instanceId,
    required this.port,
    this.remark,
    required this.ruleProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'port': port,
      'remark': ?remark,
      'ruleProtocol': ruleProtocol,
    };
  }

  factory FirewallRuleArgs.fromMap(Map<String, dynamic> map) {
    return FirewallRuleArgs(
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      port: pulumi.Input.fromValue(map['port'] as String),
      remark: (() {
        final guardedValue = map['remark'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ruleProtocol: pulumi.Input.fromValue(map['ruleProtocol'] as String),
    );
  }
}
