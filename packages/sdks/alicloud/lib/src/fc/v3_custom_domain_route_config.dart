// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v3_custom_domain_route_config_route.dart';

class V3CustomDomainRouteConfig {
  /// Routing Configuration List See `routes` below.
  final pulumi.Input<List<V3CustomDomainRouteConfigRoute>>? routes;

  /// Creates a new [V3CustomDomainRouteConfig].
  /// [routes] Routing Configuration List See `routes` below.
  const V3CustomDomainRouteConfig({
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'routes': ?pulumi.Input.mapOptionalInputValue<List<V3CustomDomainRouteConfigRoute>, List<Map<String, dynamic>>>(routes, (value) => pulumi.Input.encodeList<V3CustomDomainRouteConfigRoute, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory V3CustomDomainRouteConfig.fromMap(Map<String, dynamic> map) {
    return V3CustomDomainRouteConfig(
      routes: (() { final guardedValue = map['routes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V3CustomDomainRouteConfigRoute>(guardedValue, (value) => V3CustomDomainRouteConfigRoute.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

