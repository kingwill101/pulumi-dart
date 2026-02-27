// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_config.dart';

/// Runtime using Virtual Machine for computing.
class VirtualMachineNotebooksV1 {
  /// Virtual Machine configuration settings.
  final VirtualMachineConfig? virtualMachineConfig;

  VirtualMachineNotebooksV1({
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

  factory VirtualMachineNotebooksV1.fromMap(Map<String, dynamic> map) {
    return VirtualMachineNotebooksV1(
      virtualMachineConfig: map['virtualMachineConfig'] == null
          ? null
          : VirtualMachineConfig.fromMap(
              (map['virtualMachineConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
