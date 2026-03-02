// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_rule_action_authenticate_cognito.dart';
import 'listener_rule_action_authenticate_oidc.dart';
import 'listener_rule_action_fixed_response.dart';
import 'listener_rule_action_forward.dart';
import 'listener_rule_action_jwt_validation.dart';
import 'listener_rule_action_redirect.dart';

class ListenerRuleAction {
  /// Information for creating an authenticate action using Cognito. Required if `type` is `authenticate-cognito`.
  final pulumi.Input<ListenerRuleActionAuthenticateCognito>? authenticateCognito;
  /// Information for creating an authenticate action using OIDC. Required if `type` is `authenticate-oidc`.
  final pulumi.Input<ListenerRuleActionAuthenticateOidc>? authenticateOidc;
  /// Information for creating an action that returns a custom HTTP response. Required if `type` is `fixed-response`.
  final pulumi.Input<ListenerRuleActionFixedResponse>? fixedResponse;
  /// Configuration block for creating an action that distributes requests among one or more target groups.
  /// Specify only if `type` is `forward`.
  /// Cannot be specified with `target_group_arn`.
  final pulumi.Input<ListenerRuleActionForward>? forward;
  /// Information for creating a JWT validation action. Required if `type` is `jwt-validation`.
  final pulumi.Input<ListenerRuleActionJwtValidation>? jwtValidation;
  /// Order for the action.
  /// The action with the lowest value for order is performed first.
  /// Valid values are between `1` and `50000`.
  /// Defaults to the position in the list of actions.
  final pulumi.Input<int>? order;
  /// Information for creating a redirect action. Required if `type` is `redirect`.
  final pulumi.Input<ListenerRuleActionRedirect>? redirect;
  /// ARN of the Target Group to which to route traffic.
  /// Specify only if `type` is `forward` and you want to route to a single target group.
  /// To route to one or more target groups, use a `forward` block instead.
  /// Cannot be specified with `forward`.
  final pulumi.Input<String>? targetGroupArn;
  /// The type of routing action. Valid values are `forward`, `redirect`, `fixed-response`, `authenticate-cognito`, `authenticate-oidc` and `jwt-validation`.
  final pulumi.Input<String> type;

  /// Creates a new [ListenerRuleAction].
  /// [authenticateCognito] Information for creating an authenticate action using Cognito. Required if `type` is `authenticate-cognito`.
  /// [authenticateOidc] Information for creating an authenticate action using OIDC. Required if `type` is `authenticate-oidc`.
  /// [fixedResponse] Information for creating an action that returns a custom HTTP response. Required if `type` is `fixed-response`.
  /// [forward] Configuration block for creating an action that distributes requests among one or more target groups.
  /// [jwtValidation] Information for creating a JWT validation action. Required if `type` is `jwt-validation`.
  /// [order] Order for the action.
  /// [redirect] Information for creating a redirect action. Required if `type` is `redirect`.
  /// [targetGroupArn] ARN of the Target Group to which to route traffic.
  /// [type] The type of routing action. Valid values are `forward`, `redirect`, `fixed-response`, `authenticate-cognito`, `authenticate-oidc` and `jwt-validation`.
  ListenerRuleAction({
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
      'authenticateCognito': ?pulumi.Input.mapOptionalInputValue<ListenerRuleActionAuthenticateCognito, Map<String, dynamic>>(authenticateCognito, (value) => value.toMap()),
      'authenticateOidc': ?pulumi.Input.mapOptionalInputValue<ListenerRuleActionAuthenticateOidc, Map<String, dynamic>>(authenticateOidc, (value) => value.toMap()),
      'fixedResponse': ?pulumi.Input.mapOptionalInputValue<ListenerRuleActionFixedResponse, Map<String, dynamic>>(fixedResponse, (value) => value.toMap()),
      'forward': ?pulumi.Input.mapOptionalInputValue<ListenerRuleActionForward, Map<String, dynamic>>(forward, (value) => value.toMap()),
      'jwtValidation': ?pulumi.Input.mapOptionalInputValue<ListenerRuleActionJwtValidation, Map<String, dynamic>>(jwtValidation, (value) => value.toMap()),
      'order': ?order,
      'redirect': ?pulumi.Input.mapOptionalInputValue<ListenerRuleActionRedirect, Map<String, dynamic>>(redirect, (value) => value.toMap()),
      'targetGroupArn': ?targetGroupArn,
      'type': type,
    };
  }

  factory ListenerRuleAction.fromMap(Map<String, dynamic> map) {
    return ListenerRuleAction(
      authenticateCognito: map['authenticateCognito'] == null ? null : (ListenerRuleActionAuthenticateCognito.fromMap((map['authenticateCognito'] as Map).cast<String, dynamic>())).input(),
      authenticateOidc: map['authenticateOidc'] == null ? null : (ListenerRuleActionAuthenticateOidc.fromMap((map['authenticateOidc'] as Map).cast<String, dynamic>())).input(),
      fixedResponse: map['fixedResponse'] == null ? null : (ListenerRuleActionFixedResponse.fromMap((map['fixedResponse'] as Map).cast<String, dynamic>())).input(),
      forward: map['forward'] == null ? null : (ListenerRuleActionForward.fromMap((map['forward'] as Map).cast<String, dynamic>())).input(),
      jwtValidation: map['jwtValidation'] == null ? null : (ListenerRuleActionJwtValidation.fromMap((map['jwtValidation'] as Map).cast<String, dynamic>())).input(),
      order: map['order'] == null ? null : (map['order'] as int).input(),
      redirect: map['redirect'] == null ? null : (ListenerRuleActionRedirect.fromMap((map['redirect'] as Map).cast<String, dynamic>())).input(),
      targetGroupArn: map['targetGroupArn'] == null ? null : (map['targetGroupArn'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

