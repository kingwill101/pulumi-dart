// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../listener_rule_action_jwt_validation_additional_claim/listener_rule_action_jwt_validation_additional_claim2.dart';

class ListenerRuleActionJwtValidation2 {
  /// Repeatable configuration block for additional claims to validate.
  final List<ListenerRuleActionJwtValidationAdditionalClaim2>? additionalClaims;

  /// Issuer of the JWT.
  final String issuer;

  /// JSON Web Key Set (JWKS) endpoint. This endpoint contains JSON Web Keys (JWK) that are used to validate signatures from the provider. This must be a full URL, including the HTTPS protocol, the domain, and the path.
  final String jwksEndpoint;

  ListenerRuleActionJwtValidation2({
    this.additionalClaims,
    required this.issuer,
    required this.jwksEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalClaimsValue = additionalClaims;
    if (additionalClaimsValue != null) {
      map['additionalClaims'] = Input.encodeList<
              ListenerRuleActionJwtValidationAdditionalClaim2,
              Map<String, dynamic>>(
          additionalClaimsValue, (value) => value.toMap());
    }
    map['issuer'] = issuer;
    map['jwksEndpoint'] = jwksEndpoint;
    return map;
  }

  factory ListenerRuleActionJwtValidation2.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionJwtValidation2(
      additionalClaims: map['additionalClaims'] == null
          ? null
          : Input.decodeList<ListenerRuleActionJwtValidationAdditionalClaim2>(
              map['additionalClaims'],
              (value) =>
                  ListenerRuleActionJwtValidationAdditionalClaim2.fromMap(
                      (value as Map).cast<String, dynamic>())),
      issuer: map['issuer'] as String,
      jwksEndpoint: map['jwksEndpoint'] as String,
    );
  }
}
