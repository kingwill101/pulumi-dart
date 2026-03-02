// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// Path rule of URL path map of an application gateway.
class ApplicationGatewayPathRule {
  /// Backend address pool resource of URL path map path rule.
  final pulumi.Input<SubResource>? backendAddressPool;
  /// Backend http settings resource of URL path map path rule.
  final pulumi.Input<SubResource>? backendHttpSettings;
  /// Reference to the FirewallPolicy resource.
  final pulumi.Input<SubResource>? firewallPolicy;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Load Distribution Policy resource of URL path map path rule.
  final pulumi.Input<SubResource>? loadDistributionPolicy;
  /// Name of the path rule that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Path rules of URL path map.
  final pulumi.Input<List<String>>? paths;
  /// Redirect configuration resource of URL path map path rule.
  final pulumi.Input<SubResource>? redirectConfiguration;
  /// Rewrite rule set resource of URL path map path rule.
  final pulumi.Input<SubResource>? rewriteRuleSet;

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
      'backendAddressPool': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(backendAddressPool, (value) => value.toMap()),
      'backendHttpSettings': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(backendHttpSettings, (value) => value.toMap()),
      'firewallPolicy': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(firewallPolicy, (value) => value.toMap()),
      'id': ?id,
      'loadDistributionPolicy': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(loadDistributionPolicy, (value) => value.toMap()),
      'name': ?name,
      'paths': ?paths,
      'redirectConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(redirectConfiguration, (value) => value.toMap()),
      'rewriteRuleSet': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(rewriteRuleSet, (value) => value.toMap()),
    };
  }

  factory ApplicationGatewayPathRule.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayPathRule(
      backendAddressPool: map['backendAddressPool'] == null ? null : (SubResource.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>())).input(),
      backendHttpSettings: map['backendHttpSettings'] == null ? null : (SubResource.fromMap((map['backendHttpSettings'] as Map).cast<String, dynamic>())).input(),
      firewallPolicy: map['firewallPolicy'] == null ? null : (SubResource.fromMap((map['firewallPolicy'] as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      loadDistributionPolicy: map['loadDistributionPolicy'] == null ? null : (SubResource.fromMap((map['loadDistributionPolicy'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      paths: map['paths'] == null ? null : ((map['paths'] as List).cast<String>()).input(),
      redirectConfiguration: map['redirectConfiguration'] == null ? null : (SubResource.fromMap((map['redirectConfiguration'] as Map).cast<String, dynamic>())).input(),
      rewriteRuleSet: map['rewriteRuleSet'] == null ? null : (SubResource.fromMap((map['rewriteRuleSet'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

