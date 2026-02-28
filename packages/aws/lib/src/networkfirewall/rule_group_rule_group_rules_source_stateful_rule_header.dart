// ignore_for_file: unused_element, unnecessary_cast

class RuleGroupRuleGroupRulesSourceStatefulRuleHeader {
  /// The destination IP address or address range to inspect for, in CIDR notation. To match with any address, specify `ANY`.
  final String destination;

  /// The destination port to inspect for. To match with any address, specify `ANY`.
  final String destinationPort;

  /// The direction of traffic flow to inspect. Valid values: `ANY` or `FORWARD`.
  final String direction;

  /// The protocol to inspect. Valid values: `IP`, `TCP`, `UDP`, `ICMP`, `HTTP`, `FTP`, `TLS`, `SMB`, `DNS`, `DCERPC`, `SSH`, `SMTP`, `IMAP`, `MSN`, `KRB5`, `IKEV2`, `TFTP`, `NTP`, `DHCP`.
  final String protocol;

  /// The source IP address or address range for, in CIDR notation. To match with any address, specify `ANY`.
  final String source;

  /// The source port to inspect for. To match with any address, specify `ANY`.
  final String sourcePort;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatefulRuleHeader].
  /// [destination] The destination IP address or address range to inspect for, in CIDR notation. To match with any address, specify `ANY`.
  /// [destinationPort] The destination port to inspect for. To match with any address, specify `ANY`.
  /// [direction] The direction of traffic flow to inspect. Valid values: `ANY` or `FORWARD`.
  /// [protocol] The protocol to inspect. Valid values: `IP`, `TCP`, `UDP`, `ICMP`, `HTTP`, `FTP`, `TLS`, `SMB`, `DNS`, `DCERPC`, `SSH`, `SMTP`, `IMAP`, `MSN`, `KRB5`, `IKEV2`, `TFTP`, `NTP`, `DHCP`.
  /// [source] The source IP address or address range for, in CIDR notation. To match with any address, specify `ANY`.
  /// [sourcePort] The source port to inspect for. To match with any address, specify `ANY`.
  RuleGroupRuleGroupRulesSourceStatefulRuleHeader({
    required this.destination,
    required this.destinationPort,
    required this.direction,
    required this.protocol,
    required this.source,
    required this.sourcePort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destination'] = destination;
    map['destinationPort'] = destinationPort;
    map['direction'] = direction;
    map['protocol'] = protocol;
    map['source'] = source;
    map['sourcePort'] = sourcePort;
    return map;
  }

  factory RuleGroupRuleGroupRulesSourceStatefulRuleHeader.fromMap(
      Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatefulRuleHeader(
      destination: map['destination'] as String,
      destinationPort: map['destinationPort'] as String,
      direction: map['direction'] as String,
      protocol: map['protocol'] as String,
      source: map['source'] as String,
      sourcePort: map['sourcePort'] as String,
    );
  }
}
