// ignore_for_file: unused_element, unnecessary_cast

import 'main_principal.dart';

/// A Fleetspace properties.
class FleetspaceProperties {
  /// Maximum number of vCores database fleet manager is allowed to provision in the fleetspace.
  final int? capacityMax;
  /// Main Microsoft Entra ID principal that has admin access to all databases in the fleetspace.
  final MainPrincipal? mainPrincipal;

  /// Creates a new [FleetspaceProperties].
  /// [capacityMax] Maximum number of vCores database fleet manager is allowed to provision in the fleetspace.
  /// [mainPrincipal] Main Microsoft Entra ID principal that has admin access to all databases in the fleetspace.
  FleetspaceProperties({
    this.capacityMax,
    this.mainPrincipal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityMax': ?capacityMax,
      'mainPrincipal': ?mainPrincipal == null ? null : mainPrincipal!.toMap(),
    };
  }

  factory FleetspaceProperties.fromMap(Map<String, dynamic> map) {
    return FleetspaceProperties(
      capacityMax: map['capacityMax'] == null ? null : map['capacityMax'] as int,
      mainPrincipal: map['mainPrincipal'] == null ? null : MainPrincipal.fromMap((map['mainPrincipal'] as Map).cast<String, dynamic>()),
    );
  }
}

