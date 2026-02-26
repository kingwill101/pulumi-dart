// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_listener_default_action_authenticate_cognito/get_listener_default_action_authenticate_cognito2.dart';
import '../get_listener_default_action_authenticate_oidc/get_listener_default_action_authenticate_oidc2.dart';
import '../get_listener_default_action_fixed_response/get_listener_default_action_fixed_response2.dart';
import '../get_listener_default_action_forward/get_listener_default_action_forward2.dart';
import '../get_listener_default_action_jwt_validation/get_listener_default_action_jwt_validation2.dart';
import '../get_listener_default_action_redirect/get_listener_default_action_redirect2.dart';

class GetListenerDefaultAction2 {
  final List<GetListenerDefaultActionAuthenticateCognito2> authenticateCognitos;
  final List<GetListenerDefaultActionAuthenticateOidc2> authenticateOidcs;
  final List<GetListenerDefaultActionFixedResponse2> fixedResponses;
  final List<GetListenerDefaultActionForward2> forwards;
  final List<GetListenerDefaultActionJwtValidation2> jwtValidations;
  final int order;
  final List<GetListenerDefaultActionRedirect2> redirects;
  final String targetGroupArn;
  final String type;

  GetListenerDefaultAction2({
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
    map['authenticateCognitos'] = Input.encodeList<
        GetListenerDefaultActionAuthenticateCognito2,
        Map<String, dynamic>>(authenticateCognitos, (value) => value.toMap());
    map['authenticateOidcs'] = Input.encodeList<
        GetListenerDefaultActionAuthenticateOidc2,
        Map<String, dynamic>>(authenticateOidcs, (value) => value.toMap());
    map['fixedResponses'] = Input.encodeList<
        GetListenerDefaultActionFixedResponse2,
        Map<String, dynamic>>(fixedResponses, (value) => value.toMap());
    map['forwards'] = Input.encodeList<GetListenerDefaultActionForward2,
        Map<String, dynamic>>(forwards, (value) => value.toMap());
    map['jwtValidations'] = Input.encodeList<
        GetListenerDefaultActionJwtValidation2,
        Map<String, dynamic>>(jwtValidations, (value) => value.toMap());
    map['order'] = order;
    map['redirects'] = Input.encodeList<GetListenerDefaultActionRedirect2,
        Map<String, dynamic>>(redirects, (value) => value.toMap());
    map['targetGroupArn'] = targetGroupArn;
    map['type'] = type;
    return map;
  }

  factory GetListenerDefaultAction2.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultAction2(
      authenticateCognitos:
          Input.decodeList<GetListenerDefaultActionAuthenticateCognito2>(
              map['authenticateCognitos'],
              (value) => GetListenerDefaultActionAuthenticateCognito2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      authenticateOidcs:
          Input.decodeList<GetListenerDefaultActionAuthenticateOidc2>(
              map['authenticateOidcs'],
              (value) => GetListenerDefaultActionAuthenticateOidc2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      fixedResponses: Input.decodeList<GetListenerDefaultActionFixedResponse2>(
          map['fixedResponses'],
          (value) => GetListenerDefaultActionFixedResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      forwards: Input.decodeList<GetListenerDefaultActionForward2>(
          map['forwards'],
          (value) => GetListenerDefaultActionForward2.fromMap(
              (value as Map).cast<String, dynamic>())),
      jwtValidations: Input.decodeList<GetListenerDefaultActionJwtValidation2>(
          map['jwtValidations'],
          (value) => GetListenerDefaultActionJwtValidation2.fromMap(
              (value as Map).cast<String, dynamic>())),
      order: map['order'] as int,
      redirects: Input.decodeList<GetListenerDefaultActionRedirect2>(
          map['redirects'],
          (value) => GetListenerDefaultActionRedirect2.fromMap(
              (value as Map).cast<String, dynamic>())),
      targetGroupArn: map['targetGroupArn'] as String,
      type: map['type'] as String,
    );
  }
}
