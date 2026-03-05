// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_default_action_jwt_validation_additional_claim.dart';

class GetListenerDefaultActionJwtValidation {
  final pulumi.Input<List<GetListenerDefaultActionJwtValidationAdditionalClaim>> additionalClaims;
  final pulumi.Input<String> issuer;
  final pulumi.Input<String> jwksEndpoint;

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
      'additionalClaims': pulumi.Input.mapInputValue<List<GetListenerDefaultActionJwtValidationAdditionalClaim>, List<Map<String, dynamic>>>(additionalClaims, (value) => pulumi.Input.encodeList<GetListenerDefaultActionJwtValidationAdditionalClaim, Map<String, dynamic>>(value, (value) => value.toMap())),
      'issuer': issuer,
      'jwksEndpoint': jwksEndpoint,
    };
  }

  factory GetListenerDefaultActionJwtValidation.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionJwtValidation(
      additionalClaims: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerDefaultActionJwtValidationAdditionalClaim>(map['additionalClaims']!, (value) => GetListenerDefaultActionJwtValidationAdditionalClaim.fromMap((value as Map).cast<String, dynamic>()))),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      jwksEndpoint: pulumi.Input.fromValue(map['jwksEndpoint'] as String),
    );
  }
}

