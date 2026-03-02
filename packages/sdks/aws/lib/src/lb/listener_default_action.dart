// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_default_action_authenticate_cognito.dart';
import 'listener_default_action_authenticate_oidc.dart';
import 'listener_default_action_fixed_response.dart';
import 'listener_default_action_forward.dart';
import 'listener_default_action_jwt_validation.dart';
import 'listener_default_action_redirect.dart';

class ListenerDefaultAction {
  /// Configuration block for using Amazon Cognito to authenticate users. Specify only when `type` is `authenticate-cognito`. See below.
  final pulumi.Input<ListenerDefaultActionAuthenticateCognito>? authenticateCognito;
  /// Configuration block for an identity provider that is compliant with OpenID Connect (OIDC). Specify only when `type` is `authenticate-oidc`. See below.
  final pulumi.Input<ListenerDefaultActionAuthenticateOidc>? authenticateOidc;
  /// Information for creating an action that returns a custom HTTP response. Required if `type` is `fixed-response`.
  final pulumi.Input<ListenerDefaultActionFixedResponse>? fixedResponse;
  /// Configuration block for creating an action that distributes requests among one or more target groups. Specify only if `type` is `forward`. See below.
  final pulumi.Input<ListenerDefaultActionForward>? forward;
  /// Configuration block for creating a JWT validation action. Required if `type` is `jwt-validation`.
  final pulumi.Input<ListenerDefaultActionJwtValidation>? jwtValidation;
  /// Order for the action. The action with the lowest value for order is performed first. Valid values are between `1` and `50000`. Defaults to the position in the list of actions.
  final pulumi.Input<int>? order;
  /// Configuration block for creating a redirect action. Required if `type` is `redirect`. See below.
  final pulumi.Input<ListenerDefaultActionRedirect>? redirect;
  /// ARN of the Target Group to which to route traffic. Specify only if `type` is `forward` and you want to route to a single target group. To route to one or more target groups, use a `forward` block instead. Can be specified with `forward` but ARNs must match.
  final pulumi.Input<String>? targetGroupArn;
  /// Type of routing action. Valid values are `forward`, `redirect`, `fixed-response`, `authenticate-cognito`, `authenticate-oidc` and `jwt-validation`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

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
      'authenticateCognito': ?pulumi.Input.mapOptionalInputValue<ListenerDefaultActionAuthenticateCognito, Map<String, dynamic>>(authenticateCognito, (value) => value.toMap()),
      'authenticateOidc': ?pulumi.Input.mapOptionalInputValue<ListenerDefaultActionAuthenticateOidc, Map<String, dynamic>>(authenticateOidc, (value) => value.toMap()),
      'fixedResponse': ?pulumi.Input.mapOptionalInputValue<ListenerDefaultActionFixedResponse, Map<String, dynamic>>(fixedResponse, (value) => value.toMap()),
      'forward': ?pulumi.Input.mapOptionalInputValue<ListenerDefaultActionForward, Map<String, dynamic>>(forward, (value) => value.toMap()),
      'jwtValidation': ?pulumi.Input.mapOptionalInputValue<ListenerDefaultActionJwtValidation, Map<String, dynamic>>(jwtValidation, (value) => value.toMap()),
      'order': ?order,
      'redirect': ?pulumi.Input.mapOptionalInputValue<ListenerDefaultActionRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
      'targetGroupArn': ?targetGroupArn,
      'type': type,
    };
  }

  factory ListenerDefaultAction.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultAction(
      authenticateCognito: map['authenticateCognito'] == null ? null : (ListenerDefaultActionAuthenticateCognito.fromMap((map['authenticateCognito'] as Map).cast<String, dynamic>())).input(),
      authenticateOidc: map['authenticateOidc'] == null ? null : (ListenerDefaultActionAuthenticateOidc.fromMap((map['authenticateOidc'] as Map).cast<String, dynamic>())).input(),
      fixedResponse: map['fixedResponse'] == null ? null : (ListenerDefaultActionFixedResponse.fromMap((map['fixedResponse'] as Map).cast<String, dynamic>())).input(),
      forward: map['forward'] == null ? null : (ListenerDefaultActionForward.fromMap((map['forward'] as Map).cast<String, dynamic>())).input(),
      jwtValidation: map['jwtValidation'] == null ? null : (ListenerDefaultActionJwtValidation.fromMap((map['jwtValidation'] as Map).cast<String, dynamic>())).input(),
      order: map['order'] == null ? null : (map['order'] as int).input(),
      redirect: map['redirect'] == null ? null : (ListenerDefaultActionRedirect.fromMap((map['redirect'] as Map).cast<String, dynamic>())).input(),
      targetGroupArn: map['targetGroupArn'] == null ? null : (map['targetGroupArn'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

