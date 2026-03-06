// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Path rule of URL path map of an application gateway.
class ApplicationGatewayPathRuleResponse {
  /// Backend address pool resource of URL path map path rule.
  final pulumi.Input<SubResourceResponse>? backendAddressPool;
  /// Backend http settings resource of URL path map path rule.
  final pulumi.Input<SubResourceResponse>? backendHttpSettings;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Reference to the FirewallPolicy resource.
  final pulumi.Input<SubResourceResponse>? firewallPolicy;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Load Distribution Policy resource of URL path map path rule.
  final pulumi.Input<SubResourceResponse>? loadDistributionPolicy;
  /// Name of the path rule that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Path rules of URL path map.
  final pulumi.Input<List<String>>? paths;
  /// The provisioning state of the path rule resource.
  final pulumi.Input<String> provisioningState;
  /// Redirect configuration resource of URL path map path rule.
  final pulumi.Input<SubResourceResponse>? redirectConfiguration;
  /// Rewrite rule set resource of URL path map path rule.
  final pulumi.Input<SubResourceResponse>? rewriteRuleSet;
  /// Type of the resource.
  final pulumi.Input<String> type;

  /// Creates a new [ApplicationGatewayPathRuleResponse].
  /// [backendAddressPool] Backend address pool resource of URL path map path rule.
  /// [backendHttpSettings] Backend http settings resource of URL path map path rule.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [firewallPolicy] Reference to the FirewallPolicy resource.
  /// [id] Resource ID.
  /// [loadDistributionPolicy] Load Distribution Policy resource of URL path map path rule.
  /// [name] Name of the path rule that is unique within an Application Gateway.
  /// [paths] Path rules of URL path map.
  /// [provisioningState] The provisioning state of the path rule resource.
  /// [redirectConfiguration] Redirect configuration resource of URL path map path rule.
  /// [rewriteRuleSet] Rewrite rule set resource of URL path map path rule.
  /// [type] Type of the resource.
  const ApplicationGatewayPathRuleResponse({
    this.backendAddressPool,
    this.backendHttpSettings,
    required this.etag,
    this.firewallPolicy,
    this.id,
    this.loadDistributionPolicy,
    this.name,
    this.paths,
    required this.provisioningState,
    this.redirectConfiguration,
    this.rewriteRuleSet,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendAddressPool': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(backendAddressPool, (value) => value.toMap()),
      'backendHttpSettings': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(backendHttpSettings, (value) => value.toMap()),
      'etag': etag,
      'firewallPolicy': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(firewallPolicy, (value) => value.toMap()),
      'id': ?id,
      'loadDistributionPolicy': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(loadDistributionPolicy, (value) => value.toMap()),
      'name': ?name,
      'paths': ?paths,
      'provisioningState': provisioningState,
      'redirectConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(redirectConfiguration, (value) => value.toMap()),
      'rewriteRuleSet': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(rewriteRuleSet, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ApplicationGatewayPathRuleResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayPathRuleResponse(
      backendAddressPool: (() { final guardedValue = map['backendAddressPool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      backendHttpSettings: (() { final guardedValue = map['backendHttpSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      firewallPolicy: (() { final guardedValue = map['firewallPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadDistributionPolicy: (() { final guardedValue = map['loadDistributionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      redirectConfiguration: (() { final guardedValue = map['redirectConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rewriteRuleSet: (() { final guardedValue = map['rewriteRuleSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

