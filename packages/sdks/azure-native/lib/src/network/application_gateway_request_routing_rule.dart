// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// Request routing rule of an application gateway.
class ApplicationGatewayRequestRoutingRule {
  /// Backend address pool resource of the application gateway.
  final pulumi.Input<SubResource>? backendAddressPool;
  /// Backend http settings resource of the application gateway.
  final pulumi.Input<SubResource>? backendHttpSettings;
  /// Http listener resource of the application gateway.
  final pulumi.Input<SubResource>? httpListener;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Load Distribution Policy resource of the application gateway.
  final pulumi.Input<SubResource>? loadDistributionPolicy;
  /// Name of the request routing rule that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Priority of the request routing rule.
  final pulumi.Input<int>? priority;
  /// Redirect configuration resource of the application gateway.
  final pulumi.Input<SubResource>? redirectConfiguration;
  /// Rewrite Rule Set resource in Basic rule of the application gateway.
  final pulumi.Input<SubResource>? rewriteRuleSet;
  /// Rule type.
  final pulumi.Input<String>? ruleType;
  /// URL path map resource of the application gateway.
  final pulumi.Input<SubResource>? urlPathMap;

  /// Creates a new [ApplicationGatewayRequestRoutingRule].
  /// [backendAddressPool] Backend address pool resource of the application gateway.
  /// [backendHttpSettings] Backend http settings resource of the application gateway.
  /// [httpListener] Http listener resource of the application gateway.
  /// [id] Resource ID.
  /// [loadDistributionPolicy] Load Distribution Policy resource of the application gateway.
  /// [name] Name of the request routing rule that is unique within an Application Gateway.
  /// [priority] Priority of the request routing rule.
  /// [redirectConfiguration] Redirect configuration resource of the application gateway.
  /// [rewriteRuleSet] Rewrite Rule Set resource in Basic rule of the application gateway.
  /// [ruleType] Rule type.
  /// [urlPathMap] URL path map resource of the application gateway.
  ApplicationGatewayRequestRoutingRule({
    this.backendAddressPool,
    this.backendHttpSettings,
    this.httpListener,
    this.id,
    this.loadDistributionPolicy,
    this.name,
    this.priority,
    this.redirectConfiguration,
    this.rewriteRuleSet,
    this.ruleType,
    this.urlPathMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPool': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(backendAddressPool, (value) => value.toMap()),
      'backendHttpSettings': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(backendHttpSettings, (value) => value.toMap()),
      'httpListener': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(httpListener, (value) => value.toMap()),
      'id': ?id,
      'loadDistributionPolicy': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(loadDistributionPolicy, (value) => value.toMap()),
      'name': ?name,
      'priority': ?priority,
      'redirectConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(redirectConfiguration, (value) => value.toMap()),
      'rewriteRuleSet': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(rewriteRuleSet, (value) => value.toMap()),
      'ruleType': ?ruleType,
      'urlPathMap': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(urlPathMap, (value) => value.toMap()),
    };
  }

  factory ApplicationGatewayRequestRoutingRule.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRequestRoutingRule(
      backendAddressPool: map['backendAddressPool'] == null ? null : (SubResource.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>())).input(),
      backendHttpSettings: map['backendHttpSettings'] == null ? null : (SubResource.fromMap((map['backendHttpSettings'] as Map).cast<String, dynamic>())).input(),
      httpListener: map['httpListener'] == null ? null : (SubResource.fromMap((map['httpListener'] as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      loadDistributionPolicy: map['loadDistributionPolicy'] == null ? null : (SubResource.fromMap((map['loadDistributionPolicy'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      priority: map['priority'] == null ? null : (map['priority'] as int).input(),
      redirectConfiguration: map['redirectConfiguration'] == null ? null : (SubResource.fromMap((map['redirectConfiguration'] as Map).cast<String, dynamic>())).input(),
      rewriteRuleSet: map['rewriteRuleSet'] == null ? null : (SubResource.fromMap((map['rewriteRuleSet'] as Map).cast<String, dynamic>())).input(),
      ruleType: map['ruleType'] == null ? null : (map['ruleType'] as String).input(),
      urlPathMap: map['urlPathMap'] == null ? null : (SubResource.fromMap((map['urlPathMap'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

