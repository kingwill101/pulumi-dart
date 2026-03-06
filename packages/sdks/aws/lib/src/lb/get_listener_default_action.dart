// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_default_action_authenticate_cognito.dart';
import 'get_listener_default_action_authenticate_oidc.dart';
import 'get_listener_default_action_fixed_response.dart';
import 'get_listener_default_action_forward.dart';
import 'get_listener_default_action_jwt_validation.dart';
import 'get_listener_default_action_redirect.dart';

class GetListenerDefaultAction {
  final pulumi.Input<List<GetListenerDefaultActionAuthenticateCognito>> authenticateCognitos;
  final pulumi.Input<List<GetListenerDefaultActionAuthenticateOidc>> authenticateOidcs;
  final pulumi.Input<List<GetListenerDefaultActionFixedResponse>> fixedResponses;
  final pulumi.Input<List<GetListenerDefaultActionForward>> forwards;
  final pulumi.Input<List<GetListenerDefaultActionJwtValidation>> jwtValidations;
  final pulumi.Input<int> order;
  final pulumi.Input<List<GetListenerDefaultActionRedirect>> redirects;
  final pulumi.Input<String> targetGroupArn;
  final pulumi.Input<String> type;

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
  const GetListenerDefaultAction({
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
      'authenticateCognitos': pulumi.Input.mapInputValue<List<GetListenerDefaultActionAuthenticateCognito>, List<Map<String, dynamic>>>(authenticateCognitos, (value) => pulumi.Input.encodeList<GetListenerDefaultActionAuthenticateCognito, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authenticateOidcs': pulumi.Input.mapInputValue<List<GetListenerDefaultActionAuthenticateOidc>, List<Map<String, dynamic>>>(authenticateOidcs, (value) => pulumi.Input.encodeList<GetListenerDefaultActionAuthenticateOidc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fixedResponses': pulumi.Input.mapInputValue<List<GetListenerDefaultActionFixedResponse>, List<Map<String, dynamic>>>(fixedResponses, (value) => pulumi.Input.encodeList<GetListenerDefaultActionFixedResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forwards': pulumi.Input.mapInputValue<List<GetListenerDefaultActionForward>, List<Map<String, dynamic>>>(forwards, (value) => pulumi.Input.encodeList<GetListenerDefaultActionForward, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jwtValidations': pulumi.Input.mapInputValue<List<GetListenerDefaultActionJwtValidation>, List<Map<String, dynamic>>>(jwtValidations, (value) => pulumi.Input.encodeList<GetListenerDefaultActionJwtValidation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': order,
      'redirects': pulumi.Input.mapInputValue<List<GetListenerDefaultActionRedirect>, List<Map<String, dynamic>>>(redirects, (value) => pulumi.Input.encodeList<GetListenerDefaultActionRedirect, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetGroupArn': targetGroupArn,
      'type': type,
    };
  }

  factory GetListenerDefaultAction.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultAction(
      authenticateCognitos: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerDefaultActionAuthenticateCognito>(map['authenticateCognitos']!, (value) => GetListenerDefaultActionAuthenticateCognito.fromMap((value as Map).cast<String, dynamic>()))),
      authenticateOidcs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerDefaultActionAuthenticateOidc>(map['authenticateOidcs']!, (value) => GetListenerDefaultActionAuthenticateOidc.fromMap((value as Map).cast<String, dynamic>()))),
      fixedResponses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerDefaultActionFixedResponse>(map['fixedResponses']!, (value) => GetListenerDefaultActionFixedResponse.fromMap((value as Map).cast<String, dynamic>()))),
      forwards: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerDefaultActionForward>(map['forwards']!, (value) => GetListenerDefaultActionForward.fromMap((value as Map).cast<String, dynamic>()))),
      jwtValidations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerDefaultActionJwtValidation>(map['jwtValidations']!, (value) => GetListenerDefaultActionJwtValidation.fromMap((value as Map).cast<String, dynamic>()))),
      order: pulumi.Input.fromValue(map['order'] as int),
      redirects: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerDefaultActionRedirect>(map['redirects']!, (value) => GetListenerDefaultActionRedirect.fromMap((value as Map).cast<String, dynamic>()))),
      targetGroupArn: pulumi.Input.fromValue(map['targetGroupArn'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

