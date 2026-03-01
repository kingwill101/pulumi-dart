// ignore_for_file: unused_element, unnecessary_cast


class TrafficMarkingPolicyTrafficMatchRule {
  /// IP Address Family
  final String? addressFamily;
  /// The destination network segment of the traffic message.
  /// The flow classification matches the traffic of the destination IP address in the destination network segment. If the flow classification rule is not set, it means that the flow classification rule matches the traffic of any destination IP address.
  final String? dstCidr;
  /// The destination port of the traffic message. Valid values: **-1**, `1` to `65535`.
  ///
  /// The flow classification rule matches the traffic of the destination port number in the destination port range. If the flow classification rule is not set, it means that the flow classification rule matches the traffic of any destination port number.
  ///
  /// The current parameter supports a maximum of 2 port numbers. The input format is described as follows:
  /// - If you only enter a port number, such as 1, the system defaults to match the traffic with the destination port of 1.
  /// - If you enter 2 port numbers, such as 1 and 200, the system defaults to match the traffic of the destination port in the range of 1 to 200.
  /// - If you enter 2 port numbers and one of them is - 1, the other port must also be - 1, indicating that it matches any destination port.
  final List<int>? dstPortRanges;
  /// The DSCP value of the traffic message. Valid values: `0` to **63 * *.
  ///
  /// The flow classification rule matches the flow with the specified DSCP value. If the flow classification rule is not set, it means that the flow classification rule matches the flow with any DSCP value.
  ///
  /// > **NOTE:**  The current DSCP value refers to the DSCP value that the traffic message has carried before entering the cross-region connection.
  final int? matchDscp;
  /// The protocol type of the traffic message.
  /// Stream classification rules can match traffic of multiple protocol types, such as `HTTP`, `HTTPS`, `TCP`, `UDP`, `SSH`, and **Telnet. For more protocol types, please log on to the [Cloud Enterprise Network Management Console](https://cen.console.aliyun.com/cen/list) to view.
  final String? protocol;
  /// The source network segment of the traffic message.
  /// The flow classification rule matches the traffic of the source IP address in the source network segment. If the flow classification rule is not set, it means that the flow classification rule matches the traffic of any source IP address.
  final String? srcCidr;
  /// The source port of the traffic message. Valid values: **-1**, `1` to `65535`.
  ///
  /// The flow classification rule matches the traffic of the source port number in the source port range. If it is not set, it means that the flow classification rule matches the traffic of any source port number.
  ///
  /// The current parameter supports entering up to two port numbers. The input format is described as follows:
  /// - If you only enter a port number, such as 1, the system defaults to match the traffic with source port 1.
  /// - If you enter two port numbers, such as 1 and 200, the system defaults to match the traffic with the source port in the range of 1 to 200.
  /// - If you enter two port numbers and one of them is - 1, the other port must also be - 1, indicating that it matches any source port.
  final List<int>? srcPortRanges;
  /// The description information of the stream classification rule.
  /// The description must be 2 to 128 characters in length and can contain numbers, dashes (-), and underscores (_).
  final String? trafficMatchRuleDescription;
  /// The name of the stream classification rule.
  /// The name must be 2 to 128 characters in length and can contain numbers, dashes (-), and underscores (_).
  final String? trafficMatchRuleName;

  /// Creates a new [TrafficMarkingPolicyTrafficMatchRule].
  /// [addressFamily] IP Address Family
  /// [dstCidr] The destination network segment of the traffic message.
  /// [dstPortRanges] The destination port of the traffic message. Valid values: **-1**, `1` to `65535`.
  /// [matchDscp] The DSCP value of the traffic message. Valid values: `0` to **63 * *.
  /// [protocol] The protocol type of the traffic message.
  /// [srcCidr] The source network segment of the traffic message.
  /// [srcPortRanges] The source port of the traffic message. Valid values: **-1**, `1` to `65535`.
  /// [trafficMatchRuleDescription] The description information of the stream classification rule.
  /// [trafficMatchRuleName] The name of the stream classification rule.
  TrafficMarkingPolicyTrafficMatchRule({
    this.addressFamily,
    this.dstCidr,
    this.dstPortRanges,
    this.matchDscp,
    this.protocol,
    this.srcCidr,
    this.srcPortRanges,
    this.trafficMatchRuleDescription,
    this.trafficMatchRuleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressFamily': ?addressFamily,
      'dstCidr': ?dstCidr,
      'dstPortRanges': ?dstPortRanges,
      'matchDscp': ?matchDscp,
      'protocol': ?protocol,
      'srcCidr': ?srcCidr,
      'srcPortRanges': ?srcPortRanges,
      'trafficMatchRuleDescription': ?trafficMatchRuleDescription,
      'trafficMatchRuleName': ?trafficMatchRuleName,
    };
  }

  factory TrafficMarkingPolicyTrafficMatchRule.fromMap(Map<String, dynamic> map) {
    return TrafficMarkingPolicyTrafficMatchRule(
      addressFamily: map['addressFamily'] == null ? null : map['addressFamily'] as String,
      dstCidr: map['dstCidr'] == null ? null : map['dstCidr'] as String,
      dstPortRanges: map['dstPortRanges'] == null ? null : (map['dstPortRanges'] as List).cast<int>(),
      matchDscp: map['matchDscp'] == null ? null : map['matchDscp'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      srcCidr: map['srcCidr'] == null ? null : map['srcCidr'] as String,
      srcPortRanges: map['srcPortRanges'] == null ? null : (map['srcPortRanges'] as List).cast<int>(),
      trafficMatchRuleDescription: map['trafficMatchRuleDescription'] == null ? null : map['trafficMatchRuleDescription'] as String,
      trafficMatchRuleName: map['trafficMatchRuleName'] == null ? null : map['trafficMatchRuleName'] as String,
    );
  }
}

