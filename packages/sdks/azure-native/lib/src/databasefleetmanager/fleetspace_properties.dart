// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'main_principal.dart';

/// A Fleetspace properties.
class FleetspaceProperties {
  /// Maximum number of vCores database fleet manager is allowed to provision in the fleetspace.
  final pulumi.Input<int>? capacityMax;
  /// Main Microsoft Entra ID principal that has admin access to all databases in the fleetspace.
  final pulumi.Input<MainPrincipal>? mainPrincipal;

  /// Creates a new [FleetspaceProperties].
  /// [capacityMax] Maximum number of vCores database fleet manager is allowed to provision in the fleetspace.
  /// [mainPrincipal] Main Microsoft Entra ID principal that has admin access to all databases in the fleetspace.
  const FleetspaceProperties({
    this.capacityMax,
    this.mainPrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityMax': ?capacityMax,
      'mainPrincipal': ?pulumi.Input.mapOptionalInputValue<MainPrincipal, Map<String, dynamic>>(mainPrincipal, (value) => value.toMap()),
    };
  }

  factory FleetspaceProperties.fromMap(Map<String, dynamic> map) {
    return FleetspaceProperties(
      capacityMax: (() { final guardedValue = map['capacityMax']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mainPrincipal: (() { final guardedValue = map['mainPrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MainPrincipal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

