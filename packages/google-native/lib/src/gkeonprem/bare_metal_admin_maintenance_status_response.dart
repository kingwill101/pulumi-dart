// ignore_for_file: unused_element, unnecessary_cast

import 'bare_metal_admin_machine_drain_status_response.dart';

/// BareMetalAdminMaintenanceStatus represents the maintenance status for bare metal Admin cluster CR's nodes.
class BareMetalAdminMaintenanceStatusResponse {
  /// Represents the status of draining and drained machine nodes. This is used to show the progress of cluster upgrade.
  final BareMetalAdminMachineDrainStatusResponse machineDrainStatus;

  /// Creates a new [BareMetalAdminMaintenanceStatusResponse].
  /// [machineDrainStatus] Represents the status of draining and drained machine nodes. This is used to show the progress of cluster upgrade.
  BareMetalAdminMaintenanceStatusResponse({required this.machineDrainStatus});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'machineDrainStatus': machineDrainStatus.toMap()};
  }

  factory BareMetalAdminMaintenanceStatusResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return BareMetalAdminMaintenanceStatusResponse(
      machineDrainStatus: BareMetalAdminMachineDrainStatusResponse.fromMap(
        (map['machineDrainStatus'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
