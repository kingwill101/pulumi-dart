// ignore_for_file: unused_element, unnecessary_cast

import 'main_principal_response.dart';

/// A Fleetspace properties.
class FleetspacePropertiesResponse {
  /// Maximum number of vCores database fleet manager is allowed to provision in the fleetspace.
  final int? capacityMax;
  /// Main Microsoft Entra ID principal that has admin access to all databases in the fleetspace.
  final MainPrincipalResponse? mainPrincipal;
  /// Fleetspace state.
  final String provisioningState;

  /// Creates a new [FleetspacePropertiesResponse].
  /// [capacityMax] Maximum number of vCores database fleet manager is allowed to provision in the fleetspace.
  /// [mainPrincipal] Main Microsoft Entra ID principal that has admin access to all databases in the fleetspace.
  /// [provisioningState] Fleetspace state.
  FleetspacePropertiesResponse({
    this.capacityMax,
    this.mainPrincipal,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityMax': ?capacityMax,
      'mainPrincipal': ?mainPrincipal == null ? null : mainPrincipal!.toMap(),
      'provisioningState': provisioningState,
    };
  }

  factory FleetspacePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FleetspacePropertiesResponse(
      capacityMax: map['capacityMax'] == null ? null : map['capacityMax'] as int,
      mainPrincipal: map['mainPrincipal'] == null ? null : MainPrincipalResponse.fromMap((map['mainPrincipal'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
    );
  }
}

