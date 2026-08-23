// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// Routing rule of an application gateway.
class ApplicationGatewayRoutingRule {
  /// Backend address pool resource of the application gateway.
  final pulumi.Input<SubResource>? backendAddressPool;
  /// Backend settings resource of the application gateway.
  final pulumi.Input<SubResource>? backendSettings;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Listener resource of the application gateway.
  final pulumi.Input<SubResource>? listener;
  /// Name of the routing rule that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Priority of the routing rule.
  final pulumi.Input<int> priority;
  /// Rule type.
  final pulumi.Input<String>? ruleType;

  /// Creates a new [ApplicationGatewayRoutingRule].
  /// [backendAddressPool] Backend address pool resource of the application gateway.
  /// [backendSettings] Backend settings resource of the application gateway.
  /// [id] Resource ID.
  /// [listener] Listener resource of the application gateway.
  /// [name] Name of the routing rule that is unique within an Application Gateway.
  /// [priority] Priority of the routing rule.
  /// [ruleType] Rule type.
  const ApplicationGatewayRoutingRule({
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
      'backendAddressPool': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(backendAddressPool, (value) => value.toMap()),
      'backendSettings': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(backendSettings, (value) => value.toMap()),
      'id': ?id,
      'listener': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(listener, (value) => value.toMap()),
      'name': ?name,
      'priority': priority,
      'ruleType': ?ruleType,
    };
  }

  factory ApplicationGatewayRoutingRule.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRoutingRule(
      backendAddressPool: (() { final guardedValue = map['backendAddressPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backendSettings: (() { final guardedValue = map['backendSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listener: (() { final guardedValue = map['listener']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      ruleType: (() { final guardedValue = map['ruleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
