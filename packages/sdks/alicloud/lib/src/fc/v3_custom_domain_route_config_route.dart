// ignore_for_file: unused_element, unnecessary_cast

import 'v3_custom_domain_route_config_route_rewrite_config.dart';

class V3CustomDomainRouteConfigRoute {
  /// Function name
  final String? functionName;
  /// List of supported HTTP methods
  final List<String>? methods;
  /// Route matching rule
  final String? path;
  /// Version or Alias
  final String? qualifier;
  /// Override Configuration See `rewrite_config` below.
  final V3CustomDomainRouteConfigRouteRewriteConfig? rewriteConfig;

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
      'rewriteConfig': ?rewriteConfig == null ? null : rewriteConfig!.toMap(),
    };
  }

  factory V3CustomDomainRouteConfigRoute.fromMap(Map<String, dynamic> map) {
    return V3CustomDomainRouteConfigRoute(
      functionName: map['functionName'] == null ? null : map['functionName'] as String,
      methods: map['methods'] == null ? null : (map['methods'] as List).cast<String>(),
      path: map['path'] == null ? null : map['path'] as String,
      qualifier: map['qualifier'] == null ? null : map['qualifier'] as String,
      rewriteConfig: map['rewriteConfig'] == null ? null : V3CustomDomainRouteConfigRouteRewriteConfig.fromMap((map['rewriteConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

