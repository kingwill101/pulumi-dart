// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_pool_role_attachment_role_mapping_mapping_rule.dart';

class IdentityPoolRoleAttachmentRoleMapping {
  /// Specifies the action to be taken if either no rules match the claim value for the Rules type, or there is no cognito:preferred_role claim and there are multiple cognito:roles matches for the Token type. `Required` if you specify Token or Rules as the Type.
  final pulumi.Input<String?>? ambiguousRoleResolution;
  /// A string identifying the identity provider, for example, "graph.facebook.com" or "cognito-idp.us-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id". Depends on `cognitoIdentityProviders` set on `aws.cognito.IdentityPool` resource or a `aws.cognito.IdentityProvider` resource.
  final pulumi.Input<String> identityProvider;
  /// The Rules Configuration to be used for mapping users to roles. You can specify up to 25 rules per identity provider. Rules are evaluated in order. The first one to match specifies the role.
  final pulumi.Input<List<IdentityPoolRoleAttachmentRoleMappingMappingRule>?>? mappingRules;
  /// The role mapping type.
  final pulumi.Input<String> type;

  /// Creates a new [IdentityPoolRoleAttachmentRoleMapping].
  /// [ambiguousRoleResolution] Specifies the action to be taken if either no rules match the claim value for the Rules type, or there is no cognito:preferred_role claim and there are multiple cognito:roles matches for the Token type. `Required` if you specify Token or Rules as the Type.
  /// [identityProvider] A string identifying the identity provider, for example, "graph.facebook.com" or "cognito-idp.us-east-1.amazonaws.com/us-east-1_abcdefghi:app_client_id". Depends on `cognitoIdentityProviders` set on `aws.cognito.IdentityPool` resource or a `aws.cognito.IdentityProvider` resource.
  /// [mappingRules] The Rules Configuration to be used for mapping users to roles. You can specify up to 25 rules per identity provider. Rules are evaluated in order. The first one to match specifies the role.
  /// [type] The role mapping type.
  const IdentityPoolRoleAttachmentRoleMapping({
    this.ambiguousRoleResolution,
    required this.identityProvider,
    this.mappingRules,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ambiguousRoleResolution': ?ambiguousRoleResolution,
      'identityProvider': identityProvider,
      'mappingRules': ?pulumi.Input.mapOptionalInputValue<List<IdentityPoolRoleAttachmentRoleMappingMappingRule>, List<Map<String, dynamic>>>(mappingRules, (value) => pulumi.Input.encodeList<IdentityPoolRoleAttachmentRoleMappingMappingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory IdentityPoolRoleAttachmentRoleMapping.fromMap(Map<String, dynamic> map) {
    return IdentityPoolRoleAttachmentRoleMapping(
      ambiguousRoleResolution: (() { final guardedValue = map['ambiguousRoleResolution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identityProvider: pulumi.Input.fromValue(map['identityProvider'] as String),
      mappingRules: (() { final guardedValue = map['mappingRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IdentityPoolRoleAttachmentRoleMappingMappingRule>(guardedValue, (value) => IdentityPoolRoleAttachmentRoleMappingMappingRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
