// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_config_response.dart';

/// Runtime using Virtual Machine for computing.
class VirtualMachineResponse2 {
  /// The unique identifier of the Managed Compute Engine instance.
  final String instanceId;

  /// The user-friendly name of the Managed Compute Engine instance.
  final String instanceName;

  /// Virtual Machine configuration settings.
  final VirtualMachineConfigResponse virtualMachineConfig;

  VirtualMachineResponse2({
    required this.instanceId,
    required this.instanceName,
    required this.virtualMachineConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['instanceId'] = instanceId;
    map['instanceName'] = instanceName;
    map['virtualMachineConfig'] = virtualMachineConfig.toMap();
    return map;
  }

  factory VirtualMachineResponse2.fromMap(Map<String, dynamic> map) {
    return VirtualMachineResponse2(
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      virtualMachineConfig: VirtualMachineConfigResponse.fromMap(
          (map['virtualMachineConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
