// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_target_information.dart';

/// Option B configuration to be used for Management VPN.
class FabricOptionBProperties {
  /// Route Targets to be applied for outgoing routes from CE. This is for backward compatibility.
  final pulumi.Input<List<String>>? exportRouteTargets;

  /// Route Targets to be applied for incoming routes into CE. This is for backward compatibility.
  final pulumi.Input<List<String>>? importRouteTargets;

  /// Route Targets to be applied.
  final pulumi.Input<RouteTargetInformation>? routeTargets;

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
      'routeTargets':
          ?pulumi.Input.mapOptionalInputValue<
            RouteTargetInformation,
            Map<String, dynamic>
          >(routeTargets, (value) => value.toMap()),
    };
  }

  factory FabricOptionBProperties.fromMap(Map<String, dynamic> map) {
    return FabricOptionBProperties(
      exportRouteTargets: (() {
        final guardedValue = map['exportRouteTargets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      importRouteTargets: (() {
        final guardedValue = map['importRouteTargets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      routeTargets: (() {
        final guardedValue = map['routeTargets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RouteTargetInformation.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
