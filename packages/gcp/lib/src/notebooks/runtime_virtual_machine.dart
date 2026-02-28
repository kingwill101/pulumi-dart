// ignore_for_file: unused_element, unnecessary_cast

import 'runtime_virtual_machine_virtual_machine_config.dart';

class RuntimeVirtualMachine {
  /// (Output)
  /// The unique identifier of the Managed Compute Engine instance.
  final String? instanceId;

  /// (Output)
  /// The user-friendly name of the Managed Compute Engine instance.
  final String? instanceName;

  /// Virtual Machine configuration settings.
  /// Structure is documented below.
  final RuntimeVirtualMachineVirtualMachineConfig? virtualMachineConfig;

  /// Creates a new [RuntimeVirtualMachine].
  /// [instanceId] (Output)
  /// [instanceName] (Output)
  /// [virtualMachineConfig] Virtual Machine configuration settings.
  RuntimeVirtualMachine({
    this.instanceId,
    this.instanceName,
    this.virtualMachineConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final instanceIdValue = instanceId;
    if (instanceIdValue != null) {
      map['instanceId'] = instanceIdValue;
    }
    final instanceNameValue = instanceName;
    if (instanceNameValue != null) {
      map['instanceName'] = instanceNameValue;
    }
    final virtualMachineConfigValue = virtualMachineConfig;
    if (virtualMachineConfigValue != null) {
      map['virtualMachineConfig'] = virtualMachineConfigValue.toMap();
    }
    return map;
  }

  factory RuntimeVirtualMachine.fromMap(Map<String, dynamic> map) {
    return RuntimeVirtualMachine(
      instanceId:
          map['instanceId'] == null ? null : map['instanceId'] as String,
      instanceName:
          map['instanceName'] == null ? null : map['instanceName'] as String,
      virtualMachineConfig: map['virtualMachineConfig'] == null
          ? null
          : RuntimeVirtualMachineVirtualMachineConfig.fromMap(
              (map['virtualMachineConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
