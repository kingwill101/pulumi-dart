// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forwarding_configuration_response.dart';
import 'routing_rule_update_parameters_response_web_application_firewall_policy_link.dart';
import 'sub_resource_response.dart';

/// A routing rule represents a specification for traffic to treat and where to send it, along with health probe information.
class RoutingRuleResponse {
  /// Protocol schemes to match for this rule
  final pulumi.Input<List<String>>? acceptedProtocols;
  /// Whether to enable use of this rule. Permitted values are 'Enabled' or 'Disabled'
  final pulumi.Input<String>? enabledState;
  /// Frontend endpoints associated with this rule
  final pulumi.Input<List<SubResourceResponse>>? frontendEndpoints;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource name.
  final pulumi.Input<String>? name;
  /// The route patterns of the rule.
  final pulumi.Input<List<String>>? patternsToMatch;
  /// Resource status.
  final pulumi.Input<String> resourceState;
  /// A reference to the routing configuration.
  final pulumi.Input<ForwardingConfigurationResponse>? routeConfiguration;
  /// A reference to a specific Rules Engine Configuration to apply to this route.
  final pulumi.Input<SubResourceResponse>? rulesEngine;
  /// Resource type.
  final pulumi.Input<String> type;
  /// Defines the Web Application Firewall policy for each routing rule (if applicable)
  final pulumi.Input<RoutingRuleUpdateParametersResponseWebApplicationFirewallPolicyLink>? webApplicationFirewallPolicyLink;

  /// Creates a new [RoutingRuleResponse].
  /// [acceptedProtocols] Protocol schemes to match for this rule
  /// [enabledState] Whether to enable use of this rule. Permitted values are 'Enabled' or 'Disabled'
  /// [frontendEndpoints] Frontend endpoints associated with this rule
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [patternsToMatch] The route patterns of the rule.
  /// [resourceState] Resource status.
  /// [routeConfiguration] A reference to the routing configuration.
  /// [rulesEngine] A reference to a specific Rules Engine Configuration to apply to this route.
  /// [type] Resource type.
  /// [webApplicationFirewallPolicyLink] Defines the Web Application Firewall policy for each routing rule (if applicable)
  const RoutingRuleResponse({
    this.acceptedProtocols,
    this.enabledState,
    this.frontendEndpoints,
    this.id,
    this.name,
    this.patternsToMatch,
    required this.resourceState,
    this.routeConfiguration,
    this.rulesEngine,
    required this.type,
    this.webApplicationFirewallPolicyLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedProtocols': ?acceptedProtocols,
      'enabledState': ?enabledState,
      'frontendEndpoints': ?pulumi.Input.mapOptionalInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(frontendEndpoints, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'name': ?name,
      'patternsToMatch': ?patternsToMatch,
      'resourceState': resourceState,
      'routeConfiguration': ?pulumi.Input.mapOptionalInputValue<ForwardingConfigurationResponse, Map<String, dynamic>>(routeConfiguration, (value) => value.toMap()),
      'rulesEngine': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(rulesEngine, (value) => value.toMap()),
      'type': type,
      'webApplicationFirewallPolicyLink': ?pulumi.Input.mapOptionalInputValue<RoutingRuleUpdateParametersResponseWebApplicationFirewallPolicyLink, Map<String, dynamic>>(webApplicationFirewallPolicyLink, (value) => value.toMap()),
    };
  }

  factory RoutingRuleResponse.fromMap(Map<String, dynamic> map) {
    return RoutingRuleResponse(
      acceptedProtocols: (() { final guardedValue = map['acceptedProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabledState: (() { final guardedValue = map['enabledState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontendEndpoints: (() { final guardedValue = map['frontendEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patternsToMatch: (() { final guardedValue = map['patternsToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceState: pulumi.Input.fromValue(map['resourceState'] as String),
      routeConfiguration: (() { final guardedValue = map['routeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ForwardingConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rulesEngine: (() { final guardedValue = map['rulesEngine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      webApplicationFirewallPolicyLink: (() { final guardedValue = map['webApplicationFirewallPolicyLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutingRuleUpdateParametersResponseWebApplicationFirewallPolicyLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

