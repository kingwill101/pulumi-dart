// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jwtauthenticator_claim_mappings_response.dart';
import 'jwtauthenticator_issuer_response.dart';
import 'jwtauthenticator_validation_rule_response.dart';

/// The properties of JWTAuthenticator. For details on how to configure the properties of a JWT authenticator, please refer to the Kubernetes documentation: https://kubernetes.io/docs/reference/access-authn-authz/authentication/#using-authentication-configuration. Please note that not all fields available in the Kubernetes documentation are supported by AKS. For troubleshooting, please see https://aka.ms/aks-external-issuers-docs.
class JWTAuthenticatorPropertiesResponse {
  /// The mappings that define how user attributes are extracted from the token claims.
  final pulumi.Input<JWTAuthenticatorClaimMappingsResponse> claimMappings;
  /// The rules that are applied to validate token claims to authenticate users. All the expressions must evaluate to true for validation to succeed.
  final pulumi.Input<List<JWTAuthenticatorValidationRuleResponse>?>? claimValidationRules;
  /// The JWT OIDC issuer details.
  final pulumi.Input<JWTAuthenticatorIssuerResponse> issuer;
  /// The current provisioning state of the JWT authenticator.
  final pulumi.Input<String> provisioningState;
  /// The rules that are applied to the mapped user before completing authentication. All the expressions must evaluate to true for validation to succeed.
  final pulumi.Input<List<JWTAuthenticatorValidationRuleResponse>?>? userValidationRules;

  /// Creates a new [JWTAuthenticatorPropertiesResponse].
  /// [claimMappings] The mappings that define how user attributes are extracted from the token claims.
  /// [claimValidationRules] The rules that are applied to validate token claims to authenticate users. All the expressions must evaluate to true for validation to succeed.
  /// [issuer] The JWT OIDC issuer details.
  /// [provisioningState] The current provisioning state of the JWT authenticator.
  /// [userValidationRules] The rules that are applied to the mapped user before completing authentication. All the expressions must evaluate to true for validation to succeed.
  const JWTAuthenticatorPropertiesResponse({
    required this.claimMappings,
    this.claimValidationRules,
    required this.issuer,
    required this.provisioningState,
    this.userValidationRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimMappings': pulumi.Input.mapInputValue<JWTAuthenticatorClaimMappingsResponse, Map<String, dynamic>>(claimMappings, (value) => value.toMap()),
      'claimValidationRules': ?pulumi.Input.mapOptionalInputValue<List<JWTAuthenticatorValidationRuleResponse>, List<Map<String, dynamic>>>(claimValidationRules, (value) => pulumi.Input.encodeList<JWTAuthenticatorValidationRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'issuer': pulumi.Input.mapInputValue<JWTAuthenticatorIssuerResponse, Map<String, dynamic>>(issuer, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'userValidationRules': ?pulumi.Input.mapOptionalInputValue<List<JWTAuthenticatorValidationRuleResponse>, List<Map<String, dynamic>>>(userValidationRules, (value) => pulumi.Input.encodeList<JWTAuthenticatorValidationRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JWTAuthenticatorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return JWTAuthenticatorPropertiesResponse(
      claimMappings: pulumi.Input.fromValue(JWTAuthenticatorClaimMappingsResponse.fromMap((map['claimMappings']! as Map).cast<String, dynamic>())),
      claimValidationRules: (() { final guardedValue = map['claimValidationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JWTAuthenticatorValidationRuleResponse>(guardedValue, (value) => JWTAuthenticatorValidationRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      issuer: pulumi.Input.fromValue(JWTAuthenticatorIssuerResponse.fromMap((map['issuer']! as Map).cast<String, dynamic>())),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      userValidationRules: (() { final guardedValue = map['userValidationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<JWTAuthenticatorValidationRuleResponse>(guardedValue, (value) => JWTAuthenticatorValidationRuleResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
