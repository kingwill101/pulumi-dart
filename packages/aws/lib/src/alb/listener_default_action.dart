// ignore_for_file: unused_element, unnecessary_cast

import 'listener_default_action_authenticate_cognito.dart';
import 'listener_default_action_authenticate_oidc.dart';
import 'listener_default_action_fixed_response.dart';
import 'listener_default_action_forward.dart';
import 'listener_default_action_jwt_validation.dart';
import 'listener_default_action_redirect.dart';

class ListenerDefaultAction {
  /// Configuration block for using Amazon Cognito to authenticate users. Specify only when `type` is `authenticate-cognito`. See below.
  final ListenerDefaultActionAuthenticateCognito? authenticateCognito;

  /// Configuration block for an identity provider that is compliant with OpenID Connect (OIDC). Specify only when `type` is `authenticate-oidc`. See below.
  final ListenerDefaultActionAuthenticateOidc? authenticateOidc;

  /// Information for creating an action that returns a custom HTTP response. Required if `type` is `fixed-response`.
  final ListenerDefaultActionFixedResponse? fixedResponse;

  /// Configuration block for creating an action that distributes requests among one or more target groups. Specify only if `type` is `forward`. See below.
  final ListenerDefaultActionForward? forward;

  /// Configuration block for creating a JWT validation action. Required if `type` is `jwt-validation`.
  final ListenerDefaultActionJwtValidation? jwtValidation;

  /// Order for the action. The action with the lowest value for order is performed first. Valid values are between `1` and `50000`. Defaults to the position in the list of actions.
  final int? order;

  /// Configuration block for creating a redirect action. Required if `type` is `redirect`. See below.
  final ListenerDefaultActionRedirect? redirect;

  /// ARN of the Target Group to which to route traffic. Specify only if `type` is `forward` and you want to route to a single target group. To route to one or more target groups, use a `forward` block instead. Can be specified with `forward` but ARNs must match.
  final String? targetGroupArn;

  /// Type of routing action. Valid values are `forward`, `redirect`, `fixed-response`, `authenticate-cognito`, `authenticate-oidc` and `jwt-validation`.
  ///
  /// The following arguments are optional:
  final String type;

  /// Creates a new [ListenerDefaultAction].
  /// [authenticateCognito] Configuration block for using Amazon Cognito to authenticate users. Specify only when `type` is `authenticate-cognito`. See below.
  /// [authenticateOidc] Configuration block for an identity provider that is compliant with OpenID Connect (OIDC). Specify only when `type` is `authenticate-oidc`. See below.
  /// [fixedResponse] Information for creating an action that returns a custom HTTP response. Required if `type` is `fixed-response`.
  /// [forward] Configuration block for creating an action that distributes requests among one or more target groups. Specify only if `type` is `forward`. See below.
  /// [jwtValidation] Configuration block for creating a JWT validation action. Required if `type` is `jwt-validation`.
  /// [order] Order for the action. The action with the lowest value for order is performed first. Valid values are between `1` and `50000`. Defaults to the position in the list of actions.
  /// [redirect] Configuration block for creating a redirect action. Required if `type` is `redirect`. See below.
  /// [targetGroupArn] ARN of the Target Group to which to route traffic. Specify only if `type` is `forward` and you want to route to a single target group. To route to one or more target groups, use a `forward` block instead. Can be specified with `forward` but ARNs must match.
  /// [type] Type of routing action. Valid values are `forward`, `redirect`, `fixed-response`, `authenticate-cognito`, `authenticate-oidc` and `jwt-validation`.
  ListenerDefaultAction({
    this.authenticateCognito,
    this.authenticateOidc,
    this.fixedResponse,
    this.forward,
    this.jwtValidation,
    this.order,
    this.redirect,
    this.targetGroupArn,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticateCognito': ?authenticateCognito == null
          ? null
          : authenticateCognito!.toMap(),
      'authenticateOidc': ?authenticateOidc == null
          ? null
          : authenticateOidc!.toMap(),
      'fixedResponse': ?fixedResponse == null ? null : fixedResponse!.toMap(),
      'forward': ?forward == null ? null : forward!.toMap(),
      'jwtValidation': ?jwtValidation == null ? null : jwtValidation!.toMap(),
      'order': ?order,
      'redirect': ?redirect == null ? null : redirect!.toMap(),
      'targetGroupArn': ?targetGroupArn,
      'type': type,
    };
  }

  factory ListenerDefaultAction.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultAction(
      authenticateCognito: map['authenticateCognito'] == null
          ? null
          : ListenerDefaultActionAuthenticateCognito.fromMap(
              (map['authenticateCognito'] as Map).cast<String, dynamic>(),
            ),
      authenticateOidc: map['authenticateOidc'] == null
          ? null
          : ListenerDefaultActionAuthenticateOidc.fromMap(
              (map['authenticateOidc'] as Map).cast<String, dynamic>(),
            ),
      fixedResponse: map['fixedResponse'] == null
          ? null
          : ListenerDefaultActionFixedResponse.fromMap(
              (map['fixedResponse'] as Map).cast<String, dynamic>(),
            ),
      forward: map['forward'] == null
          ? null
          : ListenerDefaultActionForward.fromMap(
              (map['forward'] as Map).cast<String, dynamic>(),
            ),
      jwtValidation: map['jwtValidation'] == null
          ? null
          : ListenerDefaultActionJwtValidation.fromMap(
              (map['jwtValidation'] as Map).cast<String, dynamic>(),
            ),
      order: map['order'] == null ? null : map['order'] as int,
      redirect: map['redirect'] == null
          ? null
          : ListenerDefaultActionRedirect.fromMap(
              (map['redirect'] as Map).cast<String, dynamic>(),
            ),
      targetGroupArn: map['targetGroupArn'] == null
          ? null
          : map['targetGroupArn'] as String,
      type: map['type'] as String,
    );
  }
}
