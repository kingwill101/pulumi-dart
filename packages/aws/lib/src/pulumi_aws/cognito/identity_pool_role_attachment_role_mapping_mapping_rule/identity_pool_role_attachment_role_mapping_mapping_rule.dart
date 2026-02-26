// ignore_for_file: unused_element, unnecessary_cast

class IdentityPoolRoleAttachmentRoleMappingMappingRule {
  /// The claim name that must be present in the token, for example, "isAdmin" or "paid".
  final String claim;

  /// The match condition that specifies how closely the claim value in the IdP token must match Value.
  final String matchType;

  /// The role ARN.
  final String roleArn;

  /// A brief string that the claim must match, for example, "paid" or "yes".
  final String value;

  IdentityPoolRoleAttachmentRoleMappingMappingRule({
    required this.claim,
    required this.matchType,
    required this.roleArn,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['claim'] = claim;
    map['matchType'] = matchType;
    map['roleArn'] = roleArn;
    map['value'] = value;
    return map;
  }

  factory IdentityPoolRoleAttachmentRoleMappingMappingRule.fromMap(
      Map<String, dynamic> map) {
    return IdentityPoolRoleAttachmentRoleMappingMappingRule(
      claim: map['claim'] as String,
      matchType: map['matchType'] as String,
      roleArn: map['roleArn'] as String,
      value: map['value'] as String,
    );
  }
}
