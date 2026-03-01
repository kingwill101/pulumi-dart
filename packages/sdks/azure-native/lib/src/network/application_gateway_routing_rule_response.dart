// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Routing rule of an application gateway.
class ApplicationGatewayRoutingRuleResponse {
  /// Backend address pool resource of the application gateway.
  final SubResourceResponse? backendAddressPool;
  /// Backend settings resource of the application gateway.
  final SubResourceResponse? backendSettings;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Listener resource of the application gateway.
  final SubResourceResponse? listener;
  /// Name of the routing rule that is unique within an Application Gateway.
  final String? name;
  /// Priority of the routing rule.
  final int priority;
  /// The provisioning state of the request routing rule resource.
  final String provisioningState;
  /// Rule type.
  final String? ruleType;
  /// Type of the resource.
  final String type;

  /// Creates a new [ApplicationGatewayRoutingRuleResponse].
  /// [backendAddressPool] Backend address pool resource of the application gateway.
  /// [backendSettings] Backend settings resource of the application gateway.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [listener] Listener resource of the application gateway.
  /// [name] Name of the routing rule that is unique within an Application Gateway.
  /// [priority] Priority of the routing rule.
  /// [provisioningState] The provisioning state of the request routing rule resource.
  /// [ruleType] Rule type.
  /// [type] Type of the resource.
  ApplicationGatewayRoutingRuleResponse({
    this.backendAddressPool,
    this.backendSettings,
    required this.etag,
    this.id,
    this.listener,
    this.name,
    required this.priority,
    required this.provisioningState,
    this.ruleType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPool': ?backendAddressPool == null ? null : backendAddressPool!.toMap(),
      'backendSettings': ?backendSettings == null ? null : backendSettings!.toMap(),
      'etag': etag,
      'id': ?id,
      'listener': ?listener == null ? null : listener!.toMap(),
      'name': ?name,
      'priority': priority,
      'provisioningState': provisioningState,
      'ruleType': ?ruleType,
      'type': type,
    };
  }

  factory ApplicationGatewayRoutingRuleResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRoutingRuleResponse(
      backendAddressPool: map['backendAddressPool'] == null ? null : SubResourceResponse.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>()),
      backendSettings: map['backendSettings'] == null ? null : SubResourceResponse.fromMap((map['backendSettings'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      listener: map['listener'] == null ? null : SubResourceResponse.fromMap((map['listener'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] as int,
      provisioningState: map['provisioningState'] as String,
      ruleType: map['ruleType'] == null ? null : map['ruleType'] as String,
      type: map['type'] as String,
    );
  }
}

