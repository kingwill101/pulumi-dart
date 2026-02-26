// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_admin_machine_drain_status_response.dart';

/// BareMetalAdminMaintenanceStatus represents the maintenance status for bare metal Admin cluster CR's nodes.
class BareMetalAdminMaintenanceStatusResponse {
  /// Represents the status of draining and drained machine nodes. This is used to show the progress of cluster upgrade.
  final BareMetalAdminMachineDrainStatusResponse machineDrainStatus;

  BareMetalAdminMaintenanceStatusResponse({
    required this.machineDrainStatus,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['machineDrainStatus'] = machineDrainStatus.toMap();
    return map;
  }

  factory BareMetalAdminMaintenanceStatusResponse.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminMaintenanceStatusResponse(
      machineDrainStatus: BareMetalAdminMachineDrainStatusResponse.fromMap(
          (map['machineDrainStatus'] as Map).cast<String, dynamic>()),
    );
  }
}
