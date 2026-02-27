// ignore_for_file: unused_element, unnecessary_cast

import '../listener_default_action_authenticate_cognito/listener_default_action_authenticate_cognito2.dart';
import '../listener_default_action_authenticate_oidc/listener_default_action_authenticate_oidc2.dart';
import '../listener_default_action_fixed_response/listener_default_action_fixed_response2.dart';
import '../listener_default_action_forward/listener_default_action_forward2.dart';
import '../listener_default_action_jwt_validation/listener_default_action_jwt_validation2.dart';
import '../listener_default_action_redirect/listener_default_action_redirect2.dart';

class ListenerDefaultAction2 {
  /// Configuration block for using Amazon Cognito to authenticate users. Specify only when `type` is `authenticate-cognito`. See below.
  final ListenerDefaultActionAuthenticateCognito2? authenticateCognito;

  /// Configuration block for an identity provider that is compliant with OpenID Connect (OIDC). Specify only when `type` is `authenticate-oidc`. See below.
  final ListenerDefaultActionAuthenticateOidc2? authenticateOidc;

  /// Information for creating an action that returns a custom HTTP response. Required if `type` is `fixed-response`.
  final ListenerDefaultActionFixedResponse2? fixedResponse;

  /// Configuration block for creating an action that distributes requests among one or more target groups. Specify only if `type` is `forward`. See below.
  final ListenerDefaultActionForward2? forward;

  /// Configuration block for creating a JWT validation action. Required if `type` is `jwt-validation`.
  final ListenerDefaultActionJwtValidation2? jwtValidation;

  /// Order for the action. The action with the lowest value for order is performed first. Valid values are between `1` and `50000`. Defaults to the position in the list of actions.
  final int? order;

  /// Configuration block for creating a redirect action. Required if `type` is `redirect`. See below.
  final ListenerDefaultActionRedirect2? redirect;

  /// ARN of the Target Group to which to route traffic. Specify only if `type` is `forward` and you want to route to a single target group. To route to one or more target groups, use a `forward` block instead. Can be specified with `forward` but ARNs must match.
  final String? targetGroupArn;

  /// Type of routing action. Valid values are `forward`, `redirect`, `fixed-response`, `authenticate-cognito`, `authenticate-oidc` and `jwt-validation`.
  ///
  /// The following arguments are optional:
  final String type;

  ListenerDefaultAction2({
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
    final map = <String, dynamic>{};
    final authenticateCognitoValue = authenticateCognito;
    if (authenticateCognitoValue != null) {
      map['authenticateCognito'] = authenticateCognitoValue.toMap();
    }
    final authenticateOidcValue = authenticateOidc;
    if (authenticateOidcValue != null) {
      map['authenticateOidc'] = authenticateOidcValue.toMap();
    }
    final fixedResponseValue = fixedResponse;
    if (fixedResponseValue != null) {
      map['fixedResponse'] = fixedResponseValue.toMap();
    }
    final forwardValue = forward;
    if (forwardValue != null) {
      map['forward'] = forwardValue.toMap();
    }
    final jwtValidationValue = jwtValidation;
    if (jwtValidationValue != null) {
      map['jwtValidation'] = jwtValidationValue.toMap();
    }
    final orderValue = order;
    if (orderValue != null) {
      map['order'] = orderValue;
    }
    final redirectValue = redirect;
    if (redirectValue != null) {
      map['redirect'] = redirectValue.toMap();
    }
    final targetGroupArnValue = targetGroupArn;
    if (targetGroupArnValue != null) {
      map['targetGroupArn'] = targetGroupArnValue;
    }
    map['type'] = type;
    return map;
  }

  factory ListenerDefaultAction2.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultAction2(
      authenticateCognito: map['authenticateCognito'] == null
          ? null
          : ListenerDefaultActionAuthenticateCognito2.fromMap(
              (map['authenticateCognito'] as Map).cast<String, dynamic>()),
      authenticateOidc: map['authenticateOidc'] == null
          ? null
          : ListenerDefaultActionAuthenticateOidc2.fromMap(
              (map['authenticateOidc'] as Map).cast<String, dynamic>()),
      fixedResponse: map['fixedResponse'] == null
          ? null
          : ListenerDefaultActionFixedResponse2.fromMap(
              (map['fixedResponse'] as Map).cast<String, dynamic>()),
      forward: map['forward'] == null
          ? null
          : ListenerDefaultActionForward2.fromMap(
              (map['forward'] as Map).cast<String, dynamic>()),
      jwtValidation: map['jwtValidation'] == null
          ? null
          : ListenerDefaultActionJwtValidation2.fromMap(
              (map['jwtValidation'] as Map).cast<String, dynamic>()),
      order: map['order'] == null ? null : map['order'] as int,
      redirect: map['redirect'] == null
          ? null
          : ListenerDefaultActionRedirect2.fromMap(
              (map['redirect'] as Map).cast<String, dynamic>()),
      targetGroupArn: map['targetGroupArn'] == null
          ? null
          : map['targetGroupArn'] as String,
      type: map['type'] as String,
    );
  }
}
