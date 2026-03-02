// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FirewallRule resources.
class FirewallRuleState {
  /// The ID of the firewall rule.
  final pulumi.Input<String>? firewallRuleId;
  /// Alibaba Cloud simple application server instance ID.
  final pulumi.Input<String>? instanceId;
  /// The port range. Valid values of port numbers: `1` to `65535`. Specify a port range in the format of `<start port number>/<end port number>`. Example: `1024/1055`, which indicates the port range of `1024` through `1055`.
  final pulumi.Input<String>? port;
  /// The remarks of the firewall rule.
  final pulumi.Input<String>? remark;
  /// The transport layer protocol. Valid values: `Tcp`, `Udp`, `TcpAndUdp`.
  final pulumi.Input<String>? ruleProtocol;

  /// Creates a new [FirewallRuleState].
  /// [firewallRuleId] The ID of the firewall rule.
  /// [instanceId] Alibaba Cloud simple application server instance ID.
  /// [port] The port range. Valid values of port numbers: `1` to `65535`. Specify a port range in the format of `<start port number>/<end port number>`. Example: `1024/1055`, which indicates the port range of `1024` through `1055`.
  /// [remark] The remarks of the firewall rule.
  /// [ruleProtocol] The transport layer protocol. Valid values: `Tcp`, `Udp`, `TcpAndUdp`.
  FirewallRuleState({
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
      firewallRuleId: map['firewallRuleId'] == null ? null : (map['firewallRuleId']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      remark: map['remark'] == null ? null : (map['remark']! as String).input(),
      ruleProtocol: map['ruleProtocol'] == null ? null : (map['ruleProtocol']! as String).input(),
    );
  }
}

