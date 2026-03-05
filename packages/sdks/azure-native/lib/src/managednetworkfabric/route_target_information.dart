// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Route Target Configuration.
class RouteTargetInformation {
  /// Route Targets to be applied for outgoing routes into CE.
  final pulumi.Input<List<String>>? exportIpv4RouteTargets;
  /// Route Targets to be applied for outgoing routes from CE.
  final pulumi.Input<List<String>>? exportIpv6RouteTargets;
  /// Route Targets to be applied for incoming routes into CE.
  final pulumi.Input<List<String>>? importIpv4RouteTargets;
  /// Route Targets to be applied for incoming routes from CE.
  final pulumi.Input<List<String>>? importIpv6RouteTargets;

  /// Creates a new [RouteTargetInformation].
  /// [exportIpv4RouteTargets] Route Targets to be applied for outgoing routes into CE.
  /// [exportIpv6RouteTargets] Route Targets to be applied for outgoing routes from CE.
  /// [importIpv4RouteTargets] Route Targets to be applied for incoming routes into CE.
  /// [importIpv6RouteTargets] Route Targets to be applied for incoming routes from CE.
  RouteTargetInformation({
    this.exportIpv4RouteTargets,
    this.exportIpv6RouteTargets,
    this.importIpv4RouteTargets,
    this.importIpv6RouteTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exportIpv4RouteTargets': ?exportIpv4RouteTargets,
      'exportIpv6RouteTargets': ?exportIpv6RouteTargets,
      'importIpv4RouteTargets': ?importIpv4RouteTargets,
      'importIpv6RouteTargets': ?importIpv6RouteTargets,
    };
  }

  factory RouteTargetInformation.fromMap(Map<String, dynamic> map) {
    return RouteTargetInformation(
      exportIpv4RouteTargets: (() { final guardedValue = map['exportIpv4RouteTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      exportIpv6RouteTargets: (() { final guardedValue = map['exportIpv6RouteTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      importIpv4RouteTargets: (() { final guardedValue = map['importIpv4RouteTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      importIpv6RouteTargets: (() { final guardedValue = map['importIpv6RouteTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

