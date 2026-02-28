// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_default_action_jwt_validation_additional_claim.dart';

class ListenerDefaultActionJwtValidation {
  /// Repeatable configuration block for additional claims to validate.
  final List<ListenerDefaultActionJwtValidationAdditionalClaim>?
      additionalClaims;

  /// Issuer of the JWT.
  final String issuer;

  /// JSON Web Key Set (JWKS) endpoint. This endpoint contains JSON Web Keys (JWK) that are used to validate signatures from the provider. This must be a full URL, including the HTTPS protocol, the domain, and the path.
  ///
  /// The following arguments are optional:
  final String jwksEndpoint;

  /// Creates a new [ListenerDefaultActionJwtValidation].
  /// [additionalClaims] Repeatable configuration block for additional claims to validate.
  /// [issuer] Issuer of the JWT.
  /// [jwksEndpoint] JSON Web Key Set (JWKS) endpoint. This endpoint contains JSON Web Keys (JWK) that are used to validate signatures from the provider. This must be a full URL, including the HTTPS protocol, the domain, and the path.
  ListenerDefaultActionJwtValidation({
    this.additionalClaims,
    required this.issuer,
    required this.jwksEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalClaimsValue = additionalClaims;
    if (additionalClaimsValue != null) {
      map['additionalClaims'] = pulumi.Input.encodeList<
              ListenerDefaultActionJwtValidationAdditionalClaim,
              Map<String, dynamic>>(
          additionalClaimsValue, (value) => value.toMap());
    }
    map['issuer'] = issuer;
    map['jwksEndpoint'] = jwksEndpoint;
    return map;
  }

  factory ListenerDefaultActionJwtValidation.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionJwtValidation(
      additionalClaims: map['additionalClaims'] == null
          ? null
          : pulumi.Input.decodeList<
                  ListenerDefaultActionJwtValidationAdditionalClaim>(
              map['additionalClaims'],
              (value) =>
                  ListenerDefaultActionJwtValidationAdditionalClaim.fromMap(
                      (value as Map).cast<String, dynamic>())),
      issuer: map['issuer'] as String,
      jwksEndpoint: map['jwksEndpoint'] as String,
    );
  }
}
