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
  RoutingRuleResponse({
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
      acceptedProtocols: map['acceptedProtocols'] == null ? null : ((map['acceptedProtocols']! as List).cast<String>()).input(),
      enabledState: map['enabledState'] == null ? null : (map['enabledState']! as String).input(),
      frontendEndpoints: map['frontendEndpoints'] == null ? null : (pulumi.Input.decodeList<SubResourceResponse>(map['frontendEndpoints']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      patternsToMatch: map['patternsToMatch'] == null ? null : ((map['patternsToMatch']! as List).cast<String>()).input(),
      resourceState: (map['resourceState'] as String).input(),
      routeConfiguration: map['routeConfiguration'] == null ? null : (ForwardingConfigurationResponse.fromMap((map['routeConfiguration']! as Map).cast<String, dynamic>())).input(),
      rulesEngine: map['rulesEngine'] == null ? null : (SubResourceResponse.fromMap((map['rulesEngine']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
      webApplicationFirewallPolicyLink: map['webApplicationFirewallPolicyLink'] == null ? null : (RoutingRuleUpdateParametersResponseWebApplicationFirewallPolicyLink.fromMap((map['webApplicationFirewallPolicyLink']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

