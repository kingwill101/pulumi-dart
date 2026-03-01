// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource.dart';

/// Path rule of URL path map of an application gateway.
class ApplicationGatewayPathRule {
  /// Backend address pool resource of URL path map path rule.
  final SubResource? backendAddressPool;
  /// Backend http settings resource of URL path map path rule.
  final SubResource? backendHttpSettings;
  /// Reference to the FirewallPolicy resource.
  final SubResource? firewallPolicy;
  /// Resource ID.
  final String? id;
  /// Load Distribution Policy resource of URL path map path rule.
  final SubResource? loadDistributionPolicy;
  /// Name of the path rule that is unique within an Application Gateway.
  final String? name;
  /// Path rules of URL path map.
  final List<String>? paths;
  /// Redirect configuration resource of URL path map path rule.
  final SubResource? redirectConfiguration;
  /// Rewrite rule set resource of URL path map path rule.
  final SubResource? rewriteRuleSet;

  /// Creates a new [ApplicationGatewayPathRule].
  /// [backendAddressPool] Backend address pool resource of URL path map path rule.
  /// [backendHttpSettings] Backend http settings resource of URL path map path rule.
  /// [firewallPolicy] Reference to the FirewallPolicy resource.
  /// [id] Resource ID.
  /// [loadDistributionPolicy] Load Distribution Policy resource of URL path map path rule.
  /// [name] Name of the path rule that is unique within an Application Gateway.
  /// [paths] Path rules of URL path map.
  /// [redirectConfiguration] Redirect configuration resource of URL path map path rule.
  /// [rewriteRuleSet] Rewrite rule set resource of URL path map path rule.
  ApplicationGatewayPathRule({
    this.backendAddressPool,
    this.backendHttpSettings,
    this.firewallPolicy,
    this.id,
    this.loadDistributionPolicy,
    this.name,
    this.paths,
    this.redirectConfiguration,
    this.rewriteRuleSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPool': ?backendAddressPool == null ? null : backendAddressPool!.toMap(),
      'backendHttpSettings': ?backendHttpSettings == null ? null : backendHttpSettings!.toMap(),
      'firewallPolicy': ?firewallPolicy == null ? null : firewallPolicy!.toMap(),
      'id': ?id,
      'loadDistributionPolicy': ?loadDistributionPolicy == null ? null : loadDistributionPolicy!.toMap(),
      'name': ?name,
      'paths': ?paths,
      'redirectConfiguration': ?redirectConfiguration == null ? null : redirectConfiguration!.toMap(),
      'rewriteRuleSet': ?rewriteRuleSet == null ? null : rewriteRuleSet!.toMap(),
    };
  }

  factory ApplicationGatewayPathRule.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayPathRule(
      backendAddressPool: map['backendAddressPool'] == null ? null : SubResource.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>()),
      backendHttpSettings: map['backendHttpSettings'] == null ? null : SubResource.fromMap((map['backendHttpSettings'] as Map).cast<String, dynamic>()),
      firewallPolicy: map['firewallPolicy'] == null ? null : SubResource.fromMap((map['firewallPolicy'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      loadDistributionPolicy: map['loadDistributionPolicy'] == null ? null : SubResource.fromMap((map['loadDistributionPolicy'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      paths: map['paths'] == null ? null : (map['paths'] as List).cast<String>(),
      redirectConfiguration: map['redirectConfiguration'] == null ? null : SubResource.fromMap((map['redirectConfiguration'] as Map).cast<String, dynamic>()),
      rewriteRuleSet: map['rewriteRuleSet'] == null ? null : SubResource.fromMap((map['rewriteRuleSet'] as Map).cast<String, dynamic>()),
    );
  }
}

