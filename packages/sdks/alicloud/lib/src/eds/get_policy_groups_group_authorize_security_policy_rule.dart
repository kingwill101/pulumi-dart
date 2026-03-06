// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPolicyGroupsGroupAuthorizeSecurityPolicyRule {
  /// The cidrip of security rules.
  final pulumi.Input<String> cidrIp;
  /// The description of security rules.
  final pulumi.Input<String> description;
  /// The ip protocol of security rules.
  final pulumi.Input<String> ipProtocol;
  /// The policy of security rules.
  final pulumi.Input<String> policy;
  /// The port range of security rules.
  final pulumi.Input<String> portRange;
  /// The priority of security rules.
  final pulumi.Input<String> priority;
  /// The type of security rules.
  final pulumi.Input<String> type;

  /// Creates a new [GetPolicyGroupsGroupAuthorizeSecurityPolicyRule].
  /// [cidrIp] The cidrip of security rules.
  /// [description] The description of security rules.
  /// [ipProtocol] The ip protocol of security rules.
  /// [policy] The policy of security rules.
  /// [portRange] The port range of security rules.
  /// [priority] The priority of security rules.
  /// [type] The type of security rules.
  const GetPolicyGroupsGroupAuthorizeSecurityPolicyRule({
    required this.cidrIp,
    required this.description,
    required this.ipProtocol,
    required this.policy,
    required this.portRange,
    required this.priority,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrIp': cidrIp,
      'description': description,
      'ipProtocol': ipProtocol,
      'policy': policy,
      'portRange': portRange,
      'priority': priority,
      'type': type,
    };
  }

  factory GetPolicyGroupsGroupAuthorizeSecurityPolicyRule.fromMap(Map<String, dynamic> map) {
    return GetPolicyGroupsGroupAuthorizeSecurityPolicyRule(
      cidrIp: pulumi.Input.fromValue(map['cidrIp'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      ipProtocol: pulumi.Input.fromValue(map['ipProtocol'] as String),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      portRange: pulumi.Input.fromValue(map['portRange'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

