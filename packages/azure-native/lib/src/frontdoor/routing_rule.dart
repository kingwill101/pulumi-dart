// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forwarding_configuration.dart';
import 'routing_rule_update_parameters_web_application_firewall_policy_link.dart';
import 'sub_resource.dart';

/// A routing rule represents a specification for traffic to treat and where to send it, along with health probe information.
class RoutingRule {
  /// Protocol schemes to match for this rule
  final List<String>? acceptedProtocols;
  /// Whether to enable use of this rule. Permitted values are 'Enabled' or 'Disabled'
  final String? enabledState;
  /// Frontend endpoints associated with this rule
  final List<SubResource>? frontendEndpoints;
  /// Resource ID.
  final String? id;
  /// Resource name.
  final String? name;
  /// The route patterns of the rule.
  final List<String>? patternsToMatch;
  /// A reference to the routing configuration.
  final ForwardingConfiguration? routeConfiguration;
  /// A reference to a specific Rules Engine Configuration to apply to this route.
  final SubResource? rulesEngine;
  /// Defines the Web Application Firewall policy for each routing rule (if applicable)
  final RoutingRuleUpdateParametersWebApplicationFirewallPolicyLink? webApplicationFirewallPolicyLink;

  /// Creates a new [RoutingRule].
  /// [acceptedProtocols] Protocol schemes to match for this rule
  /// [enabledState] Whether to enable use of this rule. Permitted values are 'Enabled' or 'Disabled'
  /// [frontendEndpoints] Frontend endpoints associated with this rule
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [patternsToMatch] The route patterns of the rule.
  /// [routeConfiguration] A reference to the routing configuration.
  /// [rulesEngine] A reference to a specific Rules Engine Configuration to apply to this route.
  /// [webApplicationFirewallPolicyLink] Defines the Web Application Firewall policy for each routing rule (if applicable)
  RoutingRule({
    this.acceptedProtocols,
    this.enabledState,
    this.frontendEndpoints,
    this.id,
    this.name,
    this.patternsToMatch,
    this.routeConfiguration,
    this.rulesEngine,
    this.webApplicationFirewallPolicyLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptedProtocols': ?acceptedProtocols,
      'enabledState': ?enabledState,
      'frontendEndpoints': ?frontendEndpoints == null ? null : pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(frontendEndpoints!, (value) => value.toMap()),
      'id': ?id,
      'name': ?name,
      'patternsToMatch': ?patternsToMatch,
      'routeConfiguration': ?routeConfiguration == null ? null : routeConfiguration!.toMap(),
      'rulesEngine': ?rulesEngine == null ? null : rulesEngine!.toMap(),
      'webApplicationFirewallPolicyLink': ?webApplicationFirewallPolicyLink == null ? null : webApplicationFirewallPolicyLink!.toMap(),
    };
  }

  factory RoutingRule.fromMap(Map<String, dynamic> map) {
    return RoutingRule(
      acceptedProtocols: map['acceptedProtocols'] == null ? null : (map['acceptedProtocols'] as List).cast<String>(),
      enabledState: map['enabledState'] == null ? null : map['enabledState'] as String,
      frontendEndpoints: map['frontendEndpoints'] == null ? null : pulumi.Input.decodeList<SubResource>(map['frontendEndpoints'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      patternsToMatch: map['patternsToMatch'] == null ? null : (map['patternsToMatch'] as List).cast<String>(),
      routeConfiguration: map['routeConfiguration'] == null ? null : ForwardingConfiguration.fromMap((map['routeConfiguration'] as Map).cast<String, dynamic>()),
      rulesEngine: map['rulesEngine'] == null ? null : SubResource.fromMap((map['rulesEngine'] as Map).cast<String, dynamic>()),
      webApplicationFirewallPolicyLink: map['webApplicationFirewallPolicyLink'] == null ? null : RoutingRuleUpdateParametersWebApplicationFirewallPolicyLink.fromMap((map['webApplicationFirewallPolicyLink'] as Map).cast<String, dynamic>()),
    );
  }
}

