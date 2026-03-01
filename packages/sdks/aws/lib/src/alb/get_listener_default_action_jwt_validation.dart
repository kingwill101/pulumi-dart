// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_default_action_jwt_validation_additional_claim.dart';

class GetListenerDefaultActionJwtValidation {
  final List<GetListenerDefaultActionJwtValidationAdditionalClaim> additionalClaims;
  final String issuer;
  final String jwksEndpoint;

  /// Creates a new [GetListenerDefaultActionJwtValidation].
  /// [additionalClaims] Required.
  /// [issuer] Required.
  /// [jwksEndpoint] Required.
  GetListenerDefaultActionJwtValidation({
    required this.additionalClaims,
    required this.issuer,
    required this.jwksEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalClaims': pulumi.Input.encodeList<GetListenerDefaultActionJwtValidationAdditionalClaim, Map<String, dynamic>>(additionalClaims, (value) => value.toMap()),
      'issuer': issuer,
      'jwksEndpoint': jwksEndpoint,
    };
  }

  factory GetListenerDefaultActionJwtValidation.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionJwtValidation(
      additionalClaims: pulumi.Input.decodeList<GetListenerDefaultActionJwtValidationAdditionalClaim>(map['additionalClaims'], (value) => GetListenerDefaultActionJwtValidationAdditionalClaim.fromMap((value as Map).cast<String, dynamic>())),
      issuer: map['issuer'] as String,
      jwksEndpoint: map['jwksEndpoint'] as String,
    );
  }
}

