// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NetworkAclRule resources.
class NetworkAclRuleState {
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
  final pulumi.Input<String>? networkAclId;
  /// The protocol. A value of -1 means all protocols.
  final pulumi.Input<String>? protocol;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Indicates whether to allow or deny the traffic that matches the rule. Accepted values: `allow` | `deny`
  final pulumi.Input<String>? ruleAction;
  /// The rule number for the entry (for example, 100). ACL entries are processed in ascending order by rule number.
  final pulumi.Input<int>? ruleNumber;
  /// The to port to match.
  final pulumi.Input<int>? toPort;

  /// Creates a new [NetworkAclRuleState].
  /// [cidrBlock] The network range to allow or deny, in CIDR notation (for example 172.16.0.0/24 ).
  /// [egress] Indicates whether this is an egress rule (rule is applied to traffic leaving the subnet). Default `false`.
  /// [fromPort] The from port to match.
  /// [icmpCode] ICMP protocol: The ICMP code. Required if specifying ICMP for the protocolE.g., -1
  /// [icmpType] ICMP protocol: The ICMP type. Required if specifying ICMP for the protocolE.g., -1
  /// [ipv6CidrBlock] The IPv6 CIDR block to allow or deny.
  /// [networkAclId] The ID of the network ACL.
  /// [protocol] The protocol. A value of -1 means all protocols.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [ruleAction] Indicates whether to allow or deny the traffic that matches the rule. Accepted values: `allow` | `deny`
  /// [ruleNumber] The rule number for the entry (for example, 100). ACL entries are processed in ascending order by rule number.
  /// [toPort] The to port to match.
  NetworkAclRuleState({
    this.cidrBlock,
    this.egress,
    this.fromPort,
    this.icmpCode,
    this.icmpType,
    this.ipv6CidrBlock,
    this.networkAclId,
    this.protocol,
    this.region,
    this.ruleAction,
    this.ruleNumber,
    this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': ?cidrBlock,
      'egress': ?egress,
      'fromPort': ?fromPort,
      'icmpCode': ?icmpCode,
      'icmpType': ?icmpType,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'networkAclId': ?networkAclId,
      'protocol': ?protocol,
      'region': ?region,
      'ruleAction': ?ruleAction,
      'ruleNumber': ?ruleNumber,
      'toPort': ?toPort,
    };
  }

  factory NetworkAclRuleState.fromMap(Map<String, dynamic> map) {
    return NetworkAclRuleState(
      cidrBlock: map['cidrBlock'] == null ? null : ((map['cidrBlock'] as String).input()).input(),
      egress: map['egress'] == null ? null : ((map['egress'] as bool).input()).input(),
      fromPort: map['fromPort'] == null ? null : ((map['fromPort'] as int).input()).input(),
      icmpCode: map['icmpCode'] == null ? null : ((map['icmpCode'] as int).input()).input(),
      icmpType: map['icmpType'] == null ? null : ((map['icmpType'] as int).input()).input(),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : ((map['ipv6CidrBlock'] as String).input()).input(),
      networkAclId: map['networkAclId'] == null ? null : ((map['networkAclId'] as String).input()).input(),
      protocol: map['protocol'] == null ? null : ((map['protocol'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      ruleAction: map['ruleAction'] == null ? null : ((map['ruleAction'] as String).input()).input(),
      ruleNumber: map['ruleNumber'] == null ? null : ((map['ruleNumber'] as int).input()).input(),
      toPort: map['toPort'] == null ? null : ((map['toPort'] as int).input()).input(),
    );
  }
}

