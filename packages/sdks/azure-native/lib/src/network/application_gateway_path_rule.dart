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
      backendAddressPool: (() { final guardedValue = map['backendAddressPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backendHttpSettings: (() { final guardedValue = map['backendHttpSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      firewallPolicy: (() { final guardedValue = map['firewallPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadDistributionPolicy: (() { final guardedValue = map['loadDistributionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      redirectConfiguration: (() { final guardedValue = map['redirectConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rewriteRuleSet: (() { final guardedValue = map['rewriteRuleSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

