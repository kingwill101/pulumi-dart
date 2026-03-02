// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_path_rule_response.dart';
import 'sub_resource_response.dart';

/// UrlPathMaps give a url path to the backend mapping information for PathBasedRouting.
class ApplicationGatewayUrlPathMapResponse {
  /// Default backend address pool resource of URL path map.
  final pulumi.Input<SubResourceResponse>? defaultBackendAddressPool;
  /// Default backend http settings resource of URL path map.
  final pulumi.Input<SubResourceResponse>? defaultBackendHttpSettings;
  /// Default Load Distribution Policy resource of URL path map.
  final pulumi.Input<SubResourceResponse>? defaultLoadDistributionPolicy;
  /// Default redirect configuration resource of URL path map.
  final pulumi.Input<SubResourceResponse>? defaultRedirectConfiguration;
  /// Default Rewrite rule set resource of URL path map.
  final pulumi.Input<SubResourceResponse>? defaultRewriteRuleSet;
  /// A unique read-only string that changes whenever the resource is updated.
  final pulumi.Input<String> etag;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the URL path map that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Path rule of URL path map resource.
  final pulumi.Input<List<ApplicationGatewayPathRuleResponse>>? pathRules;
  /// The provisioning state of the URL path map resource.
  final pulumi.Input<String> provisioningState;
  /// Type of the resource.
  final pulumi.Input<String> type;

  /// Creates a new [ApplicationGatewayUrlPathMapResponse].
  /// [defaultBackendAddressPool] Default backend address pool resource of URL path map.
  /// [defaultBackendHttpSettings] Default backend http settings resource of URL path map.
  /// [defaultLoadDistributionPolicy] Default Load Distribution Policy resource of URL path map.
  /// [defaultRedirectConfiguration] Default redirect configuration resource of URL path map.
  /// [defaultRewriteRuleSet] Default Rewrite rule set resource of URL path map.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] Name of the URL path map that is unique within an Application Gateway.
  /// [pathRules] Path rule of URL path map resource.
  /// [provisioningState] The provisioning state of the URL path map resource.
  /// [type] Type of the resource.
  ApplicationGatewayUrlPathMapResponse({
    this.defaultBackendAddressPool,
    this.defaultBackendHttpSettings,
    this.defaultLoadDistributionPolicy,
    this.defaultRedirectConfiguration,
    this.defaultRewriteRuleSet,
    required this.etag,
    this.id,
    this.name,
    this.pathRules,
    required this.provisioningState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultBackendAddressPool': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(defaultBackendAddressPool, (value) => value.toMap()),
      'defaultBackendHttpSettings': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(defaultBackendHttpSettings, (value) => value.toMap()),
      'defaultLoadDistributionPolicy': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(defaultLoadDistributionPolicy, (value) => value.toMap()),
      'defaultRedirectConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(defaultRedirectConfiguration, (value) => value.toMap()),
      'defaultRewriteRuleSet': ?pulumi.Input.mapOptionalInputValue<SubResourceResponse, Map<String, dynamic>>(defaultRewriteRuleSet, (value) => value.toMap()),
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'pathRules': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayPathRuleResponse>, List<Map<String, dynamic>>>(pathRules, (value) => pulumi.Input.encodeList<ApplicationGatewayPathRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'type': type,
    };
  }

  factory ApplicationGatewayUrlPathMapResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayUrlPathMapResponse(
      defaultBackendAddressPool: map['defaultBackendAddressPool'] == null ? null : (SubResourceResponse.fromMap((map['defaultBackendAddressPool']! as Map).cast<String, dynamic>())).input(),
      defaultBackendHttpSettings: map['defaultBackendHttpSettings'] == null ? null : (SubResourceResponse.fromMap((map['defaultBackendHttpSettings']! as Map).cast<String, dynamic>())).input(),
      defaultLoadDistributionPolicy: map['defaultLoadDistributionPolicy'] == null ? null : (SubResourceResponse.fromMap((map['defaultLoadDistributionPolicy']! as Map).cast<String, dynamic>())).input(),
      defaultRedirectConfiguration: map['defaultRedirectConfiguration'] == null ? null : (SubResourceResponse.fromMap((map['defaultRedirectConfiguration']! as Map).cast<String, dynamic>())).input(),
      defaultRewriteRuleSet: map['defaultRewriteRuleSet'] == null ? null : (SubResourceResponse.fromMap((map['defaultRewriteRuleSet']! as Map).cast<String, dynamic>())).input(),
      etag: (map['etag'] as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      pathRules: map['pathRules'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayPathRuleResponse>(map['pathRules']!, (value) => ApplicationGatewayPathRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

