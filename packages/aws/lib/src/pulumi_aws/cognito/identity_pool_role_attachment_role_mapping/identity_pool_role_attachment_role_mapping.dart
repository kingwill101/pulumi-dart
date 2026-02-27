// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../identity_pool_role_attachment_role_mapping_mapping_rule/identity_pool_role_attachment_role_mapping_mapping_rule.dart';

class IdentityPoolRoleAttachmentRoleMapping {
  /// Specifies the action to be taken if either no rules match the claim value for the Rules type, or there is no cognito:preferred_role claim and there are multiple cognito:roles matches for the Token type. `Required` if you specify Token or Rules as the Type.
  final String? ambiguousRoleResolution;

  /// A string identifying the identity provider, for example, "graph.facebook.com" or "cognito-idp.us-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id". Depends on `cognito_identity_providers` set on `aws.cognito.IdentityPool` resource or a `aws.cognito.IdentityProvider` resource.
  final String identityProvider;

  /// The Rules Configuration to be used for mapping users to roles. You can specify up to 25 rules per identity provider. Rules are evaluated in order. The first one to match specifies the role.
  final List<IdentityPoolRoleAttachmentRoleMappingMappingRule>? mappingRules;

  /// The role mapping type.
  final String type;

  IdentityPoolRoleAttachmentRoleMapping({
    this.ambiguousRoleResolution,
    required this.identityProvider,
    this.mappingRules,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ambiguousRoleResolutionValue = ambiguousRoleResolution;
    if (ambiguousRoleResolutionValue != null) {
      map['ambiguousRoleResolution'] = ambiguousRoleResolutionValue;
    }
    map['identityProvider'] = identityProvider;
    final mappingRulesValue = mappingRules;
    if (mappingRulesValue != null) {
      map['mappingRules'] = pulumi.Input.encodeList<
          IdentityPoolRoleAttachmentRoleMappingMappingRule,
          Map<String, dynamic>>(mappingRulesValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory IdentityPoolRoleAttachmentRoleMapping.fromMap(
      Map<String, dynamic> map) {
    return IdentityPoolRoleAttachmentRoleMapping(
      ambiguousRoleResolution: map['ambiguousRoleResolution'] == null
          ? null
          : map['ambiguousRoleResolution'] as String,
      identityProvider: map['identityProvider'] as String,
      mappingRules: map['mappingRules'] == null
          ? null
          : pulumi.Input.decodeList<
                  IdentityPoolRoleAttachmentRoleMappingMappingRule>(
              map['mappingRules'],
              (value) =>
                  IdentityPoolRoleAttachmentRoleMappingMappingRule.fromMap(
                      (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
