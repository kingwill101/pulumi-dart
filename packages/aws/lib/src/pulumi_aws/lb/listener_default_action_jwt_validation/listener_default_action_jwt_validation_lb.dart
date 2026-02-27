// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../listener_default_action_jwt_validation_additional_claim/listener_default_action_jwt_validation_additional_claim_lb.dart';

class ListenerDefaultActionJwtValidationLb {
  /// Repeatable configuration block for additional claims to validate.
  final List<ListenerDefaultActionJwtValidationAdditionalClaimLb>?
      additionalClaims;

  /// Issuer of the JWT.
  final String issuer;

  /// JSON Web Key Set (JWKS) endpoint. This endpoint contains JSON Web Keys (JWK) that are used to validate signatures from the provider. This must be a full URL, including the HTTPS protocol, the domain, and the path.
  ///
  /// The following arguments are optional:
  final String jwksEndpoint;

  ListenerDefaultActionJwtValidationLb({
    this.additionalClaims,
    required this.issuer,
    required this.jwksEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalClaimsValue = additionalClaims;
    if (additionalClaimsValue != null) {
      map['additionalClaims'] = pulumi.Input.encodeList<
              ListenerDefaultActionJwtValidationAdditionalClaimLb,
              Map<String, dynamic>>(
          additionalClaimsValue, (value) => value.toMap());
    }
    map['issuer'] = issuer;
    map['jwksEndpoint'] = jwksEndpoint;
    return map;
  }

  factory ListenerDefaultActionJwtValidationLb.fromMap(
      Map<String, dynamic> map) {
    return ListenerDefaultActionJwtValidationLb(
      additionalClaims: map['additionalClaims'] == null
          ? null
          : pulumi.Input.decodeList<
                  ListenerDefaultActionJwtValidationAdditionalClaimLb>(
              map['additionalClaims'],
              (value) =>
                  ListenerDefaultActionJwtValidationAdditionalClaimLb.fromMap(
                      (value as Map).cast<String, dynamic>())),
      issuer: map['issuer'] as String,
      jwksEndpoint: map['jwksEndpoint'] as String,
    );
  }
}
