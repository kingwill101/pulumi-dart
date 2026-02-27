// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for NetworkAclRule.
class NetworkAclRuleArgs {
  /// The network range to allow or deny, in CIDR notation (for example 172.16.0.0/24 ).
  final pulumi.Input<String>? cidrBlock;

  /// Indicates whether this is an egress rule (rule is applied to traffic leaving the subnet). Default `false`.
  final pulumi.Input<bool>? egress;

  /// The from port to match.
  final pulumi.Input<int>? fromPort;

  /// ICMP protocol: The ICMP code. Required if specifying ICMP for the protocolE.g., -1
  ///
  /// > **NOTE:** If the value of `protocol` is `-1` or `all`, the `from_port` and `to_port` values will be ignored and the rule will apply to all ports.
  ///
  /// > **NOTE:** If the value of `icmp_type` is `-1` (which results in a wildcard ICMP type), the `icmp_code` must also be set to `-1` (wildcard ICMP code).
  ///
  /// > Note: For more information on ICMP types and codes, see here: https://www.iana.org/assignments/icmp-parameters/icmp-parameters.xhtml
  final pulumi.Input<int>? icmpCode;

  /// ICMP protocol: The ICMP type. Required if specifying ICMP for the protocolE.g., -1
  final pulumi.Input<int>? icmpType;

  /// The IPv6 CIDR block to allow or deny.
  final pulumi.Input<String>? ipv6CidrBlock;

  /// The ID of the network ACL.
  final pulumi.Input<String> networkAclId;

  /// The protocol. A value of -1 means all protocols.
  final pulumi.Input<String> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Indicates whether to allow or deny the traffic that matches the rule. Accepted values: `allow` | `deny`
  final pulumi.Input<String> ruleAction;

  /// The rule number for the entry (for example, 100). ACL entries are processed in ascending order by rule number.
  final pulumi.Input<int> ruleNumber;

  /// The to port to match.
  final pulumi.Input<int>? toPort;

  NetworkAclRuleArgs({
    this.cidrBlock,
    this.egress,
    this.fromPort,
    this.icmpCode,
    this.icmpType,
    this.ipv6CidrBlock,
    required this.networkAclId,
    required this.protocol,
    this.region,
    required this.ruleAction,
    required this.ruleNumber,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cidrBlockValue = cidrBlock;
    if (cidrBlockValue != null) {
      map['cidrBlock'] = cidrBlockValue;
    }
    final egressValue = egress;
    if (egressValue != null) {
      map['egress'] = egressValue;
    }
    final fromPortValue = fromPort;
    if (fromPortValue != null) {
      map['fromPort'] = fromPortValue;
    }
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
    map['networkAclId'] = networkAclId;
    map['protocol'] = protocol;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['ruleAction'] = ruleAction;
    map['ruleNumber'] = ruleNumber;
    final toPortValue = toPort;
    if (toPortValue != null) {
      map['toPort'] = toPortValue;
    }
    return map;
  }

  factory NetworkAclRuleArgs.fromMap(Map<String, dynamic> map) {
    return NetworkAclRuleArgs(
      cidrBlock: pulumi.Input.asOptionalInput<String>(map['cidrBlock']),
      egress: pulumi.Input.asOptionalInput<bool>(map['egress']),
      fromPort: pulumi.Input.asOptionalInput<int>(map['fromPort']),
      icmpCode: pulumi.Input.asOptionalInput<int>(map['icmpCode']),
      icmpType: pulumi.Input.asOptionalInput<int>(map['icmpType']),
      ipv6CidrBlock: pulumi.Input.asOptionalInput<String>(map['ipv6CidrBlock']),
      networkAclId: pulumi.Input.asInput<String>(map['networkAclId']),
      protocol: pulumi.Input.asInput<String>(map['protocol']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      ruleAction: pulumi.Input.asInput<String>(map['ruleAction']),
      ruleNumber: pulumi.Input.asInput<int>(map['ruleNumber']),
      toPort: pulumi.Input.asOptionalInput<int>(map['toPort']),
    );
  }
}
