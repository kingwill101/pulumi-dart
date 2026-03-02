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
      backendAddressPool: map['backendAddressPool'] == null ? null : (SubResourceResponse.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>())).input(),
      backendSettings: map['backendSettings'] == null ? null : (SubResourceResponse.fromMap((map['backendSettings'] as Map).cast<String, dynamic>())).input(),
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      listener: map['listener'] == null ? null : (SubResourceResponse.fromMap((map['listener'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      priority: (map['priority'] as int).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      ruleType: map['ruleType'] == null ? null : (map['ruleType'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

