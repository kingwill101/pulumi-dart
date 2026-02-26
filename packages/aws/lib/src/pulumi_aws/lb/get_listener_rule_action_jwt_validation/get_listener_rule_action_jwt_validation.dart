// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_listener_rule_action_jwt_validation_additional_claim/get_listener_rule_action_jwt_validation_additional_claim.dart';

class GetListenerRuleActionJwtValidation {
  /// Additional claims to validate.
  final List<GetListenerRuleActionJwtValidationAdditionalClaim>?
      additionalClaims;

  /// Issuer of the JWT.
  final String issuer;

  /// JSON Web Key Set (JWKS) endpoint.
  final String jwksEndpoint;

  GetListenerRuleActionJwtValidation({
    this.additionalClaims,
    required this.issuer,
    required this.jwksEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalClaimsValue = additionalClaims;
    if (additionalClaimsValue != null) {
      map['additionalClaims'] = Input.encodeList<
              GetListenerRuleActionJwtValidationAdditionalClaim,
              Map<String, dynamic>>(
          additionalClaimsValue, (value) => value.toMap());
    }
    map['issuer'] = issuer;
    map['jwksEndpoint'] = jwksEndpoint;
    return map;
  }

  factory GetListenerRuleActionJwtValidation.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleActionJwtValidation(
      additionalClaims: map['additionalClaims'] == null
          ? null
          : Input.decodeList<GetListenerRuleActionJwtValidationAdditionalClaim>(
              map['additionalClaims'],
              (value) =>
                  GetListenerRuleActionJwtValidationAdditionalClaim.fromMap(
                      (value as Map).cast<String, dynamic>())),
      issuer: map['issuer'] as String,
      jwksEndpoint: map['jwksEndpoint'] as String,
    );
  }
}
