// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_custom_domain_route_config_route_rewrite_config.dart';

class V3CustomDomainRouteConfigRoute {
  /// Function name
  final pulumi.Input<String>? functionName;
  /// List of supported HTTP methods
  final pulumi.Input<List<String>>? methods;
  /// Route matching rule
  final pulumi.Input<String>? path;
  /// Version or Alias
  final pulumi.Input<String>? qualifier;
  /// Override Configuration See `rewrite_config` below.
  final pulumi.Input<V3CustomDomainRouteConfigRouteRewriteConfig>? rewriteConfig;

  /// Creates a new [V3CustomDomainRouteConfigRoute].
  /// [functionName] Function name
  /// [methods] List of supported HTTP methods
  /// [path] Route matching rule
  /// [qualifier] Version or Alias
  /// [rewriteConfig] Override Configuration See `rewrite_config` below.
  V3CustomDomainRouteConfigRoute({
    this.functionName,
    this.methods,
    this.path,
    this.qualifier,
    this.rewriteConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionName': ?functionName,
      'methods': ?methods,
      'path': ?path,
      'qualifier': ?qualifier,
      'rewriteConfig': ?pulumi.Input.mapOptionalInputValue<V3CustomDomainRouteConfigRouteRewriteConfig, Map<String, dynamic>>(rewriteConfig, (value) => value.toMap()),
    };
  }

  factory V3CustomDomainRouteConfigRoute.fromMap(Map<String, dynamic> map) {
    return V3CustomDomainRouteConfigRoute(
      functionName: map['functionName'] == null ? null : (map['functionName'] as String).input(),
      methods: map['methods'] == null ? null : ((map['methods'] as List).cast<String>()).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      qualifier: map['qualifier'] == null ? null : (map['qualifier'] as String).input(),
      rewriteConfig: map['rewriteConfig'] == null ? null : (V3CustomDomainRouteConfigRouteRewriteConfig.fromMap((map['rewriteConfig'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

