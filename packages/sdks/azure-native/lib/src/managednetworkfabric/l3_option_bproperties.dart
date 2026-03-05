// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_target_information.dart';

/// Option B configuration.
class L3OptionBProperties {
  /// RouteTargets to be applied. This is used for the backward compatibility.
  final pulumi.Input<List<String>>? exportRouteTargets;
  /// RouteTargets to be applied. This is used for the backward compatibility.
  final pulumi.Input<List<String>>? importRouteTargets;
  /// RouteTargets to be applied.
  final pulumi.Input<RouteTargetInformation>? routeTargets;

  /// Creates a new [L3OptionBProperties].
  /// [exportRouteTargets] RouteTargets to be applied. This is used for the backward compatibility.
  /// [importRouteTargets] RouteTargets to be applied. This is used for the backward compatibility.
  /// [routeTargets] RouteTargets to be applied.
  L3OptionBProperties({
    this.exportRouteTargets,
    this.importRouteTargets,
    this.routeTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportRouteTargets': ?exportRouteTargets,
      'importRouteTargets': ?importRouteTargets,
      'routeTargets': ?pulumi.Input.mapOptionalInputValue<RouteTargetInformation, Map<String, dynamic>>(routeTargets, (value) => value.toMap()),
    };
  }

  factory L3OptionBProperties.fromMap(Map<String, dynamic> map) {
    return L3OptionBProperties(
      exportRouteTargets: (() { final guardedValue = map['exportRouteTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      importRouteTargets: (() { final guardedValue = map['importRouteTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      routeTargets: (() { final guardedValue = map['routeTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RouteTargetInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

