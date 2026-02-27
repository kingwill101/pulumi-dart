// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_listener_default_action_jwt_validation_additional_claim/get_listener_default_action_jwt_validation_additional_claim.dart';

class GetListenerDefaultActionJwtValidation {
  final List<GetListenerDefaultActionJwtValidationAdditionalClaim>
      additionalClaims;
  final String issuer;
  final String jwksEndpoint;

  GetListenerDefaultActionJwtValidation({
    required this.additionalClaims,
    required this.issuer,
    required this.jwksEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalClaims'] = pulumi.Input.encodeList<
        GetListenerDefaultActionJwtValidationAdditionalClaim,
        Map<String, dynamic>>(additionalClaims, (value) => value.toMap());
    map['issuer'] = issuer;
    map['jwksEndpoint'] = jwksEndpoint;
    return map;
  }

  factory GetListenerDefaultActionJwtValidation.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionJwtValidation(
      additionalClaims: pulumi.Input.decodeList<
              GetListenerDefaultActionJwtValidationAdditionalClaim>(
          map['additionalClaims'],
          (value) =>
              GetListenerDefaultActionJwtValidationAdditionalClaim.fromMap(
                  (value as Map).cast<String, dynamic>())),
      issuer: map['issuer'] as String,
      jwksEndpoint: map['jwksEndpoint'] as String,
    );
  }
}
