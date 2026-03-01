// ignore_for_file: unused_element, unnecessary_cast


class EcdPolicyGroupAuthorizeAccessPolicyRule {
  /// The cidrip of authorize access rule.
  final String? cidrIp;
  /// The description of authorize access rule.
  final String? description;

  /// Creates a new [EcdPolicyGroupAuthorizeAccessPolicyRule].
  /// [cidrIp] The cidrip of authorize access rule.
  /// [description] The description of authorize access rule.
  EcdPolicyGroupAuthorizeAccessPolicyRule({
    this.cidrIp,
    this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrIp': ?cidrIp,
      'description': ?description,
    };
  }

  factory EcdPolicyGroupAuthorizeAccessPolicyRule.fromMap(Map<String, dynamic> map) {
    return EcdPolicyGroupAuthorizeAccessPolicyRule(
      cidrIp: map['cidrIp'] == null ? null : map['cidrIp'] as String,
      description: map['description'] == null ? null : map['description'] as String,
    );
  }
}

