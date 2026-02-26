// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../listener_default_action_jwt_validation_additional_claim/listener_default_action_jwt_validation_additional_claim2.dart';

class ListenerDefaultActionJwtValidation2 {
  /// Repeatable configuration block for additional claims to validate.
  final List<ListenerDefaultActionJwtValidationAdditionalClaim2>?
      additionalClaims;

  /// Issuer of the JWT.
  final String issuer;

  /// JSON Web Key Set (JWKS) endpoint. This endpoint contains JSON Web Keys (JWK) that are used to validate signatures from the provider. This must be a full URL, including the HTTPS protocol, the domain, and the path.
  ///
  /// The following arguments are optional:
  final String jwksEndpoint;

  ListenerDefaultActionJwtValidation2({
    this.additionalClaims,
    required this.issuer,
    required this.jwksEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final additionalClaimsValue = additionalClaims;
    if (additionalClaimsValue != null) {
      map['additionalClaims'] = Input.encodeList<
              ListenerDefaultActionJwtValidationAdditionalClaim2,
              Map<String, dynamic>>(
          additionalClaimsValue, (value) => value.toMap());
    }
    map['issuer'] = issuer;
    map['jwksEndpoint'] = jwksEndpoint;
    return map;
  }

  factory ListenerDefaultActionJwtValidation2.fromMap(
      Map<String, dynamic> map) {
    return ListenerDefaultActionJwtValidation2(
      additionalClaims: map['additionalClaims'] == null
          ? null
          : Input.decodeList<
                  ListenerDefaultActionJwtValidationAdditionalClaim2>(
              map['additionalClaims'],
              (value) =>
                  ListenerDefaultActionJwtValidationAdditionalClaim2.fromMap(
                      (value as Map).cast<String, dynamic>())),
      issuer: map['issuer'] as String,
      jwksEndpoint: map['jwksEndpoint'] as String,
    );
  }
}
