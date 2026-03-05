// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TrafficQosRule resources.
class TrafficQosRuleState {
  /// The traffic of the QoS rule matches the Destination IPv4 network segment.
  ///
  /// &gt; **NOTE:**  If this parameter is not supported, enter `SrcIPv6Cidr` or **DstIPv6Cidr * *.
  final pulumi.Input<String>? dstCidr;
  /// The QoS rule traffic matches the Destination IPv6 network segment.
  ///
  /// &gt; **NOTE:**  If this parameter is not supported, enter `SrcCidr` or **DstCidr * *.
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
  final pulumi.Input<int>? priority;
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
  final pulumi.Input<String>? protocol;
  /// The QoS policy ID.
  final pulumi.Input<String>? qosId;
  /// The QoS queue ID.
  final pulumi.Input<String>? queueId;
  /// Modify The DSCP value in the flow. Value range: `0` to `63`. If the value is not modified, the value is - 1.
  final pulumi.Input<int>? remarkingDscp;
  /// The description of the QoS rule.
  /// The length is 0 to 256 characters and cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? ruleDescription;
  /// The ID of the QoS rule.
  final pulumi.Input<String>? ruleId;
  /// The name of the QoS rule.
  /// The length is 0 to 128 characters and cannot start with 'http:// 'or 'https.
  final pulumi.Input<String>? ruleName;
  /// The QoS rule traffic matches the source IPv4 CIDR block.
  ///
  /// &gt; **NOTE:**  If this parameter is not supported, enter `SrcIPv6Cidr` or **DstIPv6Cidr * *.
  final pulumi.Input<String>? srcCidr;
  /// The QoS rule traffic matches the source IPv6 network segment.
  ///
  /// &gt; **NOTE:**  If this parameter is not supported, enter `SrcCidr` or **DstCidr * *.
  final pulumi.Input<String>? srcIpv6Cidr;
  /// The source port number of the QoS rule traffic matching. The value range is `0` to `65535`. If the traffic does not match, the value is - 1. Currently, only a single port number is supported, and the start and end of the port number must be the same.
  final pulumi.Input<String>? srcPortRange;
  /// The status of the QoS rule. Value:
  final pulumi.Input<String>? status;

  /// Creates a new [TrafficQosRuleState].
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
  /// [ruleId] The ID of the QoS rule.
  /// [ruleName] The name of the QoS rule.
  /// [srcCidr] The QoS rule traffic matches the source IPv4 CIDR block.
  /// [srcIpv6Cidr] The QoS rule traffic matches the source IPv6 network segment.
  /// [srcPortRange] The source port number of the QoS rule traffic matching. The value range is `0` to `65535`. If the traffic does not match, the value is - 1. Currently, only a single port number is supported, and the start and end of the port number must be the same.
  /// [status] The status of the QoS rule. Value:
  TrafficQosRuleState({
    this.dstCidr,
    this.dstIpv6Cidr,
    this.dstPortRange,
    this.matchDscp,
    this.priority,
    this.protocol,
    this.qosId,
    this.queueId,
    this.remarkingDscp,
    this.ruleDescription,
    this.ruleId,
    this.ruleName,
    this.srcCidr,
    this.srcIpv6Cidr,
    this.srcPortRange,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dstCidr': ?dstCidr,
      'dstIpv6Cidr': ?dstIpv6Cidr,
      'dstPortRange': ?dstPortRange,
      'matchDscp': ?matchDscp,
      'priority': ?priority,
      'protocol': ?protocol,
      'qosId': ?qosId,
      'queueId': ?queueId,
      'remarkingDscp': ?remarkingDscp,
      'ruleDescription': ?ruleDescription,
      'ruleId': ?ruleId,
      'ruleName': ?ruleName,
      'srcCidr': ?srcCidr,
      'srcIpv6Cidr': ?srcIpv6Cidr,
      'srcPortRange': ?srcPortRange,
      'status': ?status,
    };
  }

  factory TrafficQosRuleState.fromMap(Map<String, dynamic> map) {
    return TrafficQosRuleState(
      dstCidr: (() { final guardedValue = map['dstCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dstIpv6Cidr: (() { final guardedValue = map['dstIpv6Cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dstPortRange: (() { final guardedValue = map['dstPortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchDscp: (() { final guardedValue = map['matchDscp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qosId: (() { final guardedValue = map['qosId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queueId: (() { final guardedValue = map['queueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remarkingDscp: (() { final guardedValue = map['remarkingDscp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ruleDescription: (() { final guardedValue = map['ruleDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleId: (() { final guardedValue = map['ruleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleName: (() { final guardedValue = map['ruleName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      srcCidr: (() { final guardedValue = map['srcCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      srcIpv6Cidr: (() { final guardedValue = map['srcIpv6Cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      srcPortRange: (() { final guardedValue = map['srcPortRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

