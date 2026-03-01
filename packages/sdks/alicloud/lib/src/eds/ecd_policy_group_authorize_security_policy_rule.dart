// ignore_for_file: unused_element, unnecessary_cast


class EcdPolicyGroupAuthorizeSecurityPolicyRule {
  /// The cidrip of security rules.
  final String? cidrIp;
  /// The description of security rules.
  final String? description;
  /// The ip protocol of security rules.
  final String? ipProtocol;
  /// The policy of security rules.
  final String? policy;
  /// The port range of security rules.
  final String? portRange;
  /// The priority of security rules.
  final String? priority;
  /// The type of security rules.
  final String? type;

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
      cidrIp: map['cidrIp'] == null ? null : map['cidrIp'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      ipProtocol: map['ipProtocol'] == null ? null : map['ipProtocol'] as String,
      policy: map['policy'] == null ? null : map['policy'] as String,
      portRange: map['portRange'] == null ? null : map['portRange'] as String,
      priority: map['priority'] == null ? null : map['priority'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

