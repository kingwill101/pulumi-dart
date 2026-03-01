// ignore_for_file: unused_element, unnecessary_cast

import 'route_target_information.dart';

/// Option B configuration to be used for Management VPN.
class FabricOptionBProperties {
  /// Route Targets to be applied for outgoing routes from CE. This is for backward compatibility.
  final List<String>? exportRouteTargets;
  /// Route Targets to be applied for incoming routes into CE. This is for backward compatibility.
  final List<String>? importRouteTargets;
  /// Route Targets to be applied.
  final RouteTargetInformation? routeTargets;

  /// Creates a new [FabricOptionBProperties].
  /// [exportRouteTargets] Route Targets to be applied for outgoing routes from CE. This is for backward compatibility.
  /// [importRouteTargets] Route Targets to be applied for incoming routes into CE. This is for backward compatibility.
  /// [routeTargets] Route Targets to be applied.
  FabricOptionBProperties({
    this.exportRouteTargets,
    this.importRouteTargets,
    this.routeTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportRouteTargets': ?exportRouteTargets,
      'importRouteTargets': ?importRouteTargets,
      'routeTargets': ?routeTargets == null ? null : routeTargets!.toMap(),
    };
  }

  factory FabricOptionBProperties.fromMap(Map<String, dynamic> map) {
    return FabricOptionBProperties(
      exportRouteTargets: map['exportRouteTargets'] == null ? null : (map['exportRouteTargets'] as List).cast<String>(),
      importRouteTargets: map['importRouteTargets'] == null ? null : (map['importRouteTargets'] as List).cast<String>(),
      routeTargets: map['routeTargets'] == null ? null : RouteTargetInformation.fromMap((map['routeTargets'] as Map).cast<String, dynamic>()),
    );
  }
}

