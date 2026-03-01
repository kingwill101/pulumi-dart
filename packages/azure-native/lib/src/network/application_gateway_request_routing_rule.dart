// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource.dart';

/// Request routing rule of an application gateway.
class ApplicationGatewayRequestRoutingRule {
  /// Backend address pool resource of the application gateway.
  final SubResource? backendAddressPool;
  /// Backend http settings resource of the application gateway.
  final SubResource? backendHttpSettings;
  /// Http listener resource of the application gateway.
  final SubResource? httpListener;
  /// Resource ID.
  final String? id;
  /// Load Distribution Policy resource of the application gateway.
  final SubResource? loadDistributionPolicy;
  /// Name of the request routing rule that is unique within an Application Gateway.
  final String? name;
  /// Priority of the request routing rule.
  final int? priority;
  /// Redirect configuration resource of the application gateway.
  final SubResource? redirectConfiguration;
  /// Rewrite Rule Set resource in Basic rule of the application gateway.
  final SubResource? rewriteRuleSet;
  /// Rule type.
  final String? ruleType;
  /// URL path map resource of the application gateway.
  final SubResource? urlPathMap;

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
      'backendAddressPool': ?backendAddressPool == null ? null : backendAddressPool!.toMap(),
      'backendHttpSettings': ?backendHttpSettings == null ? null : backendHttpSettings!.toMap(),
      'httpListener': ?httpListener == null ? null : httpListener!.toMap(),
      'id': ?id,
      'loadDistributionPolicy': ?loadDistributionPolicy == null ? null : loadDistributionPolicy!.toMap(),
      'name': ?name,
      'priority': ?priority,
      'redirectConfiguration': ?redirectConfiguration == null ? null : redirectConfiguration!.toMap(),
      'rewriteRuleSet': ?rewriteRuleSet == null ? null : rewriteRuleSet!.toMap(),
      'ruleType': ?ruleType,
      'urlPathMap': ?urlPathMap == null ? null : urlPathMap!.toMap(),
    };
  }

  factory ApplicationGatewayRequestRoutingRule.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRequestRoutingRule(
      backendAddressPool: map['backendAddressPool'] == null ? null : SubResource.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>()),
      backendHttpSettings: map['backendHttpSettings'] == null ? null : SubResource.fromMap((map['backendHttpSettings'] as Map).cast<String, dynamic>()),
      httpListener: map['httpListener'] == null ? null : SubResource.fromMap((map['httpListener'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      loadDistributionPolicy: map['loadDistributionPolicy'] == null ? null : SubResource.fromMap((map['loadDistributionPolicy'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      redirectConfiguration: map['redirectConfiguration'] == null ? null : SubResource.fromMap((map['redirectConfiguration'] as Map).cast<String, dynamic>()),
      rewriteRuleSet: map['rewriteRuleSet'] == null ? null : SubResource.fromMap((map['rewriteRuleSet'] as Map).cast<String, dynamic>()),
      ruleType: map['ruleType'] == null ? null : map['ruleType'] as String,
      urlPathMap: map['urlPathMap'] == null ? null : SubResource.fromMap((map['urlPathMap'] as Map).cast<String, dynamic>()),
    );
  }
}

