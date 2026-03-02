// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_rule_action_jwt_validation_additional_claim.dart';

class GetListenerRuleActionJwtValidation {
  /// Additional claims to validate.
  final pulumi.Input<List<GetListenerRuleActionJwtValidationAdditionalClaim>>? additionalClaims;
  /// Issuer of the JWT.
  final pulumi.Input<String> issuer;
  /// JSON Web Key Set (JWKS) endpoint.
  final pulumi.Input<String> jwksEndpoint;

  /// Creates a new [GetListenerRuleActionJwtValidation].
  /// [additionalClaims] Additional claims to validate.
  /// [issuer] Issuer of the JWT.
  /// [jwksEndpoint] JSON Web Key Set (JWKS) endpoint.
  GetListenerRuleActionJwtValidation({
    this.additionalClaims,
    required this.issuer,
    required this.jwksEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalClaims': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleActionJwtValidationAdditionalClaim>, List<Map<String, dynamic>>>(additionalClaims, (value) => pulumi.Input.encodeList<GetListenerRuleActionJwtValidationAdditionalClaim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'issuer': issuer,
      'jwksEndpoint': jwksEndpoint,
    };
  }

  factory GetListenerRuleActionJwtValidation.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleActionJwtValidation(
      additionalClaims: map['additionalClaims'] == null ? null : ((pulumi.Input.decodeList<GetListenerRuleActionJwtValidationAdditionalClaim>(map['additionalClaims']!, (value) => GetListenerRuleActionJwtValidationAdditionalClaim.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      issuer: (map['issuer'] as String).input(),
      jwksEndpoint: (map['jwksEndpoint'] as String).input(),
    );
  }
}

