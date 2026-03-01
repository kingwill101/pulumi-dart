// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Path rule of URL path map of an application gateway.
class ApplicationGatewayPathRuleResponse {
  /// Backend address pool resource of URL path map path rule.
  final SubResourceResponse? backendAddressPool;
  /// Backend http settings resource of URL path map path rule.
  final SubResourceResponse? backendHttpSettings;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Reference to the FirewallPolicy resource.
  final SubResourceResponse? firewallPolicy;
  /// Resource ID.
  final String? id;
  /// Load Distribution Policy resource of URL path map path rule.
  final SubResourceResponse? loadDistributionPolicy;
  /// Name of the path rule that is unique within an Application Gateway.
  final String? name;
  /// Path rules of URL path map.
  final List<String>? paths;
  /// The provisioning state of the path rule resource.
  final String provisioningState;
  /// Redirect configuration resource of URL path map path rule.
  final SubResourceResponse? redirectConfiguration;
  /// Rewrite rule set resource of URL path map path rule.
  final SubResourceResponse? rewriteRuleSet;
  /// Type of the resource.
  final String type;

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
      'backendAddressPool': ?backendAddressPool == null ? null : backendAddressPool!.toMap(),
      'backendHttpSettings': ?backendHttpSettings == null ? null : backendHttpSettings!.toMap(),
      'etag': etag,
      'firewallPolicy': ?firewallPolicy == null ? null : firewallPolicy!.toMap(),
      'id': ?id,
      'loadDistributionPolicy': ?loadDistributionPolicy == null ? null : loadDistributionPolicy!.toMap(),
      'name': ?name,
      'paths': ?paths,
      'provisioningState': provisioningState,
      'redirectConfiguration': ?redirectConfiguration == null ? null : redirectConfiguration!.toMap(),
      'rewriteRuleSet': ?rewriteRuleSet == null ? null : rewriteRuleSet!.toMap(),
      'type': type,
    };
  }

  factory ApplicationGatewayPathRuleResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayPathRuleResponse(
      backendAddressPool: map['backendAddressPool'] == null ? null : SubResourceResponse.fromMap((map['backendAddressPool'] as Map).cast<String, dynamic>()),
      backendHttpSettings: map['backendHttpSettings'] == null ? null : SubResourceResponse.fromMap((map['backendHttpSettings'] as Map).cast<String, dynamic>()),
      etag: map['etag'] as String,
      firewallPolicy: map['firewallPolicy'] == null ? null : SubResourceResponse.fromMap((map['firewallPolicy'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      loadDistributionPolicy: map['loadDistributionPolicy'] == null ? null : SubResourceResponse.fromMap((map['loadDistributionPolicy'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      paths: map['paths'] == null ? null : (map['paths'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      redirectConfiguration: map['redirectConfiguration'] == null ? null : SubResourceResponse.fromMap((map['redirectConfiguration'] as Map).cast<String, dynamic>()),
      rewriteRuleSet: map['rewriteRuleSet'] == null ? null : SubResourceResponse.fromMap((map['rewriteRuleSet'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

