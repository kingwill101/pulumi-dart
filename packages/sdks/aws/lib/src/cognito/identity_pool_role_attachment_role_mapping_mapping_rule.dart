// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IdentityPoolRoleAttachmentRoleMappingMappingRule {
  /// The claim name that must be present in the token, for example, "isAdmin" or "paid".
  final pulumi.Input<String> claim;
  /// The match condition that specifies how closely the claim value in the IdP token must match Value.
  final pulumi.Input<String> matchType;
  /// The role ARN.
  final pulumi.Input<String> roleArn;
  /// A brief string that the claim must match, for example, "paid" or "yes".
  final pulumi.Input<String> value;

  /// Creates a new [IdentityPoolRoleAttachmentRoleMappingMappingRule].
  /// [claim] The claim name that must be present in the token, for example, "isAdmin" or "paid".
  /// [matchType] The match condition that specifies how closely the claim value in the IdP token must match Value.
  /// [roleArn] The role ARN.
  /// [value] A brief string that the claim must match, for example, "paid" or "yes".
  IdentityPoolRoleAttachmentRoleMappingMappingRule({
    required this.claim,
    required this.matchType,
    required this.roleArn,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claim': claim,
      'matchType': matchType,
      'roleArn': roleArn,
      'value': value,
    };
  }

  factory IdentityPoolRoleAttachmentRoleMappingMappingRule.fromMap(Map<String, dynamic> map) {
    return IdentityPoolRoleAttachmentRoleMappingMappingRule(
      claim: pulumi.Input.fromValue(map['claim'] as String),
      matchType: pulumi.Input.fromValue(map['matchType'] as String),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

