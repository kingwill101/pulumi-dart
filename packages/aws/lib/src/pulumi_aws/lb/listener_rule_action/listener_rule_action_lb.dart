// ignore_for_file: unused_element, unnecessary_cast

import '../listener_rule_action_authenticate_cognito/listener_rule_action_authenticate_cognito_lb.dart';
import '../listener_rule_action_authenticate_oidc/listener_rule_action_authenticate_oidc_lb.dart';
import '../listener_rule_action_fixed_response/listener_rule_action_fixed_response_lb.dart';
import '../listener_rule_action_forward/listener_rule_action_forward_lb.dart';
import '../listener_rule_action_jwt_validation/listener_rule_action_jwt_validation_lb.dart';
import '../listener_rule_action_redirect/listener_rule_action_redirect_lb.dart';

class ListenerRuleActionLb {
  /// Information for creating an authenticate action using Cognito. Required if `type` is `authenticate-cognito`.
  final ListenerRuleActionAuthenticateCognitoLb? authenticateCognito;

  /// Information for creating an authenticate action using OIDC. Required if `type` is `authenticate-oidc`.
  final ListenerRuleActionAuthenticateOidcLb? authenticateOidc;

  /// Information for creating an action that returns a custom HTTP response. Required if `type` is `fixed-response`.
  final ListenerRuleActionFixedResponseLb? fixedResponse;

  /// Configuration block for creating an action that distributes requests among one or more target groups.
  /// Specify only if `type` is `forward`.
  /// Cannot be specified with `target_group_arn`.
  final ListenerRuleActionForwardLb? forward;

  /// Information for creating a JWT validation action. Required if `type` is `jwt-validation`.
  final ListenerRuleActionJwtValidationLb? jwtValidation;

  /// Order for the action.
  /// The action with the lowest value for order is performed first.
  /// Valid values are between `1` and `50000`.
  /// Defaults to the position in the list of actions.
  final int? order;

  /// Information for creating a redirect action. Required if `type` is `redirect`.
  final ListenerRuleActionRedirectLb? redirect;

  /// ARN of the Target Group to which to route traffic.
  /// Specify only if `type` is `forward` and you want to route to a single target group.
  /// To route to one or more target groups, use a `forward` block instead.
  /// Cannot be specified with `forward`.
  final String? targetGroupArn;

  /// The type of routing action. Valid values are `forward`, `redirect`, `fixed-response`, `authenticate-cognito`, `authenticate-oidc` and `jwt-validation`.
  final String type;

  ListenerRuleActionLb({
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

  factory ListenerRuleActionLb.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionLb(
      authenticateCognito: map['authenticateCognito'] == null
          ? null
          : ListenerRuleActionAuthenticateCognitoLb.fromMap(
              (map['authenticateCognito'] as Map).cast<String, dynamic>()),
      authenticateOidc: map['authenticateOidc'] == null
          ? null
          : ListenerRuleActionAuthenticateOidcLb.fromMap(
              (map['authenticateOidc'] as Map).cast<String, dynamic>()),
      fixedResponse: map['fixedResponse'] == null
          ? null
          : ListenerRuleActionFixedResponseLb.fromMap(
              (map['fixedResponse'] as Map).cast<String, dynamic>()),
      forward: map['forward'] == null
          ? null
          : ListenerRuleActionForwardLb.fromMap(
              (map['forward'] as Map).cast<String, dynamic>()),
      jwtValidation: map['jwtValidation'] == null
          ? null
          : ListenerRuleActionJwtValidationLb.fromMap(
              (map['jwtValidation'] as Map).cast<String, dynamic>()),
      order: map['order'] == null ? null : map['order'] as int,
      redirect: map['redirect'] == null
          ? null
          : ListenerRuleActionRedirectLb.fromMap(
              (map['redirect'] as Map).cast<String, dynamic>()),
      targetGroupArn: map['targetGroupArn'] == null
          ? null
          : map['targetGroupArn'] as String,
      type: map['type'] as String,
    );
  }
}
