// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_listener_default_action_jwt_validation_additional_claim/get_listener_default_action_jwt_validation_additional_claim_lb.dart';

class GetListenerDefaultActionJwtValidationLb {
  final List<GetListenerDefaultActionJwtValidationAdditionalClaimLb>
      additionalClaims;
  final String issuer;
  final String jwksEndpoint;

  GetListenerDefaultActionJwtValidationLb({
    required this.additionalClaims,
    required this.issuer,
    required this.jwksEndpoint,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['additionalClaims'] = pulumi.Input.encodeList<
        GetListenerDefaultActionJwtValidationAdditionalClaimLb,
        Map<String, dynamic>>(additionalClaims, (value) => value.toMap());
    map['issuer'] = issuer;
    map['jwksEndpoint'] = jwksEndpoint;
    return map;
  }

  factory GetListenerDefaultActionJwtValidationLb.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionJwtValidationLb(
      additionalClaims: pulumi.Input.decodeList<
              GetListenerDefaultActionJwtValidationAdditionalClaimLb>(
          map['additionalClaims'],
          (value) =>
              GetListenerDefaultActionJwtValidationAdditionalClaimLb.fromMap(
                  (value as Map).cast<String, dynamic>())),
      issuer: map['issuer'] as String,
      jwksEndpoint: map['jwksEndpoint'] as String,
    );
  }
}
