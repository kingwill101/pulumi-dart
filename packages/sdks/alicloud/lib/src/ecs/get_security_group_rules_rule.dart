// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecurityGroupRulesRule {
  /// The description of the rule.
  final pulumi.Input<String> description;
  /// Target IP address segment for egress authorization.
  final pulumi.Input<String> destCidrIp;
  /// Target security group id for ingress authorization.
  final pulumi.Input<String> destGroupId;
  /// Alibaba Cloud account of the target security group.
  final pulumi.Input<String> destGroupOwnerAccount;
  /// Authorization direction. Valid values are: `ingress` or `egress`.
  final pulumi.Input<String> direction;
  /// The IP protocol. Valid values are: `tcp`, `udp`, `icmp`, `gre` and `all`.
  final pulumi.Input<String> ipProtocol;
  /// Refers to the network type. Can be either `internet` or `intranet`. The default value is `internet`.
  final pulumi.Input<String> nicType;
  /// Authorization policy. Can be either `accept` or `drop`. The default value is `accept`.
  final pulumi.Input<String> policy;
  /// The range of port numbers.
  final pulumi.Input<String> portRange;
  /// Rule priority.
  final pulumi.Input<int> priority;
  /// Source IP address segment for ingress authorization.
  final pulumi.Input<String> sourceCidrIp;
  /// Source security group ID for ingress authorization.
  final pulumi.Input<String> sourceGroupId;
  /// Alibaba Cloud account of the source security group.
  final pulumi.Input<String> sourceGroupOwnerAccount;

  /// Creates a new [GetSecurityGroupRulesRule].
  /// [description] The description of the rule.
  /// [destCidrIp] Target IP address segment for egress authorization.
  /// [destGroupId] Target security group id for ingress authorization.
  /// [destGroupOwnerAccount] Alibaba Cloud account of the target security group.
  /// [direction] Authorization direction. Valid values are: `ingress` or `egress`.
  /// [ipProtocol] The IP protocol. Valid values are: `tcp`, `udp`, `icmp`, `gre` and `all`.
  /// [nicType] Refers to the network type. Can be either `internet` or `intranet`. The default value is `internet`.
  /// [policy] Authorization policy. Can be either `accept` or `drop`. The default value is `accept`.
  /// [portRange] The range of port numbers.
  /// [priority] Rule priority.
  /// [sourceCidrIp] Source IP address segment for ingress authorization.
  /// [sourceGroupId] Source security group ID for ingress authorization.
  /// [sourceGroupOwnerAccount] Alibaba Cloud account of the source security group.
  GetSecurityGroupRulesRule({
    required this.description,
    required this.destCidrIp,
    required this.destGroupId,
    required this.destGroupOwnerAccount,
    required this.direction,
    required this.ipProtocol,
    required this.nicType,
    required this.policy,
    required this.portRange,
    required this.priority,
    required this.sourceCidrIp,
    required this.sourceGroupId,
    required this.sourceGroupOwnerAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'destCidrIp': destCidrIp,
      'destGroupId': destGroupId,
      'destGroupOwnerAccount': destGroupOwnerAccount,
      'direction': direction,
      'ipProtocol': ipProtocol,
      'nicType': nicType,
      'policy': policy,
      'portRange': portRange,
      'priority': priority,
      'sourceCidrIp': sourceCidrIp,
      'sourceGroupId': sourceGroupId,
      'sourceGroupOwnerAccount': sourceGroupOwnerAccount,
    };
  }

  factory GetSecurityGroupRulesRule.fromMap(Map<String, dynamic> map) {
    return GetSecurityGroupRulesRule(
      description: pulumi.Input.fromValue(map['description'] as String),
      destCidrIp: pulumi.Input.fromValue(map['destCidrIp'] as String),
      destGroupId: pulumi.Input.fromValue(map['destGroupId'] as String),
      destGroupOwnerAccount: pulumi.Input.fromValue(map['destGroupOwnerAccount'] as String),
      direction: pulumi.Input.fromValue(map['direction'] as String),
      ipProtocol: pulumi.Input.fromValue(map['ipProtocol'] as String),
      nicType: pulumi.Input.fromValue(map['nicType'] as String),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      portRange: pulumi.Input.fromValue(map['portRange'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      sourceCidrIp: pulumi.Input.fromValue(map['sourceCidrIp'] as String),
      sourceGroupId: pulumi.Input.fromValue(map['sourceGroupId'] as String),
      sourceGroupOwnerAccount: pulumi.Input.fromValue(map['sourceGroupOwnerAccount'] as String),
    );
  }
}

