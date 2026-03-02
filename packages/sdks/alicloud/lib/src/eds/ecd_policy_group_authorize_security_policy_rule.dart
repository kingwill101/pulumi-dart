// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EcdPolicyGroupAuthorizeSecurityPolicyRule {
  /// The cidrip of security rules.
  final pulumi.Input<String>? cidrIp;
  /// The description of security rules.
  final pulumi.Input<String>? description;
  /// The ip protocol of security rules.
  final pulumi.Input<String>? ipProtocol;
  /// The policy of security rules.
  final pulumi.Input<String>? policy;
  /// The port range of security rules.
  final pulumi.Input<String>? portRange;
  /// The priority of security rules.
  final pulumi.Input<String>? priority;
  /// The type of security rules.
  final pulumi.Input<String>? type;

  /// Creates a new [EcdPolicyGroupAuthorizeSecurityPolicyRule].
  /// [cidrIp] The cidrip of security rules.
  /// [description] The description of security rules.
  /// [ipProtocol] The ip protocol of security rules.
  /// [policy] The policy of security rules.
  /// [portRange] The port range of security rules.
  /// [priority] The priority of security rules.
  /// [type] The type of security rules.
  EcdPolicyGroupAuthorizeSecurityPolicyRule({
    this.cidrIp,
    this.description,
    this.ipProtocol,
    this.policy,
    this.portRange,
    this.priority,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrIp': ?cidrIp,
      'description': ?description,
      'ipProtocol': ?ipProtocol,
      'policy': ?policy,
      'portRange': ?portRange,
      'priority': ?priority,
      'type': ?type,
    };
  }

  factory EcdPolicyGroupAuthorizeSecurityPolicyRule.fromMap(Map<String, dynamic> map) {
    return EcdPolicyGroupAuthorizeSecurityPolicyRule(
      cidrIp: map['cidrIp'] == null ? null : (map['cidrIp'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      ipProtocol: map['ipProtocol'] == null ? null : (map['ipProtocol'] as String).input(),
      policy: map['policy'] == null ? null : (map['policy'] as String).input(),
      portRange: map['portRange'] == null ? null : (map['portRange'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

