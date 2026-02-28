// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_default_action_authenticate_cognito.dart';
import 'get_listener_default_action_authenticate_oidc.dart';
import 'get_listener_default_action_fixed_response.dart';
import 'get_listener_default_action_forward.dart';
import 'get_listener_default_action_jwt_validation.dart';
import 'get_listener_default_action_redirect.dart';

class GetListenerDefaultAction {
  final List<GetListenerDefaultActionAuthenticateCognito> authenticateCognitos;
  final List<GetListenerDefaultActionAuthenticateOidc> authenticateOidcs;
  final List<GetListenerDefaultActionFixedResponse> fixedResponses;
  final List<GetListenerDefaultActionForward> forwards;
  final List<GetListenerDefaultActionJwtValidation> jwtValidations;
  final int order;
  final List<GetListenerDefaultActionRedirect> redirects;
  final String targetGroupArn;
  final String type;

  /// Creates a new [GetListenerDefaultAction].
  /// [authenticateCognitos] Required.
  /// [authenticateOidcs] Required.
  /// [fixedResponses] Required.
  /// [forwards] Required.
  /// [jwtValidations] Required.
  /// [order] Required.
  /// [redirects] Required.
  /// [targetGroupArn] Required.
  /// [type] Required.
  GetListenerDefaultAction({
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
    return <String, dynamic>{
      'authenticateCognitos': pulumi.Input.encodeList<GetListenerDefaultActionAuthenticateCognito, Map<String, dynamic>>(authenticateCognitos, (value) => value.toMap()),
      'authenticateOidcs': pulumi.Input.encodeList<GetListenerDefaultActionAuthenticateOidc, Map<String, dynamic>>(authenticateOidcs, (value) => value.toMap()),
      'fixedResponses': pulumi.Input.encodeList<GetListenerDefaultActionFixedResponse, Map<String, dynamic>>(fixedResponses, (value) => value.toMap()),
      'forwards': pulumi.Input.encodeList<GetListenerDefaultActionForward, Map<String, dynamic>>(forwards, (value) => value.toMap()),
      'jwtValidations': pulumi.Input.encodeList<GetListenerDefaultActionJwtValidation, Map<String, dynamic>>(jwtValidations, (value) => value.toMap()),
      'order': order,
      'redirects': pulumi.Input.encodeList<GetListenerDefaultActionRedirect, Map<String, dynamic>>(redirects, (value) => value.toMap()),
      'targetGroupArn': targetGroupArn,
      'type': type,
    };
  }

  factory GetListenerDefaultAction.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultAction(
      authenticateCognitos: pulumi.Input.decodeList<GetListenerDefaultActionAuthenticateCognito>(map['authenticateCognitos'], (value) => GetListenerDefaultActionAuthenticateCognito.fromMap((value as Map).cast<String, dynamic>())),
      authenticateOidcs: pulumi.Input.decodeList<GetListenerDefaultActionAuthenticateOidc>(map['authenticateOidcs'], (value) => GetListenerDefaultActionAuthenticateOidc.fromMap((value as Map).cast<String, dynamic>())),
      fixedResponses: pulumi.Input.decodeList<GetListenerDefaultActionFixedResponse>(map['fixedResponses'], (value) => GetListenerDefaultActionFixedResponse.fromMap((value as Map).cast<String, dynamic>())),
      forwards: pulumi.Input.decodeList<GetListenerDefaultActionForward>(map['forwards'], (value) => GetListenerDefaultActionForward.fromMap((value as Map).cast<String, dynamic>())),
      jwtValidations: pulumi.Input.decodeList<GetListenerDefaultActionJwtValidation>(map['jwtValidations'], (value) => GetListenerDefaultActionJwtValidation.fromMap((value as Map).cast<String, dynamic>())),
      order: map['order'] as int,
      redirects: pulumi.Input.decodeList<GetListenerDefaultActionRedirect>(map['redirects'], (value) => GetListenerDefaultActionRedirect.fromMap((value as Map).cast<String, dynamic>())),
      targetGroupArn: map['targetGroupArn'] as String,
      type: map['type'] as String,
    );
  }
}

