// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FirewallRule resources.
class FirewallRuleState {
  /// The ID of the firewall rule.
  final pulumi.Input<String>? firewallRuleId;
  /// Alibaba Cloud simple application server instance ID.
  final pulumi.Input<String>? instanceId;
  /// The port range. Valid values of port numbers: `1` to `65535`. Specify a port range in the format of `&lt;start port number&gt;/&lt;end port number&gt;`. Example: `1024/1055`, which indicates the port range of `1024` through `1055`.
  final pulumi.Input<String>? port;
  /// The remarks of the firewall rule.
  final pulumi.Input<String>? remark;
  /// The transport layer protocol. Valid values: `Tcp`, `Udp`, `TcpAndUdp`.
  final pulumi.Input<String>? ruleProtocol;

  /// Creates a new [FirewallRuleState].
  /// [firewallRuleId] The ID of the firewall rule.
  /// [instanceId] Alibaba Cloud simple application server instance ID.
  /// [port] The port range. Valid values of port numbers: `1` to `65535`. Specify a port range in the format of `&lt;start port number&gt;/&lt;end port number&gt;`. Example: `1024/1055`, which indicates the port range of `1024` through `1055`.
  /// [remark] The remarks of the firewall rule.
  /// [ruleProtocol] The transport layer protocol. Valid values: `Tcp`, `Udp`, `TcpAndUdp`.
  const FirewallRuleState({
    this.firewallRuleId,
    this.instanceId,
    this.port,
    this.remark,
    this.ruleProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallRuleId': ?firewallRuleId,
      'instanceId': ?instanceId,
      'port': ?port,
      'remark': ?remark,
      'ruleProtocol': ?ruleProtocol,
    };
  }

  factory FirewallRuleState.fromMap(Map<String, dynamic> map) {
    return FirewallRuleState(
      firewallRuleId: (() { final guardedValue = map['firewallRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remark: (() { final guardedValue = map['remark']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleProtocol: (() { final guardedValue = map['ruleProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

