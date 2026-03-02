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
  ApplicationGatewayPathRuleResponse({
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
      backendAddressPool: map['backendAddressPool'] == null ? null : (SubResourceResponse.fromMap((map['backendAddressPool']! as Map).cast<String, dynamic>())).input(),
      backendHttpSettings: map['backendHttpSettings'] == null ? null : (SubResourceResponse.fromMap((map['backendHttpSettings']! as Map).cast<String, dynamic>())).input(),
      etag: (map['etag'] as String).input(),
      firewallPolicy: map['firewallPolicy'] == null ? null : (SubResourceResponse.fromMap((map['firewallPolicy']! as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      loadDistributionPolicy: map['loadDistributionPolicy'] == null ? null : (SubResourceResponse.fromMap((map['loadDistributionPolicy']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      paths: map['paths'] == null ? null : ((map['paths']! as List).cast<String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      redirectConfiguration: map['redirectConfiguration'] == null ? null : (SubResourceResponse.fromMap((map['redirectConfiguration']! as Map).cast<String, dynamic>())).input(),
      rewriteRuleSet: map['rewriteRuleSet'] == null ? null : (SubResourceResponse.fromMap((map['rewriteRuleSet']! as Map).cast<String, dynamic>())).input(),
      type: (map['type'] as String).input(),
    );
  }
}

