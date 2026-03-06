// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_rule_action_authenticate_cognito.dart';
import 'get_listener_rule_action_authenticate_oidc.dart';
import 'get_listener_rule_action_fixed_response.dart';
import 'get_listener_rule_action_forward.dart';
import 'get_listener_rule_action_jwt_validation.dart';
import 'get_listener_rule_action_redirect.dart';

class GetListenerRuleAction {
  /// An action to authenticate using Amazon Cognito.
  /// Detailed below.
  final pulumi.Input<List<GetListenerRuleActionAuthenticateCognito>>? authenticateCognitos;
  /// An action to authenticate using OIDC.
  /// Detailed below.
  final pulumi.Input<List<GetListenerRuleActionAuthenticateOidc>>? authenticateOidcs;
  /// An action to return a fixed response.
  /// Detailed below.
  final pulumi.Input<List<GetListenerRuleActionFixedResponse>>? fixedResponses;
  /// An action to forward the request.
  /// Detailed below.
  final pulumi.Input<List<GetListenerRuleActionForward>>? forwards;
  /// An action to validate using JWT.
  /// Detailed below.
  final pulumi.Input<List<GetListenerRuleActionJwtValidation>>? jwtValidations;
  /// The evaluation order of the action.
  final pulumi.Input<int> order;
  /// An action to redirect the request.
  /// Detailed below.
  final pulumi.Input<List<GetListenerRuleActionRedirect>>? redirects;
  /// Type of transform.
  final pulumi.Input<String> type;

  /// Creates a new [GetListenerRuleAction].
  /// [authenticateCognitos] An action to authenticate using Amazon Cognito.
  /// [authenticateOidcs] An action to authenticate using OIDC.
  /// [fixedResponses] An action to return a fixed response.
  /// [forwards] An action to forward the request.
  /// [jwtValidations] An action to validate using JWT.
  /// [order] The evaluation order of the action.
  /// [redirects] An action to redirect the request.
  /// [type] Type of transform.
  const GetListenerRuleAction({
    this.authenticateCognitos,
    this.authenticateOidcs,
    this.fixedResponses,
    this.forwards,
    this.jwtValidations,
    required this.order,
    this.redirects,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticateCognitos': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleActionAuthenticateCognito>, List<Map<String, dynamic>>>(authenticateCognitos, (value) => pulumi.Input.encodeList<GetListenerRuleActionAuthenticateCognito, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authenticateOidcs': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleActionAuthenticateOidc>, List<Map<String, dynamic>>>(authenticateOidcs, (value) => pulumi.Input.encodeList<GetListenerRuleActionAuthenticateOidc, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fixedResponses': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleActionFixedResponse>, List<Map<String, dynamic>>>(fixedResponses, (value) => pulumi.Input.encodeList<GetListenerRuleActionFixedResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'forwards': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleActionForward>, List<Map<String, dynamic>>>(forwards, (value) => pulumi.Input.encodeList<GetListenerRuleActionForward, Map<String, dynamic>>(value, (value) => value.toMap())),
      'jwtValidations': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleActionJwtValidation>, List<Map<String, dynamic>>>(jwtValidations, (value) => pulumi.Input.encodeList<GetListenerRuleActionJwtValidation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'order': order,
      'redirects': ?pulumi.Input.mapOptionalInputValue<List<GetListenerRuleActionRedirect>, List<Map<String, dynamic>>>(redirects, (value) => pulumi.Input.encodeList<GetListenerRuleActionRedirect, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
    };
  }

  factory GetListenerRuleAction.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleAction(
      authenticateCognitos: (() { final guardedValue = map['authenticateCognitos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerRuleActionAuthenticateCognito>(guardedValue, (value) => GetListenerRuleActionAuthenticateCognito.fromMap((value as Map).cast<String, dynamic>()))); })(),
      authenticateOidcs: (() { final guardedValue = map['authenticateOidcs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerRuleActionAuthenticateOidc>(guardedValue, (value) => GetListenerRuleActionAuthenticateOidc.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fixedResponses: (() { final guardedValue = map['fixedResponses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerRuleActionFixedResponse>(guardedValue, (value) => GetListenerRuleActionFixedResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      forwards: (() { final guardedValue = map['forwards']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerRuleActionForward>(guardedValue, (value) => GetListenerRuleActionForward.fromMap((value as Map).cast<String, dynamic>()))); })(),
      jwtValidations: (() { final guardedValue = map['jwtValidations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerRuleActionJwtValidation>(guardedValue, (value) => GetListenerRuleActionJwtValidation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      order: pulumi.Input.fromValue(map['order'] as int),
      redirects: (() { final guardedValue = map['redirects']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenerRuleActionRedirect>(guardedValue, (value) => GetListenerRuleActionRedirect.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

