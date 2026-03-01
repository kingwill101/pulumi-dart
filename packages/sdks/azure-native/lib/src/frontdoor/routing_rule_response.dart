// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forwarding_configuration_response.dart';
import 'routing_rule_update_parameters_response_web_application_firewall_policy_link.dart';
import 'sub_resource_response.dart';

/// A routing rule represents a specification for traffic to treat and where to send it, along with health probe information.
class RoutingRuleResponse {
  /// Protocol schemes to match for this rule
  final List<String>? acceptedProtocols;
  /// Whether to enable use of this rule. Permitted values are 'Enabled' or 'Disabled'
  final String? enabledState;
  /// Frontend endpoints associated with this rule
  final List<SubResourceResponse>? frontendEndpoints;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// The route patterns of the rule.
  final List<String>? patternsToMatch;
  /// Resource status.
  final String resourceState;
  /// A reference to the routing configuration.
  final ForwardingConfigurationResponse? routeConfiguration;
  /// A reference to a specific Rules Engine Configuration to apply to this route.
  final SubResourceResponse? rulesEngine;
  /// Resource type.
  final String type;
  /// Defines the Web Application Firewall policy for each routing rule (if applicable)
  final RoutingRuleUpdateParametersResponseWebApplicationFirewallPolicyLink? webApplicationFirewallPolicyLink;

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
      'frontendEndpoints': ?frontendEndpoints == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(frontendEndpoints!, (value) => value.toMap()),
      'id': ?id,
      'name': ?name,
      'patternsToMatch': ?patternsToMatch,
      'resourceState': resourceState,
      'routeConfiguration': ?routeConfiguration == null ? null : routeConfiguration!.toMap(),
      'rulesEngine': ?rulesEngine == null ? null : rulesEngine!.toMap(),
      'type': type,
      'webApplicationFirewallPolicyLink': ?webApplicationFirewallPolicyLink == null ? null : webApplicationFirewallPolicyLink!.toMap(),
    };
  }

  factory RoutingRuleResponse.fromMap(Map<String, dynamic> map) {
    return RoutingRuleResponse(
      acceptedProtocols: map['acceptedProtocols'] == null ? null : (map['acceptedProtocols'] as List).cast<String>(),
      enabledState: map['enabledState'] == null ? null : map['enabledState'] as String,
      frontendEndpoints: map['frontendEndpoints'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['frontendEndpoints'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      patternsToMatch: map['patternsToMatch'] == null ? null : (map['patternsToMatch'] as List).cast<String>(),
      resourceState: map['resourceState'] as String,
      routeConfiguration: map['routeConfiguration'] == null ? null : ForwardingConfigurationResponse.fromMap((map['routeConfiguration'] as Map).cast<String, dynamic>()),
      rulesEngine: map['rulesEngine'] == null ? null : SubResourceResponse.fromMap((map['rulesEngine'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      webApplicationFirewallPolicyLink: map['webApplicationFirewallPolicyLink'] == null ? null : RoutingRuleUpdateParametersResponseWebApplicationFirewallPolicyLink.fromMap((map['webApplicationFirewallPolicyLink'] as Map).cast<String, dynamic>()),
    );
  }
}

