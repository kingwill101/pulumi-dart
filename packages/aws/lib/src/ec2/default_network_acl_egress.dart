// ignore_for_file: unused_element, unnecessary_cast

class DefaultNetworkAclEgress {
  /// The action to take.
  final String action;

  /// The CIDR block to match. This must be a valid network mask.
  final String? cidrBlock;

  /// The from port to match.
  final int fromPort;

  /// The ICMP type code to be used. Default 0.
  final int? icmpCode;

  /// The ICMP type to be used. Default 0.
  final int? icmpType;

  /// The IPv6 CIDR block.
  ///
  /// > For more information on ICMP types and codes, see [Internet Control Message Protocol (ICMP) Parameters](https://www.iana.org/assignments/icmp-parameters/icmp-parameters.xhtml).
  final String? ipv6CidrBlock;

  /// The protocol to match. If using the -1 'all' protocol, you must specify a from and to port of 0.
  final String protocol;

  /// The rule number. Used for ordering.
  final int ruleNo;

  /// The to port to match.
  ///
  /// The following arguments are optional:
  final int toPort;

  /// Creates a new [DefaultNetworkAclEgress].
  /// [action] The action to take.
  /// [cidrBlock] The CIDR block to match. This must be a valid network mask.
  /// [fromPort] The from port to match.
  /// [icmpCode] The ICMP type code to be used. Default 0.
  /// [icmpType] The ICMP type to be used. Default 0.
  /// [ipv6CidrBlock] The IPv6 CIDR block.
  /// [protocol] The protocol to match. If using the -1 'all' protocol, you must specify a from and to port of 0.
  /// [ruleNo] The rule number. Used for ordering.
  /// [toPort] The to port to match.
  DefaultNetworkAclEgress({
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
    final map = <String, dynamic>{};
    map['action'] = action;
    final cidrBlockValue = cidrBlock;
    if (cidrBlockValue != null) {
      map['cidrBlock'] = cidrBlockValue;
    }
    map['fromPort'] = fromPort;
    final icmpCodeValue = icmpCode;
    if (icmpCodeValue != null) {
      map['icmpCode'] = icmpCodeValue;
    }
    final icmpTypeValue = icmpType;
    if (icmpTypeValue != null) {
      map['icmpType'] = icmpTypeValue;
    }
    final ipv6CidrBlockValue = ipv6CidrBlock;
    if (ipv6CidrBlockValue != null) {
      map['ipv6CidrBlock'] = ipv6CidrBlockValue;
    }
    map['protocol'] = protocol;
    map['ruleNo'] = ruleNo;
    map['toPort'] = toPort;
    return map;
  }

  factory DefaultNetworkAclEgress.fromMap(Map<String, dynamic> map) {
    return DefaultNetworkAclEgress(
      action: map['action'] as String,
      cidrBlock: map['cidrBlock'] == null ? null : map['cidrBlock'] as String,
      fromPort: map['fromPort'] as int,
      icmpCode: map['icmpCode'] == null ? null : map['icmpCode'] as int,
      icmpType: map['icmpType'] == null ? null : map['icmpType'] as int,
      ipv6CidrBlock:
          map['ipv6CidrBlock'] == null ? null : map['ipv6CidrBlock'] as String,
      protocol: map['protocol'] as String,
      ruleNo: map['ruleNo'] as int,
      toPort: map['toPort'] as int,
    );
  }
}
