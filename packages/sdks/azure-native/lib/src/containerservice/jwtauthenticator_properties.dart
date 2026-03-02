// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jwtauthenticator_claim_mappings.dart';
import 'jwtauthenticator_issuer.dart';
import 'jwtauthenticator_validation_rule.dart';

/// The properties of JWTAuthenticator. For details on how to configure the properties of a JWT authenticator, please refer to the Kubernetes documentation: https://kubernetes.io/docs/reference/access-authn-authz/authentication/#using-authentication-configuration. Please note that not all fields available in the Kubernetes documentation are supported by AKS. For troubleshooting, please see https://aka.ms/aks-external-issuers-docs.
class JWTAuthenticatorProperties {
  /// The mappings that define how user attributes are extracted from the token claims.
  final pulumi.Input<JWTAuthenticatorClaimMappings> claimMappings;
  /// The rules that are applied to validate token claims to authenticate users. All the expressions must evaluate to true for validation to succeed.
  final pulumi.Input<List<JWTAuthenticatorValidationRule>>? claimValidationRules;
  /// The JWT OIDC issuer details.
  final pulumi.Input<JWTAuthenticatorIssuer> issuer;
  /// The rules that are applied to the mapped user before completing authentication. All the expressions must evaluate to true for validation to succeed.
  final pulumi.Input<List<JWTAuthenticatorValidationRule>>? userValidationRules;

  /// Creates a new [JWTAuthenticatorProperties].
  /// [claimMappings] The mappings that define how user attributes are extracted from the token claims.
  /// [claimValidationRules] The rules that are applied to validate token claims to authenticate users. All the expressions must evaluate to true for validation to succeed.
  /// [issuer] The JWT OIDC issuer details.
  /// [userValidationRules] The rules that are applied to the mapped user before completing authentication. All the expressions must evaluate to true for validation to succeed.
  JWTAuthenticatorProperties({
    required this.claimMappings,
    this.claimValidationRules,
    required this.issuer,
    this.userValidationRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'claimMappings': pulumi.Input.mapInputValue<JWTAuthenticatorClaimMappings, Map<String, dynamic>>(claimMappings, (value) => value.toMap()),
      'claimValidationRules': ?pulumi.Input.mapOptionalInputValue<List<JWTAuthenticatorValidationRule>, List<Map<String, dynamic>>>(claimValidationRules, (value) => pulumi.Input.encodeList<JWTAuthenticatorValidationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'issuer': pulumi.Input.mapInputValue<JWTAuthenticatorIssuer, Map<String, dynamic>>(issuer, (value) => value.toMap()),
      'userValidationRules': ?pulumi.Input.mapOptionalInputValue<List<JWTAuthenticatorValidationRule>, List<Map<String, dynamic>>>(userValidationRules, (value) => pulumi.Input.encodeList<JWTAuthenticatorValidationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JWTAuthenticatorProperties.fromMap(Map<String, dynamic> map) {
    return JWTAuthenticatorProperties(
      claimMappings: (JWTAuthenticatorClaimMappings.fromMap((map['claimMappings'] as Map).cast<String, dynamic>())).input(),
      claimValidationRules: map['claimValidationRules'] == null ? null : (pulumi.Input.decodeList<JWTAuthenticatorValidationRule>(map['claimValidationRules']!, (value) => JWTAuthenticatorValidationRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      issuer: (JWTAuthenticatorIssuer.fromMap((map['issuer'] as Map).cast<String, dynamic>())).input(),
      userValidationRules: map['userValidationRules'] == null ? null : (pulumi.Input.decodeList<JWTAuthenticatorValidationRule>(map['userValidationRules']!, (value) => JWTAuthenticatorValidationRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

