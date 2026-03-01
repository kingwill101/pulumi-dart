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
    pulumi.Output<String>? cidrBlock,
    pulumi.Output<bool>? egress,
    pulumi.Output<int>? fromPort,
    pulumi.Output<int>? icmpCode,
    pulumi.Output<int>? icmpType,
    pulumi.Output<String>? ipv6CidrBlock,
    pulumi.Output<String>? networkAclId,
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? region,
    pulumi.Output<String>? ruleAction,
    pulumi.Output<int>? ruleNumber,
    pulumi.Output<int>? toPort,
  }) :
      cidrBlock = pulumi.Input.asOptionalInput<String>(cidrBlock),
      egress = pulumi.Input.asOptionalInput<bool>(egress),
      fromPort = pulumi.Input.asOptionalInput<int>(fromPort),
      icmpCode = pulumi.Input.asOptionalInput<int>(icmpCode),
      icmpType = pulumi.Input.asOptionalInput<int>(icmpType),
      ipv6CidrBlock = pulumi.Input.asOptionalInput<String>(ipv6CidrBlock),
      networkAclId = pulumi.Input.asOptionalInput<String>(networkAclId),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      ruleAction = pulumi.Input.asOptionalInput<String>(ruleAction),
      ruleNumber = pulumi.Input.asOptionalInput<int>(ruleNumber),
      toPort = pulumi.Input.asOptionalInput<int>(toPort);

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
      cidrBlock: map['cidrBlock'] == null ? null : pulumi.Output.create<String>(map['cidrBlock'] as String),
      egress: map['egress'] == null ? null : pulumi.Output.create<bool>(map['egress'] as bool),
      fromPort: map['fromPort'] == null ? null : pulumi.Output.create<int>(map['fromPort'] as int),
      icmpCode: map['icmpCode'] == null ? null : pulumi.Output.create<int>(map['icmpCode'] as int),
      icmpType: map['icmpType'] == null ? null : pulumi.Output.create<int>(map['icmpType'] as int),
      ipv6CidrBlock: map['ipv6CidrBlock'] == null ? null : pulumi.Output.create<String>(map['ipv6CidrBlock'] as String),
      networkAclId: map['networkAclId'] == null ? null : pulumi.Output.create<String>(map['networkAclId'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      ruleAction: map['ruleAction'] == null ? null : pulumi.Output.create<String>(map['ruleAction'] as String),
      ruleNumber: map['ruleNumber'] == null ? null : pulumi.Output.create<int>(map['ruleNumber'] as int),
      toPort: map['toPort'] == null ? null : pulumi.Output.create<int>(map['toPort'] as int),
    );
  }
}

