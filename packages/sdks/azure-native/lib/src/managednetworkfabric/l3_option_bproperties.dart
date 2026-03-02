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
      exportRouteTargets: map['exportRouteTargets'] == null ? null : ((map['exportRouteTargets'] as List).cast<String>()).input(),
      importRouteTargets: map['importRouteTargets'] == null ? null : ((map['importRouteTargets'] as List).cast<String>()).input(),
      routeTargets: map['routeTargets'] == null ? null : (RouteTargetInformation.fromMap((map['routeTargets'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

