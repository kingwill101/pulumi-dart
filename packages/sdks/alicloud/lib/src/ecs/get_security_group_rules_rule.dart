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
      description: (map['description'] as String).input(),
      destCidrIp: (map['destCidrIp'] as String).input(),
      destGroupId: (map['destGroupId'] as String).input(),
      destGroupOwnerAccount: (map['destGroupOwnerAccount'] as String).input(),
      direction: (map['direction'] as String).input(),
      ipProtocol: (map['ipProtocol'] as String).input(),
      nicType: (map['nicType'] as String).input(),
      policy: (map['policy'] as String).input(),
      portRange: (map['portRange'] as String).input(),
      priority: (map['priority'] as int).input(),
      sourceCidrIp: (map['sourceCidrIp'] as String).input(),
      sourceGroupId: (map['sourceGroupId'] as String).input(),
      sourceGroupOwnerAccount: (map['sourceGroupOwnerAccount'] as String).input(),
    );
  }
}

