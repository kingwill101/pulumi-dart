// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'main_principal_response.dart';

/// A Fleetspace properties.
class FleetspacePropertiesResponse {
  /// Maximum number of vCores database fleet manager is allowed to provision in the fleetspace.
  final pulumi.Input<int>? capacityMax;
  /// Main Microsoft Entra ID principal that has admin access to all databases in the fleetspace.
  final pulumi.Input<MainPrincipalResponse>? mainPrincipal;
  /// Fleetspace state.
  final pulumi.Input<String> provisioningState;

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
      'mainPrincipal': ?pulumi.Input.mapOptionalInputValue<MainPrincipalResponse, Map<String, dynamic>>(mainPrincipal, (value) => value.toMap()),
      'provisioningState': provisioningState,
    };
  }

  factory FleetspacePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FleetspacePropertiesResponse(
      capacityMax: map['capacityMax'] == null ? null : (map['capacityMax'] as int).input(),
      mainPrincipal: map['mainPrincipal'] == null ? null : (MainPrincipalResponse.fromMap((map['mainPrincipal'] as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

