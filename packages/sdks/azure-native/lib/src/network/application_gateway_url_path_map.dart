// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_path_rule.dart';
import 'sub_resource.dart';

/// UrlPathMaps give a url path to the backend mapping information for PathBasedRouting.
class ApplicationGatewayUrlPathMap {
  /// Default backend address pool resource of URL path map.
  final pulumi.Input<SubResource>? defaultBackendAddressPool;
  /// Default backend http settings resource of URL path map.
  final pulumi.Input<SubResource>? defaultBackendHttpSettings;
  /// Default Load Distribution Policy resource of URL path map.
  final pulumi.Input<SubResource>? defaultLoadDistributionPolicy;
  /// Default redirect configuration resource of URL path map.
  final pulumi.Input<SubResource>? defaultRedirectConfiguration;
  /// Default Rewrite rule set resource of URL path map.
  final pulumi.Input<SubResource>? defaultRewriteRuleSet;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the URL path map that is unique within an Application Gateway.
  final pulumi.Input<String>? name;
  /// Path rule of URL path map resource.
  final pulumi.Input<List<ApplicationGatewayPathRule>>? pathRules;

  /// Creates a new [ApplicationGatewayUrlPathMap].
  /// [defaultBackendAddressPool] Default backend address pool resource of URL path map.
  /// [defaultBackendHttpSettings] Default backend http settings resource of URL path map.
  /// [defaultLoadDistributionPolicy] Default Load Distribution Policy resource of URL path map.
  /// [defaultRedirectConfiguration] Default redirect configuration resource of URL path map.
  /// [defaultRewriteRuleSet] Default Rewrite rule set resource of URL path map.
  /// [id] Resource ID.
  /// [name] Name of the URL path map that is unique within an Application Gateway.
  /// [pathRules] Path rule of URL path map resource.
  ApplicationGatewayUrlPathMap({
    this.defaultBackendAddressPool,
    this.defaultBackendHttpSettings,
    this.defaultLoadDistributionPolicy,
    this.defaultRedirectConfiguration,
    this.defaultRewriteRuleSet,
    this.id,
    this.name,
    this.pathRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultBackendAddressPool': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(defaultBackendAddressPool, (value) => value.toMap()),
      'defaultBackendHttpSettings': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(defaultBackendHttpSettings, (value) => value.toMap()),
      'defaultLoadDistributionPolicy': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(defaultLoadDistributionPolicy, (value) => value.toMap()),
      'defaultRedirectConfiguration': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(defaultRedirectConfiguration, (value) => value.toMap()),
      'defaultRewriteRuleSet': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(defaultRewriteRuleSet, (value) => value.toMap()),
      'id': ?id,
      'name': ?name,
      'pathRules': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayPathRule>, List<Map<String, dynamic>>>(pathRules, (value) => pulumi.Input.encodeList<ApplicationGatewayPathRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationGatewayUrlPathMap.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayUrlPathMap(
      defaultBackendAddressPool: map['defaultBackendAddressPool'] == null ? null : (SubResource.fromMap((map['defaultBackendAddressPool'] as Map).cast<String, dynamic>())).input(),
      defaultBackendHttpSettings: map['defaultBackendHttpSettings'] == null ? null : (SubResource.fromMap((map['defaultBackendHttpSettings'] as Map).cast<String, dynamic>())).input(),
      defaultLoadDistributionPolicy: map['defaultLoadDistributionPolicy'] == null ? null : (SubResource.fromMap((map['defaultLoadDistributionPolicy'] as Map).cast<String, dynamic>())).input(),
      defaultRedirectConfiguration: map['defaultRedirectConfiguration'] == null ? null : (SubResource.fromMap((map['defaultRedirectConfiguration'] as Map).cast<String, dynamic>())).input(),
      defaultRewriteRuleSet: map['defaultRewriteRuleSet'] == null ? null : (SubResource.fromMap((map['defaultRewriteRuleSet'] as Map).cast<String, dynamic>())).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      pathRules: map['pathRules'] == null ? null : (pulumi.Input.decodeList<ApplicationGatewayPathRule>(map['pathRules'], (value) => ApplicationGatewayPathRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

