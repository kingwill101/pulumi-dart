// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_action_jwt_validation_additional_claim.dart';

class ListenerRuleActionJwtValidation {
  /// Repeatable configuration block for additional claims to validate.
  final pulumi.Input<List<ListenerRuleActionJwtValidationAdditionalClaim>>? additionalClaims;
  /// Issuer of the JWT.
  final pulumi.Input<String> issuer;
  /// JSON Web Key Set (JWKS) endpoint. This endpoint contains JSON Web Keys (JWK) that are used to validate signatures from the provider. This must be a full URL, including the HTTPS protocol, the domain, and the path.
  final pulumi.Input<String> jwksEndpoint;

  /// Creates a new [ListenerRuleActionJwtValidation].
  /// [additionalClaims] Repeatable configuration block for additional claims to validate.
  /// [issuer] Issuer of the JWT.
  /// [jwksEndpoint] JSON Web Key Set (JWKS) endpoint. This endpoint contains JSON Web Keys (JWK) that are used to validate signatures from the provider. This must be a full URL, including the HTTPS protocol, the domain, and the path.
  ListenerRuleActionJwtValidation({
    this.additionalClaims,
    required this.issuer,
    required this.jwksEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalClaims': ?pulumi.Input.mapOptionalInputValue<List<ListenerRuleActionJwtValidationAdditionalClaim>, List<Map<String, dynamic>>>(additionalClaims, (value) => pulumi.Input.encodeList<ListenerRuleActionJwtValidationAdditionalClaim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'issuer': issuer,
      'jwksEndpoint': jwksEndpoint,
    };
  }

  factory ListenerRuleActionJwtValidation.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionJwtValidation(
      additionalClaims: map['additionalClaims'] == null ? null : (pulumi.Input.decodeList<ListenerRuleActionJwtValidationAdditionalClaim>(map['additionalClaims'], (value) => ListenerRuleActionJwtValidationAdditionalClaim.fromMap((value as Map).cast<String, dynamic>()))).input(),
      issuer: (map['issuer'] as String).input(),
      jwksEndpoint: (map['jwksEndpoint'] as String).input(),
    );
  }
}

