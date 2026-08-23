// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forwarding_configuration.dart';
import 'routing_rule_update_parameters_web_application_firewall_policy_link.dart';
import 'sub_resource.dart';

/// A routing rule represents a specification for traffic to treat and where to send it, along with health probe information.
class RoutingRule {
  /// Protocol schemes to match for this rule
  final pulumi.Input<List<String>>? acceptedProtocols;
  /// Whether to enable use of this rule. Permitted values are 'Enabled' or 'Disabled'
  final pulumi.Input<String>? enabledState;
  /// Frontend endpoints associated with this rule
  final pulumi.Input<List<SubResource>>? frontendEndpoints;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Resource name.
  final pulumi.Input<String>? name;
  /// The route patterns of the rule.
  final pulumi.Input<List<String>>? patternsToMatch;
  /// A reference to the routing configuration.
  final pulumi.Input<ForwardingConfiguration>? routeConfiguration;
  /// A reference to a specific Rules Engine Configuration to apply to this route.
  final pulumi.Input<SubResource>? rulesEngine;
  /// Defines the Web Application Firewall policy for each routing rule (if applicable)
  final pulumi.Input<RoutingRuleUpdateParametersWebApplicationFirewallPolicyLink>? webApplicationFirewallPolicyLink;

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
  const RoutingRule({
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
      'frontendEndpoints': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(frontendEndpoints, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'name': ?name,
      'patternsToMatch': ?patternsToMatch,
      'routeConfiguration': ?pulumi.Input.mapOptionalInputValue<ForwardingConfiguration, Map<String, dynamic>>(routeConfiguration, (value) => value.toMap()),
      'rulesEngine': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(rulesEngine, (value) => value.toMap()),
      'webApplicationFirewallPolicyLink': ?pulumi.Input.mapOptionalInputValue<RoutingRuleUpdateParametersWebApplicationFirewallPolicyLink, Map<String, dynamic>>(webApplicationFirewallPolicyLink, (value) => value.toMap()),
    };
  }

  factory RoutingRule.fromMap(Map<String, dynamic> map) {
    return RoutingRule(
      acceptedProtocols: (() { final guardedValue = map['acceptedProtocols']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enabledState: (() { final guardedValue = map['enabledState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontendEndpoints: (() { final guardedValue = map['frontendEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SubResource>(guardedValue, (value) => SubResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patternsToMatch: (() { final guardedValue = map['patternsToMatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      routeConfiguration: (() { final guardedValue = map['routeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ForwardingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rulesEngine: (() { final guardedValue = map['rulesEngine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webApplicationFirewallPolicyLink: (() { final guardedValue = map['webApplicationFirewallPolicyLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RoutingRuleUpdateParametersWebApplicationFirewallPolicyLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
