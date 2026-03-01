// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_rule_actions_request_header_action.dart';
import 'frontdoor_rule_actions_response_header_action.dart';
import 'frontdoor_rule_actions_route_configuration_override_action.dart';
import 'frontdoor_rule_actions_url_redirect_action.dart';
import 'frontdoor_rule_actions_url_rewrite_action.dart';

class FrontdoorRuleActions {
  /// A `request_header_action` block as defined below.
  final List<FrontdoorRuleActionsRequestHeaderAction>? requestHeaderActions;
  /// A `response_header_action` block as defined below.
  final List<FrontdoorRuleActionsResponseHeaderAction>? responseHeaderActions;
  /// A `route_configuration_override_action` block as defined below.
  final FrontdoorRuleActionsRouteConfigurationOverrideAction? routeConfigurationOverrideAction;
  /// A `url_redirect_action` block as defined below. You may **not** have a `url_redirect_action` **and** a `url_rewrite_action` defined in the same `actions` block.
  final FrontdoorRuleActionsUrlRedirectAction? urlRedirectAction;
  /// A `url_rewrite_action` block as defined below. You may **not** have a `url_rewrite_action` **and** a `url_redirect_action` defined in the same `actions` block.
  final FrontdoorRuleActionsUrlRewriteAction? urlRewriteAction;

  /// Creates a new [FrontdoorRuleActions].
  /// [requestHeaderActions] A `request_header_action` block as defined below.
  /// [responseHeaderActions] A `response_header_action` block as defined below.
  /// [routeConfigurationOverrideAction] A `route_configuration_override_action` block as defined below.
  /// [urlRedirectAction] A `url_redirect_action` block as defined below. You may **not** have a `url_redirect_action` **and** a `url_rewrite_action` defined in the same `actions` block.
  /// [urlRewriteAction] A `url_rewrite_action` block as defined below. You may **not** have a `url_rewrite_action` **and** a `url_redirect_action` defined in the same `actions` block.
  FrontdoorRuleActions({
    this.requestHeaderActions,
    this.responseHeaderActions,
    this.routeConfigurationOverrideAction,
    this.urlRedirectAction,
    this.urlRewriteAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestHeaderActions': ?requestHeaderActions == null ? null : pulumi.Input.encodeList<FrontdoorRuleActionsRequestHeaderAction, Map<String, dynamic>>(requestHeaderActions!, (value) => value.toMap()),
      'responseHeaderActions': ?responseHeaderActions == null ? null : pulumi.Input.encodeList<FrontdoorRuleActionsResponseHeaderAction, Map<String, dynamic>>(responseHeaderActions!, (value) => value.toMap()),
      'routeConfigurationOverrideAction': ?routeConfigurationOverrideAction == null ? null : routeConfigurationOverrideAction!.toMap(),
      'urlRedirectAction': ?urlRedirectAction == null ? null : urlRedirectAction!.toMap(),
      'urlRewriteAction': ?urlRewriteAction == null ? null : urlRewriteAction!.toMap(),
    };
  }

  factory FrontdoorRuleActions.fromMap(Map<String, dynamic> map) {
    return FrontdoorRuleActions(
      requestHeaderActions: map['requestHeaderActions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleActionsRequestHeaderAction>(map['requestHeaderActions'], (value) => FrontdoorRuleActionsRequestHeaderAction.fromMap((value as Map).cast<String, dynamic>())),
      responseHeaderActions: map['responseHeaderActions'] == null ? null : pulumi.Input.decodeList<FrontdoorRuleActionsResponseHeaderAction>(map['responseHeaderActions'], (value) => FrontdoorRuleActionsResponseHeaderAction.fromMap((value as Map).cast<String, dynamic>())),
      routeConfigurationOverrideAction: map['routeConfigurationOverrideAction'] == null ? null : FrontdoorRuleActionsRouteConfigurationOverrideAction.fromMap((map['routeConfigurationOverrideAction'] as Map).cast<String, dynamic>()),
      urlRedirectAction: map['urlRedirectAction'] == null ? null : FrontdoorRuleActionsUrlRedirectAction.fromMap((map['urlRedirectAction'] as Map).cast<String, dynamic>()),
      urlRewriteAction: map['urlRewriteAction'] == null ? null : FrontdoorRuleActionsUrlRewriteAction.fromMap((map['urlRewriteAction'] as Map).cast<String, dynamic>()),
    );
  }
}

