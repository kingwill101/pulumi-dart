// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource.dart';

/// Routing rule of an application gateway.
class ApplicationGatewayRoutingRule {
  /// Backend address pool resource of the application gateway.
  final SubResource? backendAddressPool;
  /// Backend settings resource of the application gateway.
  final SubResource? backendSettings;
  /// Resource ID.
  final String? id;
  /// Listener resource of the application gateway.
  final SubResource? listener;
  /// Name of the routing rule that is unique within an Application Gateway.
  final String? name;
  /// Priority of the routing rule.
  final int priority;
  /// Rule type.
  final String? ruleType;

  /// Creates a new [ApplicationGatewayRoutingRule].
  /// [backendAddressPool] Backend address pool resource of the application gateway.
  /// [backendSettings] Backend settings resource of the application gateway.
  /// [id] Resource ID.
  /// [listener] Listener resource of the application gateway.
  /// [name] Name of the routing rule that is unique within an Application Gateway.
  /// [priority] Priority of the routing rule.
  /// [ruleType] Rule type.
  ApplicationGatewayRoutingRule({
    this.backendAddressPool,
    this.backendSettings,
    this.id,
    this.listener,
    this.name,
    required this.priority,
    this.ruleType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPool': ?backendAddressPool == null ? null : backendAddressPool!.toMap(),
      'backendSettings': ?backendSettings == null ? null : backendSettings!.toMap(),
      'id': ?id,
      'listener': ?listener == null ? null : listener!.toMap(),
      'name': ?name,
      'priority': priority,
      'ruleType': ?ruleType,
    };
  }

  factory ApplicationGatewayRoutingRule.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRoutingRule(
      backendAddressPool: map['backendAddressPool'] == null ? null : SubResource.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>()),
      backendSettings: map['backendSettings'] == null ? null : SubResource.fromMap((map['backendSettings'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      listener: map['listener'] == null ? null : SubResource.fromMap((map['listener'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] as int,
      ruleType: map['ruleType'] == null ? null : map['ruleType'] as String,
    );
  }
}

