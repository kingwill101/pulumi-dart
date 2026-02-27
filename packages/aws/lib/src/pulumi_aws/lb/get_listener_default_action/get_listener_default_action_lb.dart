// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_listener_default_action_authenticate_cognito/get_listener_default_action_authenticate_cognito_lb.dart';
import '../get_listener_default_action_authenticate_oidc/get_listener_default_action_authenticate_oidc_lb.dart';
import '../get_listener_default_action_fixed_response/get_listener_default_action_fixed_response_lb.dart';
import '../get_listener_default_action_forward/get_listener_default_action_forward_lb.dart';
import '../get_listener_default_action_jwt_validation/get_listener_default_action_jwt_validation_lb.dart';
import '../get_listener_default_action_redirect/get_listener_default_action_redirect_lb.dart';

class GetListenerDefaultActionLb {
  final List<GetListenerDefaultActionAuthenticateCognitoLb>
      authenticateCognitos;
  final List<GetListenerDefaultActionAuthenticateOidcLb> authenticateOidcs;
  final List<GetListenerDefaultActionFixedResponseLb> fixedResponses;
  final List<GetListenerDefaultActionForwardLb> forwards;
  final List<GetListenerDefaultActionJwtValidationLb> jwtValidations;
  final int order;
  final List<GetListenerDefaultActionRedirectLb> redirects;
  final String targetGroupArn;
  final String type;

  GetListenerDefaultActionLb({
    required this.authenticateCognitos,
    required this.authenticateOidcs,
    required this.fixedResponses,
    required this.forwards,
    required this.jwtValidations,
    required this.order,
    required this.redirects,
    required this.targetGroupArn,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authenticateCognitos'] = pulumi.Input.encodeList<
        GetListenerDefaultActionAuthenticateCognitoLb,
        Map<String, dynamic>>(authenticateCognitos, (value) => value.toMap());
    map['authenticateOidcs'] = pulumi.Input.encodeList<
        GetListenerDefaultActionAuthenticateOidcLb,
        Map<String, dynamic>>(authenticateOidcs, (value) => value.toMap());
    map['fixedResponses'] = pulumi.Input.encodeList<
        GetListenerDefaultActionFixedResponseLb,
        Map<String, dynamic>>(fixedResponses, (value) => value.toMap());
    map['forwards'] = pulumi.Input.encodeList<GetListenerDefaultActionForwardLb,
        Map<String, dynamic>>(forwards, (value) => value.toMap());
    map['jwtValidations'] = pulumi.Input.encodeList<
        GetListenerDefaultActionJwtValidationLb,
        Map<String, dynamic>>(jwtValidations, (value) => value.toMap());
    map['order'] = order;
    map['redirects'] = pulumi.Input.encodeList<
        GetListenerDefaultActionRedirectLb,
        Map<String, dynamic>>(redirects, (value) => value.toMap());
    map['targetGroupArn'] = targetGroupArn;
    map['type'] = type;
    return map;
  }

  factory GetListenerDefaultActionLb.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionLb(
      authenticateCognitos: pulumi.Input.decodeList<
              GetListenerDefaultActionAuthenticateCognitoLb>(
          map['authenticateCognitos'],
          (value) => GetListenerDefaultActionAuthenticateCognitoLb.fromMap(
              (value as Map).cast<String, dynamic>())),
      authenticateOidcs:
          pulumi.Input.decodeList<GetListenerDefaultActionAuthenticateOidcLb>(
              map['authenticateOidcs'],
              (value) => GetListenerDefaultActionAuthenticateOidcLb.fromMap(
                  (value as Map).cast<String, dynamic>())),
      fixedResponses:
          pulumi.Input.decodeList<GetListenerDefaultActionFixedResponseLb>(
              map['fixedResponses'],
              (value) => GetListenerDefaultActionFixedResponseLb.fromMap(
                  (value as Map).cast<String, dynamic>())),
      forwards: pulumi.Input.decodeList<GetListenerDefaultActionForwardLb>(
          map['forwards'],
          (value) => GetListenerDefaultActionForwardLb.fromMap(
              (value as Map).cast<String, dynamic>())),
      jwtValidations:
          pulumi.Input.decodeList<GetListenerDefaultActionJwtValidationLb>(
              map['jwtValidations'],
              (value) => GetListenerDefaultActionJwtValidationLb.fromMap(
                  (value as Map).cast<String, dynamic>())),
      order: map['order'] as int,
      redirects: pulumi.Input.decodeList<GetListenerDefaultActionRedirectLb>(
          map['redirects'],
          (value) => GetListenerDefaultActionRedirectLb.fromMap(
              (value as Map).cast<String, dynamic>())),
      targetGroupArn: map['targetGroupArn'] as String,
      type: map['type'] as String,
    );
  }
}
