// ignore_for_file: unused_element, unnecessary_cast


class GetPolicyGroupsGroupAuthorizeAccessPolicyRule {
  /// The cidrip of authorize access rule..
  final String cidrIp;
  /// The description of authorize access rule.
  final String description;

  /// Creates a new [GetPolicyGroupsGroupAuthorizeAccessPolicyRule].
  /// [cidrIp] The cidrip of authorize access rule..
  /// [description] The description of authorize access rule.
  GetPolicyGroupsGroupAuthorizeAccessPolicyRule({
    required this.cidrIp,
    required this.description,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrIp': cidrIp,
      'description': description,
    };
  }

  factory GetPolicyGroupsGroupAuthorizeAccessPolicyRule.fromMap(Map<String, dynamic> map) {
    return GetPolicyGroupsGroupAuthorizeAccessPolicyRule(
      cidrIp: map['cidrIp'] as String,
      description: map['description'] as String,
    );
  }
}

