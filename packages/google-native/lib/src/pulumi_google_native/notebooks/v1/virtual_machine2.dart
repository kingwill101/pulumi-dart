// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_config.dart';

/// Runtime using Virtual Machine for computing.
class VirtualMachine2 {
  /// Virtual Machine configuration settings.
  final VirtualMachineConfig? virtualMachineConfig;

  VirtualMachine2({
    this.virtualMachineConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final virtualMachineConfigValue = virtualMachineConfig;
    if (virtualMachineConfigValue != null) {
      map['virtualMachineConfig'] = virtualMachineConfigValue.toMap();
    }
    return map;
  }

  factory VirtualMachine2.fromMap(Map<String, dynamic> map) {
    return VirtualMachine2(
      virtualMachineConfig: map['virtualMachineConfig'] == null
          ? null
          : VirtualMachineConfig.fromMap(
              (map['virtualMachineConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
