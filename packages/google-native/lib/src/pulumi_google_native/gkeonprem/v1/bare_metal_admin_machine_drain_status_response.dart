// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'bare_metal_admin_drained_machine_response.dart';
import 'bare_metal_admin_draining_machine_response.dart';

/// BareMetalAdminMachineDrainStatus represents the status of bare metal node machines that are undergoing drain operations.
class BareMetalAdminMachineDrainStatusResponse {
  /// The list of drained machines.
  final List<BareMetalAdminDrainedMachineResponse> drainedMachines;

  /// The list of draning machines.
  final List<BareMetalAdminDrainingMachineResponse> drainingMachines;

  BareMetalAdminMachineDrainStatusResponse({
    required this.drainedMachines,
    required this.drainingMachines,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['drainedMachines'] = Input.encodeList<
        BareMetalAdminDrainedMachineResponse,
        Map<String, dynamic>>(drainedMachines, (value) => value.toMap());
    map['drainingMachines'] = Input.encodeList<
        BareMetalAdminDrainingMachineResponse,
        Map<String, dynamic>>(drainingMachines, (value) => value.toMap());
    return map;
  }

  factory BareMetalAdminMachineDrainStatusResponse.fromMap(
      Map<String, dynamic> map) {
    return BareMetalAdminMachineDrainStatusResponse(
      drainedMachines: Input.decodeList<BareMetalAdminDrainedMachineResponse>(
          map['drainedMachines'],
          (value) => BareMetalAdminDrainedMachineResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      drainingMachines: Input.decodeList<BareMetalAdminDrainingMachineResponse>(
          map['drainingMachines'],
          (value) => BareMetalAdminDrainingMachineResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
