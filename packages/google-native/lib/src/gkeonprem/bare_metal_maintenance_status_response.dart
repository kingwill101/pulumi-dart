// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_machine_drain_status_response.dart';

/// Represents the maintenance status of the bare metal user cluster.
class BareMetalMaintenanceStatusResponse {
  /// The maintenance status of node machines.
  final BareMetalMachineDrainStatusResponse machineDrainStatus;

  /// Creates a new [BareMetalMaintenanceStatusResponse].
  /// [machineDrainStatus] The maintenance status of node machines.
  BareMetalMaintenanceStatusResponse({
    required this.machineDrainStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['machineDrainStatus'] = machineDrainStatus.toMap();
    return map;
  }

  factory BareMetalMaintenanceStatusResponse.fromMap(Map<String, dynamic> map) {
    return BareMetalMaintenanceStatusResponse(
      machineDrainStatus: BareMetalMachineDrainStatusResponse.fromMap(
          (map['machineDrainStatus'] as Map).cast<String, dynamic>()),
    );
  }
}
