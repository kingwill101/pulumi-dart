// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_expressconnect_traffic_qos_rule_traffic_qos_rule_args_doc}
/// The set of arguments for TrafficQosRule.
/// {@endtemplate}
/// {@macro pulumi_expressconnect_traffic_qos_rule_traffic_qos_rule_args_doc}
class TrafficQosRuleArgs {
  /// The traffic of the QoS rule matches the Destination IPv4 network segment.
  ///
  /// > **NOTE:**  If this parameter is not supported, enter `SrcIPv6Cidr` or **DstIPv6Cidr * *.
  final pulumi.Input<String>? dstCidr;
  /// The QoS rule traffic matches the Destination IPv6 network segment.
  ///
  /// > **NOTE:**  If this parameter is not supported, enter `SrcCidr` or **DstCidr * *.
  final pulumi.Input<String>? dstIpv6Cidr;
  /// QoS rule traffic matches the destination port number range. Value range: `0` to `65535`. If not, the value is - 1. Currently, only a single port number is supported, and the start and end of the port number must be the same. The corresponding destination port number range is fixed for different protocol types. The values are as follows:
  /// - `ALL`:-1/-1, not editable.
  /// - **ICMP(IPv4)**:-1/-1, non-editable.
  /// - **ICMPv6(IPv6)**:-1/-1, non-editable.
  /// - `TCP`:-1/-1, editable.
  /// - `UDP`:-1/-1, editable.
  /// - `GRE`:-1/-1, not editable.
  /// - `SSH`:22/22, not editable.
  /// - `Telnet`:23/23, not editable.
  /// - `HTTP`:80/80, non-editable.
  /// - `HTTPS`:443/443, which cannot be edited.
  /// - **MS SQL**:1443/1443, which cannot be edited.
  /// - `Oracle`:1521/1521, non-editable.
  /// - `MySql`:3306/3306, non-editable.
  /// - `RDP`:3389/3389, non-editable.
  /// - `PostgreSQL`:5432/5432, non-editable.
  /// - `Redis`:6379/6379, non-editable.
  final pulumi.Input<String>? dstPortRange;
  /// The DSCP value of the traffic matched by the QoS rule. Value range: `0` to `63`. If not, the value is - 1.
  final pulumi.Input<int>? matchDscp;
  /// QoS rule priority. Value range: `1` to `9000`. The larger the number, the higher the priority. The priority of a QoS rule cannot be repeated in the same QoS policy.
  final pulumi.Input<int> priority;
  /// QoS rule protocol type, value:
  /// - `ALL`
  /// - **ICMP(IPv4)**
  /// - **ICMPv6(IPv6)* *
  /// - `TCP`
  /// - `UDP`
  /// - `GRE`
  /// - `SSH`
  /// - `Telnet`
  /// - `HTTP`
  /// - `HTTPS`
  /// - **MS SQL**
  /// - `Oracle`
  /// - `MySql`
  /// - `RDP`
  /// - `PostgreSQL`
  /// - `Redis`
  final pulumi.Input<String> protocol;
  /// The QoS policy ID.
  final pulumi.Input<String> qosId;
  /// The QoS queue ID.
  final pulumi.Input<String> queueId;
  /// Modify The DSCP value in the flow. Value range: `0` to `63`. If the value is not modified, the value is - 1.
  final pulumi.Input<int>? remarkingDscp;
  /// The description of the QoS rule.
  /// The length is 0 to 256 characters and cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? ruleDescription;
  /// The name of the QoS rule.
  /// The length is 0 to 128 characters and cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? ruleName;
  /// The QoS rule traffic matches the source IPv4 CIDR block.
  ///
  /// > **NOTE:**  If this parameter is not supported, enter `SrcIPv6Cidr` or **DstIPv6Cidr * *.
  final pulumi.Input<String>? srcCidr;
  /// The QoS rule traffic matches the source IPv6 network segment.
  ///
  /// > **NOTE:**  If this parameter is not supported, enter `SrcCidr` or **DstCidr * *.
  final pulumi.Input<String>? srcIpv6Cidr;
  /// The source port number of the QoS rule traffic matching. The value range is `0` to `65535`. If the traffic does not match, the value is - 1. Currently, only a single port number is supported, and the start and end of the port number must be the same.
  final pulumi.Input<String>? srcPortRange;

  /// Creates a new [TrafficQosRuleArgs].
  /// [dstCidr] The traffic of the QoS rule matches the Destination IPv4 network segment.
  /// [dstIpv6Cidr] The QoS rule traffic matches the Destination IPv6 network segment.
  /// [dstPortRange] QoS rule traffic matches the destination port number range. Value range: `0` to `65535`. If not, the value is - 1. Currently, only a single port number is supported, and the start and end of the port number must be the same. The corresponding destination port number range is fixed for different protocol types. The values are as follows:
  /// [matchDscp] The DSCP value of the traffic matched by the QoS rule. Value range: `0` to `63`. If not, the value is - 1.
  /// [priority] QoS rule priority. Value range: `1` to `9000`. The larger the number, the higher the priority. The priority of a QoS rule cannot be repeated in the same QoS policy.
  /// [protocol] QoS rule protocol type, value:
  /// [qosId] The QoS policy ID.
  /// [queueId] The QoS queue ID.
  /// [remarkingDscp] Modify The DSCP value in the flow. Value range: `0` to `63`. If the value is not modified, the value is - 1.
  /// [ruleDescription] The description of the QoS rule.
  /// [ruleName] The name of the QoS rule.
  /// [srcCidr] The QoS rule traffic matches the source IPv4 CIDR block.
  /// [srcIpv6Cidr] The QoS rule traffic matches the source IPv6 network segment.
  /// [srcPortRange] The source port number of the QoS rule traffic matching. The value range is `0` to `65535`. If the traffic does not match, the value is - 1. Currently, only a single port number is supported, and the start and end of the port number must be the same.
  TrafficQosRuleArgs({
    pulumi.Output<String>? dstCidr,
    pulumi.Output<String>? dstIpv6Cidr,
    pulumi.Output<String>? dstPortRange,
    pulumi.Output<int>? matchDscp,
    required pulumi.Output<int> priority,
    required pulumi.Output<String> protocol,
    required pulumi.Output<String> qosId,
    required pulumi.Output<String> queueId,
    pulumi.Output<int>? remarkingDscp,
    pulumi.Output<String>? ruleDescription,
    pulumi.Output<String>? ruleName,
    pulumi.Output<String>? srcCidr,
    pulumi.Output<String>? srcIpv6Cidr,
    pulumi.Output<String>? srcPortRange,
  }) :
      dstCidr = pulumi.Input.asOptionalInput<String>(dstCidr),
      dstIpv6Cidr = pulumi.Input.asOptionalInput<String>(dstIpv6Cidr),
      dstPortRange = pulumi.Input.asOptionalInput<String>(dstPortRange),
      matchDscp = pulumi.Input.asOptionalInput<int>(matchDscp),
      priority = pulumi.Input.asInput<int>(priority),
      protocol = pulumi.Input.asInput<String>(protocol),
      qosId = pulumi.Input.asInput<String>(qosId),
      queueId = pulumi.Input.asInput<String>(queueId),
      remarkingDscp = pulumi.Input.asOptionalInput<int>(remarkingDscp),
      ruleDescription = pulumi.Input.asOptionalInput<String>(ruleDescription),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      srcCidr = pulumi.Input.asOptionalInput<String>(srcCidr),
      srcIpv6Cidr = pulumi.Input.asOptionalInput<String>(srcIpv6Cidr),
      srcPortRange = pulumi.Input.asOptionalInput<String>(srcPortRange);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dstCidr': ?dstCidr,
      'dstIpv6Cidr': ?dstIpv6Cidr,
      'dstPortRange': ?dstPortRange,
      'matchDscp': ?matchDscp,
      'priority': priority,
      'protocol': protocol,
      'qosId': qosId,
      'queueId': queueId,
      'remarkingDscp': ?remarkingDscp,
      'ruleDescription': ?ruleDescription,
      'ruleName': ?ruleName,
      'srcCidr': ?srcCidr,
      'srcIpv6Cidr': ?srcIpv6Cidr,
      'srcPortRange': ?srcPortRange,
    };
  }

  factory TrafficQosRuleArgs.fromMap(Map<String, dynamic> map) {
    return TrafficQosRuleArgs(
      dstCidr: map['dstCidr'] == null ? null : pulumi.Output.create<String>(map['dstCidr'] as String),
      dstIpv6Cidr: map['dstIpv6Cidr'] == null ? null : pulumi.Output.create<String>(map['dstIpv6Cidr'] as String),
      dstPortRange: map['dstPortRange'] == null ? null : pulumi.Output.create<String>(map['dstPortRange'] as String),
      matchDscp: map['matchDscp'] == null ? null : pulumi.Output.create<int>(map['matchDscp'] as int),
      priority: pulumi.Output.create<int>(map['priority'] as int),
      protocol: pulumi.Output.create<String>(map['protocol'] as String),
      qosId: pulumi.Output.create<String>(map['qosId'] as String),
      queueId: pulumi.Output.create<String>(map['queueId'] as String),
      remarkingDscp: map['remarkingDscp'] == null ? null : pulumi.Output.create<int>(map['remarkingDscp'] as int),
      ruleDescription: map['ruleDescription'] == null ? null : pulumi.Output.create<String>(map['ruleDescription'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      srcCidr: map['srcCidr'] == null ? null : pulumi.Output.create<String>(map['srcCidr'] as String),
      srcIpv6Cidr: map['srcIpv6Cidr'] == null ? null : pulumi.Output.create<String>(map['srcIpv6Cidr'] as String),
      srcPortRange: map['srcPortRange'] == null ? null : pulumi.Output.create<String>(map['srcPortRange'] as String),
    );
  }
}

