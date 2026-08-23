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
  const ApplicationGatewayRequestRoutingRule({
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
      backendAddressPool: (() { final guardedValue = map['backendAddressPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backendHttpSettings: (() { final guardedValue = map['backendHttpSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      httpListener: (() { final guardedValue = map['httpListener']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadDistributionPolicy: (() { final guardedValue = map['loadDistributionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      redirectConfiguration: (() { final guardedValue = map['redirectConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rewriteRuleSet: (() { final guardedValue = map['rewriteRuleSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ruleType: (() { final guardedValue = map['ruleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urlPathMap: (() { final guardedValue = map['urlPathMap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
