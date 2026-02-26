// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_listener_rule_action_authenticate_cognito/get_listener_rule_action_authenticate_cognito.dart';
import '../get_listener_rule_action_authenticate_oidc/get_listener_rule_action_authenticate_oidc.dart';
import '../get_listener_rule_action_fixed_response/get_listener_rule_action_fixed_response.dart';
import '../get_listener_rule_action_forward/get_listener_rule_action_forward.dart';
import '../get_listener_rule_action_jwt_validation/get_listener_rule_action_jwt_validation.dart';
import '../get_listener_rule_action_redirect/get_listener_rule_action_redirect.dart';

class GetListenerRuleAction {
  /// An action to authenticate using Amazon Cognito.
  /// Detailed below.
  final List<GetListenerRuleActionAuthenticateCognito>? authenticateCognitos;

  /// An action to authenticate using OIDC.
  /// Detailed below.
  final List<GetListenerRuleActionAuthenticateOidc>? authenticateOidcs;

  /// An action to return a fixed response.
  /// Detailed below.
  final List<GetListenerRuleActionFixedResponse>? fixedResponses;

  /// An action to forward the request.
  /// Detailed below.
  final List<GetListenerRuleActionForward>? forwards;

  /// An action to validate using JWT.
  /// Detailed below.
  final List<GetListenerRuleActionJwtValidation>? jwtValidations;

  /// The evaluation order of the action.
  final int order;

  /// An action to redirect the request.
  /// Detailed below.
  final List<GetListenerRuleActionRedirect>? redirects;

  /// Type of transform.
  final String type;

  GetListenerRuleAction({
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
    final map = <String, dynamic>{};
    final authenticateCognitosValue = authenticateCognitos;
    if (authenticateCognitosValue != null) {
      map['authenticateCognitos'] = Input.encodeList<
              GetListenerRuleActionAuthenticateCognito, Map<String, dynamic>>(
          authenticateCognitosValue, (value) => value.toMap());
    }
    final authenticateOidcsValue = authenticateOidcs;
    if (authenticateOidcsValue != null) {
      map['authenticateOidcs'] = Input.encodeList<
              GetListenerRuleActionAuthenticateOidc, Map<String, dynamic>>(
          authenticateOidcsValue, (value) => value.toMap());
    }
    final fixedResponsesValue = fixedResponses;
    if (fixedResponsesValue != null) {
      map['fixedResponses'] = Input.encodeList<
          GetListenerRuleActionFixedResponse,
          Map<String, dynamic>>(fixedResponsesValue, (value) => value.toMap());
    }
    final forwardsValue = forwards;
    if (forwardsValue != null) {
      map['forwards'] =
          Input.encodeList<GetListenerRuleActionForward, Map<String, dynamic>>(
              forwardsValue, (value) => value.toMap());
    }
    final jwtValidationsValue = jwtValidations;
    if (jwtValidationsValue != null) {
      map['jwtValidations'] = Input.encodeList<
          GetListenerRuleActionJwtValidation,
          Map<String, dynamic>>(jwtValidationsValue, (value) => value.toMap());
    }
    map['order'] = order;
    final redirectsValue = redirects;
    if (redirectsValue != null) {
      map['redirects'] =
          Input.encodeList<GetListenerRuleActionRedirect, Map<String, dynamic>>(
              redirectsValue, (value) => value.toMap());
    }
    map['type'] = type;
    return map;
  }

  factory GetListenerRuleAction.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleAction(
      authenticateCognitos: map['authenticateCognitos'] == null
          ? null
          : Input.decodeList<GetListenerRuleActionAuthenticateCognito>(
              map['authenticateCognitos'],
              (value) => GetListenerRuleActionAuthenticateCognito.fromMap(
                  (value as Map).cast<String, dynamic>())),
      authenticateOidcs: map['authenticateOidcs'] == null
          ? null
          : Input.decodeList<GetListenerRuleActionAuthenticateOidc>(
              map['authenticateOidcs'],
              (value) => GetListenerRuleActionAuthenticateOidc.fromMap(
                  (value as Map).cast<String, dynamic>())),
      fixedResponses: map['fixedResponses'] == null
          ? null
          : Input.decodeList<GetListenerRuleActionFixedResponse>(
              map['fixedResponses'],
              (value) => GetListenerRuleActionFixedResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      forwards: map['forwards'] == null
          ? null
          : Input.decodeList<GetListenerRuleActionForward>(
              map['forwards'],
              (value) => GetListenerRuleActionForward.fromMap(
                  (value as Map).cast<String, dynamic>())),
      jwtValidations: map['jwtValidations'] == null
          ? null
          : Input.decodeList<GetListenerRuleActionJwtValidation>(
              map['jwtValidations'],
              (value) => GetListenerRuleActionJwtValidation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      order: map['order'] as int,
      redirects: map['redirects'] == null
          ? null
          : Input.decodeList<GetListenerRuleActionRedirect>(
              map['redirects'],
              (value) => GetListenerRuleActionRedirect.fromMap(
                  (value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}
