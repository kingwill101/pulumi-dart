// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_path_rule.dart';
import 'sub_resource.dart';

/// UrlPathMaps give a url path to the backend mapping information for PathBasedRouting.
class ApplicationGatewayUrlPathMap {
  /// Default backend address pool resource of URL path map.
  final SubResource? defaultBackendAddressPool;
  /// Default backend http settings resource of URL path map.
  final SubResource? defaultBackendHttpSettings;
  /// Default Load Distribution Policy resource of URL path map.
  final SubResource? defaultLoadDistributionPolicy;
  /// Default redirect configuration resource of URL path map.
  final SubResource? defaultRedirectConfiguration;
  /// Default Rewrite rule set resource of URL path map.
  final SubResource? defaultRewriteRuleSet;
  /// Resource ID.
  final String? id;
  /// Name of the URL path map that is unique within an Application Gateway.
  final String? name;
  /// Path rule of URL path map resource.
  final List<ApplicationGatewayPathRule>? pathRules;

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
      'defaultBackendAddressPool': ?defaultBackendAddressPool == null ? null : defaultBackendAddressPool!.toMap(),
      'defaultBackendHttpSettings': ?defaultBackendHttpSettings == null ? null : defaultBackendHttpSettings!.toMap(),
      'defaultLoadDistributionPolicy': ?defaultLoadDistributionPolicy == null ? null : defaultLoadDistributionPolicy!.toMap(),
      'defaultRedirectConfiguration': ?defaultRedirectConfiguration == null ? null : defaultRedirectConfiguration!.toMap(),
      'defaultRewriteRuleSet': ?defaultRewriteRuleSet == null ? null : defaultRewriteRuleSet!.toMap(),
      'id': ?id,
      'name': ?name,
      'pathRules': ?pathRules == null ? null : pulumi.Input.encodeList<ApplicationGatewayPathRule, Map<String, dynamic>>(pathRules!, (value) => value.toMap()),
    };
  }

  factory ApplicationGatewayUrlPathMap.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayUrlPathMap(
      defaultBackendAddressPool: map['defaultBackendAddressPool'] == null ? null : SubResource.fromMap((map['defaultBackendAddressPool'] as Map).cast<String, dynamic>()),
      defaultBackendHttpSettings: map['defaultBackendHttpSettings'] == null ? null : SubResource.fromMap((map['defaultBackendHttpSettings'] as Map).cast<String, dynamic>()),
      defaultLoadDistributionPolicy: map['defaultLoadDistributionPolicy'] == null ? null : SubResource.fromMap((map['defaultLoadDistributionPolicy'] as Map).cast<String, dynamic>()),
      defaultRedirectConfiguration: map['defaultRedirectConfiguration'] == null ? null : SubResource.fromMap((map['defaultRedirectConfiguration'] as Map).cast<String, dynamic>()),
      defaultRewriteRuleSet: map['defaultRewriteRuleSet'] == null ? null : SubResource.fromMap((map['defaultRewriteRuleSet'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      pathRules: map['pathRules'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayPathRule>(map['pathRules'], (value) => ApplicationGatewayPathRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

