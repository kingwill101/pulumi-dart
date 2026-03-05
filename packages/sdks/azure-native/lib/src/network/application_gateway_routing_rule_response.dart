// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Routing rule of an application gateway.
class ApplicationGatewayRoutingRuleResponse {
  /// Backend address pool resource of the application gateway.
  final pulumi.Input<SubResourceResponse>? backendAddressPool;
  /// Backend settings resource of the application gateway.
  final pulumi.Input<SubResourceResponse>? backendSettings;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Listener resource of the application gateway.
  final pulumi.Input<SubResourceResponse>? listener;
  /// Name of the routing rule that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Priority of the routing rule.
  final pulumi.Input<int> priority;
  /// The provisioning state of the request routing rule resource.
  final pulumi.Input<String> provisioningState;
  /// Rule type.
  final pulumi.Input<String>? ruleType;
  /// Type of the resource.
  final pulumi.Input<String> type;

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
      'backendAddressPool': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(backendAddressPool, (value) => value.toMap()),
      'backendSettings': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(backendSettings, (value) => value.toMap()),
      'etag': etag,
      'id': ?id,
      'listener': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(listener, (value) => value.toMap()),
      'name': ?name,
      'priority': priority,
      'provisioningState': provisioningState,
      'ruleType': ?ruleType,
      'type': type,
    };
  }

  factory ApplicationGatewayRoutingRuleResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayRoutingRuleResponse(
      backendAddressPool: (() { final guardedValue = map['backendAddressPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backendSettings: (() { final guardedValue = map['backendSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      listener: (() { final guardedValue = map['listener']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      ruleType: (() { final guardedValue = map['ruleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

