// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_custom_domain_route_config_route.dart';

class V3CustomDomainRouteConfig {
  /// Routing Configuration List See `routes` below.
  final List<V3CustomDomainRouteConfigRoute>? routes;

  /// Creates a new [V3CustomDomainRouteConfig].
  /// [routes] Routing Configuration List See `routes` below.
  V3CustomDomainRouteConfig({
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routes': ?routes == null ? null : pulumi.Input.encodeList<V3CustomDomainRouteConfigRoute, Map<String, dynamic>>(routes!, (value) => value.toMap()),
    };
  }

  factory V3CustomDomainRouteConfig.fromMap(Map<String, dynamic> map) {
    return V3CustomDomainRouteConfig(
      routes: map['routes'] == null ? null : pulumi.Input.decodeList<V3CustomDomainRouteConfigRoute>(map['routes'], (value) => V3CustomDomainRouteConfigRoute.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

