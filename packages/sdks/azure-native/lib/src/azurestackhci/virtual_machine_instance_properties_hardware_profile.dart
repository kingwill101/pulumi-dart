// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_instance_properties_hardware_profile_dynamic_memory_config.dart';
import 'virtual_machine_instance_properties_hardware_profile_virtual_machine_gpu.dart';

/// HardwareProfile - Specifies the hardware settings for the virtual machine instance.
class VirtualMachineInstancePropertiesHardwareProfile {
  /// Dynamic memory config
  final pulumi.Input<VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfig>? dynamicMemoryConfig;
  /// RAM in MB for the virtual machine instance
  final pulumi.Input<double>? memoryMB;
  /// number of processors for the virtual machine instance
  final pulumi.Input<int>? processors;
  /// virtualMachineGPUs - list of gpus to be attached to the virtual machine instance
  final pulumi.Input<List<VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPU>>? virtualMachineGPUs;
  /// Enum of VM Sizes
  final pulumi.Input<String>? vmSize;

  /// Creates a new [VirtualMachineInstancePropertiesHardwareProfile].
  /// [dynamicMemoryConfig] Dynamic memory config
  /// [memoryMB] RAM in MB for the virtual machine instance
  /// [processors] number of processors for the virtual machine instance
  /// [virtualMachineGPUs] virtualMachineGPUs - list of gpus to be attached to the virtual machine instance
  /// [vmSize] Enum of VM Sizes
  const VirtualMachineInstancePropertiesHardwareProfile({
    this.dynamicMemoryConfig,
    this.memoryMB,
    this.processors,
    this.virtualMachineGPUs,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicMemoryConfig': ?pulumi.Input.mapOptionalInputValue<VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfig, Map<String, dynamic>>(dynamicMemoryConfig, (value) => value.toMap()),
      'memoryMB': ?memoryMB,
      'processors': ?processors,
      'virtualMachineGPUs': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPU>, List<Map<String, dynamic>>>(virtualMachineGPUs, (value) => pulumi.Input.encodeList<VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPU, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmSize': ?vmSize,
    };
  }

  factory VirtualMachineInstancePropertiesHardwareProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesHardwareProfile(
      dynamicMemoryConfig: (() { final guardedValue = map['dynamicMemoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memoryMB: (() { final guardedValue = map['memoryMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      processors: (() { final guardedValue = map['processors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      virtualMachineGPUs: (() { final guardedValue = map['virtualMachineGPUs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPU>(guardedValue, (value) => VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPU.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

