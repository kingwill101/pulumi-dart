// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleGroupRuleGroupRulesSourceStatefulRuleHeader {
  /// The destination IP address or address range to inspect for, in CIDR notation. To match with any address, specify `ANY`.
  final pulumi.Input<String> destination;
  /// The destination port to inspect for. To match with any address, specify `ANY`.
  final pulumi.Input<String> destinationPort;
  /// The direction of traffic flow to inspect. Valid values: `ANY` or `FORWARD`.
  final pulumi.Input<String> direction;
  /// The protocol to inspect. Valid values: `IP`, `TCP`, `UDP`, `ICMP`, `HTTP`, `FTP`, `TLS`, `SMB`, `DNS`, `DCERPC`, `SSH`, `SMTP`, `IMAP`, `MSN`, `KRB5`, `IKEV2`, `TFTP`, `NTP`, `DHCP`.
  final pulumi.Input<String> protocol;
  /// The source IP address or address range for, in CIDR notation. To match with any address, specify `ANY`.
  final pulumi.Input<String> source;
  /// The source port to inspect for. To match with any address, specify `ANY`.
  final pulumi.Input<String> sourcePort;

  /// Creates a new [RuleGroupRuleGroupRulesSourceStatefulRuleHeader].
  /// [destination] The destination IP address or address range to inspect for, in CIDR notation. To match with any address, specify `ANY`.
  /// [destinationPort] The destination port to inspect for. To match with any address, specify `ANY`.
  /// [direction] The direction of traffic flow to inspect. Valid values: `ANY` or `FORWARD`.
  /// [protocol] The protocol to inspect. Valid values: `IP`, `TCP`, `UDP`, `ICMP`, `HTTP`, `FTP`, `TLS`, `SMB`, `DNS`, `DCERPC`, `SSH`, `SMTP`, `IMAP`, `MSN`, `KRB5`, `IKEV2`, `TFTP`, `NTP`, `DHCP`.
  /// [source] The source IP address or address range for, in CIDR notation. To match with any address, specify `ANY`.
  /// [sourcePort] The source port to inspect for. To match with any address, specify `ANY`.
  const RuleGroupRuleGroupRulesSourceStatefulRuleHeader({
    required this.destination,
    required this.destinationPort,
    required this.direction,
    required this.protocol,
    required this.source,
    required this.sourcePort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
      'destinationPort': destinationPort,
      'direction': direction,
      'protocol': protocol,
      'source': source,
      'sourcePort': sourcePort,
    };
  }

  factory RuleGroupRuleGroupRulesSourceStatefulRuleHeader.fromMap(Map<String, dynamic> map) {
    return RuleGroupRuleGroupRulesSourceStatefulRuleHeader(
      destination: pulumi.Input.fromValue(map['destination'] as String),
      destinationPort: pulumi.Input.fromValue(map['destinationPort'] as String),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      source: pulumi.Input.fromValue(map['source'] as String),
      sourcePort: pulumi.Input.fromValue(map['sourcePort'] as String),
    );
  }
}
