// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkAclEgress {
  /// The action to take.
  final pulumi.Input<String> action;
  /// The CIDR block to match. This must be a
  /// valid network mask.
  final pulumi.Input<String>? cidrBlock;
  /// The from port to match.
  final pulumi.Input<int> fromPort;
  /// The ICMP type code to be used. Default 0.
  ///
  /// > Note: For more information on ICMP types and codes, see here: https://www.iana.org/assignments/icmp-parameters/icmp-parameters.xhtml
  final pulumi.Input<int>? icmpCode;
  /// The ICMP type to be used. Default 0.
  final pulumi.Input<int>? icmpType;
  /// The IPv6 CIDR block.
  final pulumi.Input<String>? ipv6CidrBlock;
  /// The protocol to match. If using the -1 'all'
  /// protocol, you must specify a from and to port of 0.
  final pulumi.Input<String> protocol;
  /// The rule number. Used for ordering.
  final pulumi.Input<int> ruleNo;
  /// The to port to match.
  final pulumi.Input<int> toPort;

  /// Creates a new [NetworkAclEgress].
  /// [action] The action to take.
  /// [cidrBlock] The CIDR block to match. This must be a
  /// [fromPort] The from port to match.
  /// [icmpCode] The ICMP type code to be used. Default 0.
  /// [icmpType] The ICMP type to be used. Default 0.
  /// [ipv6CidrBlock] The IPv6 CIDR block.
  /// [protocol] The protocol to match. If using the -1 'all'
  /// [ruleNo] The rule number. Used for ordering.
  /// [toPort] The to port to match.
  NetworkAclEgress({
    required this.action,
    this.cidrBlock,
    required this.fromPort,
    this.icmpCode,
    this.icmpType,
    this.ipv6CidrBlock,
    required this.protocol,
    required this.ruleNo,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'cidrBlock': ?cidrBlock,
      'fromPort': fromPort,
      'icmpCode': ?icmpCode,
      'icmpType': ?icmpType,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'protocol': protocol,
      'ruleNo': ruleNo,
      'toPort': toPort,
    };
  }

  factory NetworkAclEgress.fromMap(Map<String, dynamic> map) {
    return NetworkAclEgress(
      action: (map['action'] as String).input(),
      cidrBlock: map['cidrBlock'] == null ? null : (map['cidrBlock'] as String).input(),
      fromPort: (map['fromPort'] as int).input(),
      icmpCode: map['icmpCode'] == null ? null : (map['icmpCode'] as int).input(),
      icmpType: map['icmpType'] == null ? null : (map['icmpType'] as int).input(),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : (map['ipv6CidrBlock'] as String).input(),
      protocol: (map['protocol'] as String).input(),
      ruleNo: (map['ruleNo'] as int).input(),
      toPort: (map['toPort'] as int).input(),
    );
  }
}

