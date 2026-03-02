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
      backendAddressPool: map['backendAddressPool'] == null ? null : (SubResource.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>())).input(),
      backendSettings: map['backendSettings'] == null ? null : (SubResource.fromMap((map['backendSettings'] as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      listener: map['listener'] == null ? null : (SubResource.fromMap((map['listener'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      priority: (map['priority'] as int).input(),
      ruleType: map['ruleType'] == null ? null : (map['ruleType'] as String).input(),
    );
  }
}

