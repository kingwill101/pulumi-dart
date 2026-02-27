// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../listener_rule_action_jwt_validation_additional_claim/listener_rule_action_jwt_validation_additional_claim_lb.dart';

class ListenerRuleActionJwtValidationLb {
  /// Repeatable configuration block for additional claims to validate.
  final List<ListenerRuleActionJwtValidationAdditionalClaimLb>?
      additionalClaims;

  /// Issuer of the JWT.
  final String issuer;

  /// JSON Web Key Set (JWKS) endpoint. This endpoint contains JSON Web Keys (JWK) that are used to validate signatures from the provider. This must be a full URL, including the HTTPS protocol, the domain, and the path.
  final String jwksEndpoint;

  ListenerRuleActionJwtValidationLb({
    this.additionalClaims,
    required this.issuer,
    required this.jwksEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalClaimsValue = additionalClaims;
    if (additionalClaimsValue != null) {
      map['additionalClaims'] = pulumi.Input.encodeList<
              ListenerRuleActionJwtValidationAdditionalClaimLb,
              Map<String, dynamic>>(
          additionalClaimsValue, (value) => value.toMap());
    }
    map['issuer'] = issuer;
    map['jwksEndpoint'] = jwksEndpoint;
    return map;
  }

  factory ListenerRuleActionJwtValidationLb.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionJwtValidationLb(
      additionalClaims: map['additionalClaims'] == null
          ? null
          : pulumi.Input.decodeList<
                  ListenerRuleActionJwtValidationAdditionalClaimLb>(
              map['additionalClaims'],
              (value) =>
                  ListenerRuleActionJwtValidationAdditionalClaimLb.fromMap(
                      (value as Map).cast<String, dynamic>())),
      issuer: map['issuer'] as String,
      jwksEndpoint: map['jwksEndpoint'] as String,
    );
  }
}
