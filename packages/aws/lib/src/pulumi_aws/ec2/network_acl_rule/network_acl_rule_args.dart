// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for NetworkAclRule.
class NetworkAclRuleArgs {
  /// The network range to allow or deny, in CIDR notation (for example 172.16.0.0/24 ).
  final Input<String>? cidrBlock;

  /// Indicates whether this is an egress rule (rule is applied to traffic leaving the subnet). Default <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? egress;

  /// The from port to match.
  final Input<int>? fromPort;

  /// ICMP protocol: The ICMP code. Required if specifying ICMP for the protocolE.g., -1
  ///
  /// > **NOTE:** If the value of <span pulumi-lang-nodejs="`protocol`" pulumi-lang-dotnet="`Protocol`" pulumi-lang-go="`protocol`" pulumi-lang-python="`protocol`" pulumi-lang-yaml="`protocol`" pulumi-lang-java="`protocol`">`protocol`</span> is `-1` or <span pulumi-lang-nodejs="`all`" pulumi-lang-dotnet="`All`" pulumi-lang-go="`all`" pulumi-lang-python="`all`" pulumi-lang-yaml="`all`" pulumi-lang-java="`all`">`all`</span>, the <span pulumi-lang-nodejs="`fromPort`" pulumi-lang-dotnet="`FromPort`" pulumi-lang-go="`fromPort`" pulumi-lang-python="`from_port`" pulumi-lang-yaml="`fromPort`" pulumi-lang-java="`fromPort`">`from_port`</span> and <span pulumi-lang-nodejs="`toPort`" pulumi-lang-dotnet="`ToPort`" pulumi-lang-go="`toPort`" pulumi-lang-python="`to_port`" pulumi-lang-yaml="`toPort`" pulumi-lang-java="`toPort`">`to_port`</span> values will be ignored and the rule will apply to all ports.
  ///
  /// > **NOTE:** If the value of <span pulumi-lang-nodejs="`icmpType`" pulumi-lang-dotnet="`IcmpType`" pulumi-lang-go="`icmpType`" pulumi-lang-python="`icmp_type`" pulumi-lang-yaml="`icmpType`" pulumi-lang-java="`icmpType`">`icmp_type`</span> is `-1` (which results in a wildcard ICMP type), the <span pulumi-lang-nodejs="`icmpCode`" pulumi-lang-dotnet="`IcmpCode`" pulumi-lang-go="`icmpCode`" pulumi-lang-python="`icmp_code`" pulumi-lang-yaml="`icmpCode`" pulumi-lang-java="`icmpCode`">`icmp_code`</span> must also be set to `-1` (wildcard ICMP code).
  ///
  /// > Note: For more information on ICMP types and codes, see here: https://www.iana.org/assignments/icmp-parameters/icmp-parameters.xhtml
  final Input<int>? icmpCode;

  /// ICMP protocol: The ICMP type. Required if specifying ICMP for the protocolE.g., -1
  final Input<int>? icmpType;

  /// The IPv6 CIDR block to allow or deny.
  final Input<String>? ipv6CidrBlock;

  /// The ID of the network ACL.
  final Input<String> networkAclId;

  /// The protocol. A value of -1 means all protocols.
  final Input<String> protocol;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Indicates whether to allow or deny the traffic that matches the rule. Accepted values: <span pulumi-lang-nodejs="`allow`" pulumi-lang-dotnet="`Allow`" pulumi-lang-go="`allow`" pulumi-lang-python="`allow`" pulumi-lang-yaml="`allow`" pulumi-lang-java="`allow`">`allow`</span> | <span pulumi-lang-nodejs="`deny`" pulumi-lang-dotnet="`Deny`" pulumi-lang-go="`deny`" pulumi-lang-python="`deny`" pulumi-lang-yaml="`deny`" pulumi-lang-java="`deny`">`deny`</span>
  final Input<String> ruleAction;

  /// The rule number for the entry (for example, 100). ACL entries are processed in ascending order by rule number.
  final Input<int> ruleNumber;

  /// The to port to match.
  final Input<int>? toPort;

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
      cidrBlock: Input.asOptionalInput<String>(map['cidrBlock']),
      egress: Input.asOptionalInput<bool>(map['egress']),
      fromPort: Input.asOptionalInput<int>(map['fromPort']),
      icmpCode: Input.asOptionalInput<int>(map['icmpCode']),
      icmpType: Input.asOptionalInput<int>(map['icmpType']),
      ipv6CidrBlock: Input.asOptionalInput<String>(map['ipv6CidrBlock']),
      networkAclId: Input.asInput<String>(map['networkAclId']),
      protocol: Input.asInput<String>(map['protocol']),
      region: Input.asOptionalInput<String>(map['region']),
      ruleAction: Input.asInput<String>(map['ruleAction']),
      ruleNumber: Input.asInput<int>(map['ruleNumber']),
      toPort: Input.asOptionalInput<int>(map['toPort']),
    );
  }
}
