// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_listener_default_action_jwt_validation_additional_claim/get_listener_default_action_jwt_validation_additional_claim2.dart';

class GetListenerDefaultActionJwtValidation2 {
  final List<GetListenerDefaultActionJwtValidationAdditionalClaim2>
      additionalClaims;
  final String issuer;
  final String jwksEndpoint;

  GetListenerDefaultActionJwtValidation2({
    required this.additionalClaims,
    required this.issuer,
    required this.jwksEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalClaims'] = Input.encodeList<
        GetListenerDefaultActionJwtValidationAdditionalClaim2,
        Map<String, dynamic>>(additionalClaims, (value) => value.toMap());
    map['issuer'] = issuer;
    map['jwksEndpoint'] = jwksEndpoint;
    return map;
  }

  factory GetListenerDefaultActionJwtValidation2.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionJwtValidation2(
      additionalClaims: Input.decodeList<
              GetListenerDefaultActionJwtValidationAdditionalClaim2>(
          map['additionalClaims'],
          (value) =>
              GetListenerDefaultActionJwtValidationAdditionalClaim2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      issuer: map['issuer'] as String,
      jwksEndpoint: map['jwksEndpoint'] as String,
    );
  }
}
