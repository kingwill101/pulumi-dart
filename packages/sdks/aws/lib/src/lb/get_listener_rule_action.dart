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

  /// Creates a new [GetListenerRuleAction].
  /// [authenticateCognitos] An action to authenticate using Amazon Cognito.
  /// [authenticateOidcs] An action to authenticate using OIDC.
  /// [fixedResponses] An action to return a fixed response.
  /// [forwards] An action to forward the request.
  /// [jwtValidations] An action to validate using JWT.
  /// [order] The evaluation order of the action.
  /// [redirects] An action to redirect the request.
  /// [type] Type of transform.
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
    return <String, dynamic>{
      'authenticateCognitos': ?authenticateCognitos == null ? null : pulumi.Input.encodeList<GetListenerRuleActionAuthenticateCognito, Map<String, dynamic>>(authenticateCognitos!, (value) => value.toMap()),
      'authenticateOidcs': ?authenticateOidcs == null ? null : pulumi.Input.encodeList<GetListenerRuleActionAuthenticateOidc, Map<String, dynamic>>(authenticateOidcs!, (value) => value.toMap()),
      'fixedResponses': ?fixedResponses == null ? null : pulumi.Input.encodeList<GetListenerRuleActionFixedResponse, Map<String, dynamic>>(fixedResponses!, (value) => value.toMap()),
      'forwards': ?forwards == null ? null : pulumi.Input.encodeList<GetListenerRuleActionForward, Map<String, dynamic>>(forwards!, (value) => value.toMap()),
      'jwtValidations': ?jwtValidations == null ? null : pulumi.Input.encodeList<GetListenerRuleActionJwtValidation, Map<String, dynamic>>(jwtValidations!, (value) => value.toMap()),
      'order': order,
      'redirects': ?redirects == null ? null : pulumi.Input.encodeList<GetListenerRuleActionRedirect, Map<String, dynamic>>(redirects!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetListenerRuleAction.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleAction(
      authenticateCognitos: map['authenticateCognitos'] == null ? null : pulumi.Input.decodeList<GetListenerRuleActionAuthenticateCognito>(map['authenticateCognitos'], (value) => GetListenerRuleActionAuthenticateCognito.fromMap((value as Map).cast<String, dynamic>())),
      authenticateOidcs: map['authenticateOidcs'] == null ? null : pulumi.Input.decodeList<GetListenerRuleActionAuthenticateOidc>(map['authenticateOidcs'], (value) => GetListenerRuleActionAuthenticateOidc.fromMap((value as Map).cast<String, dynamic>())),
      fixedResponses: map['fixedResponses'] == null ? null : pulumi.Input.decodeList<GetListenerRuleActionFixedResponse>(map['fixedResponses'], (value) => GetListenerRuleActionFixedResponse.fromMap((value as Map).cast<String, dynamic>())),
      forwards: map['forwards'] == null ? null : pulumi.Input.decodeList<GetListenerRuleActionForward>(map['forwards'], (value) => GetListenerRuleActionForward.fromMap((value as Map).cast<String, dynamic>())),
      jwtValidations: map['jwtValidations'] == null ? null : pulumi.Input.decodeList<GetListenerRuleActionJwtValidation>(map['jwtValidations'], (value) => GetListenerRuleActionJwtValidation.fromMap((value as Map).cast<String, dynamic>())),
      order: map['order'] as int,
      redirects: map['redirects'] == null ? null : pulumi.Input.decodeList<GetListenerRuleActionRedirect>(map['redirects'], (value) => GetListenerRuleActionRedirect.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

