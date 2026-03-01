// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Request routing rule of an application gateway.
class ApplicationGatewayRequestRoutingRuleResponse {
  /// Backend address pool resource of the application gateway.
  final SubResourceResponse? backendAddressPool;
  /// Backend http settings resource of the application gateway.
  final SubResourceResponse? backendHttpSettings;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Http listener resource of the application gateway.
  final SubResourceResponse? httpListener;
  /// Resource ID.
  final String? id;
  /// Load Distribution Policy resource of the application gateway.
  final SubResourceResponse? loadDistributionPolicy;
  /// Name of the request routing rule that is unique within an Application Gateway.
  final String? name;
  /// Priority of the request routing rule.
  final int? priority;
  /// The provisioning state of the request routing rule resource.
  final String provisioningState;
  /// Redirect configuration resource of the application gateway.
  final SubResourceResponse? redirectConfiguration;
  /// Rewrite Rule Set resource in Basic rule of the application gateway.
  final SubResourceResponse? rewriteRuleSet;
  /// Rule type.
  final String? ruleType;
  /// Type of the resource.
  final String type;
  /// URL path map resource of the application gateway.
  final SubResourceResponse? urlPathMap;

  /// Creates a new [ApplicationGatewayRequestRoutingRuleResponse].
  /// [backendAddressPool] Backend address pool resource of the application gateway.
  /// [backendHttpSettings] Backend http settings resource of the application gateway.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [httpListener] Http listener resource of the application gateway.
  /// [id] Resource ID.
  /// [loadDistributionPolicy] Load Distribution Policy resource of the application gateway.
  /// [name] Name of the request routing rule that is unique within an Application Gateway.
  /// [priority] Priority of the request routing rule.
  /// [provisioningState] The provisioning state of the request routing rule resource.
  /// [redirectConfiguration] Redirect configuration resource of the application gateway.
  /// [rewriteRuleSet] Rewrite Rule Set resource in Basic rule of the application gateway.
  /// [ruleType] Rule type.
  /// [type] Type of the resource.
  /// [urlPathMap] URL path map resource of the application gateway.
  ApplicationGatewayRequestRoutingRuleResponse({
    this.backendAddressPool,
    this.backendHttpSettings,
    required this.etag,
    this.httpListener,
    this.id,
    this.loadDistributionPolicy,
    this.name,
    this.priority,
    required this.provisioningState,
    this.redirectConfiguration,
    this.rewriteRuleSet,
    this.ruleType,
    required this.type,
    this.urlPathMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPool': ?backendAddressPool == null ? null : backendAddressPool!.toMap(),
      'backendHttpSettings': ?backendHttpSettings == null ? null : backendHttpSettings!.toMap(),
      'etag': etag,
      'httpListener': ?httpListener == null ? null : httpListener!.toMap(),
      'id': ?id,
      'loadDistributionPolicy': ?loadDistributionPolicy == null ? null : loadDistributionPolicy!.toMap(),
      'name': ?name,
      'priority': ?priority,
      'provisioningState': provisioningState,
      'redirectConfiguration': ?redirectConfiguration == null ? null : redirectConfiguration!.toMap(),
      'rewriteRuleSet': ?rewriteRuleSet == null ? null : rewriteRuleSet!.toMap(),
      'ruleType': ?ruleType,
      'type': type,
      'urlPathMap': ?urlPathMap == null ? null : urlPathMap!.toMap(),
    };
  }

  factory ApplicationGatewayRequestRoutingRuleResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRequestRoutingRuleResponse(
      backendAddressPool: map['backendAddressPool'] == null ? null : SubResourceResponse.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>()),
      backendHttpSettings: map['backendHttpSettings'] == null ? null : SubResourceResponse.fromMap((map['backendHttpSettings'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      httpListener: map['httpListener'] == null ? null : SubResourceResponse.fromMap((map['httpListener'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      loadDistributionPolicy: map['loadDistributionPolicy'] == null ? null : SubResourceResponse.fromMap((map['loadDistributionPolicy'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      provisioningState: map['provisioningState'] as String,
      redirectConfiguration: map['redirectConfiguration'] == null ? null : SubResourceResponse.fromMap((map['redirectConfiguration'] as Map).cast<String, dynamic>()),
      rewriteRuleSet: map['rewriteRuleSet'] == null ? null : SubResourceResponse.fromMap((map['rewriteRuleSet'] as Map).cast<String, dynamic>()),
      ruleType: map['ruleType'] == null ? null : map['ruleType'] as String,
      type: map['type'] as String,
      urlPathMap: map['urlPathMap'] == null ? null : SubResourceResponse.fromMap((map['urlPathMap'] as Map).cast<String, dynamic>()),
    );
  }
}

