// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_dynamic_memory_config.dart';

/// HardwareProfile - Specifies the hardware settings for the virtual machine.
class VirtualMachinePropertiesHardwareProfile {
  final pulumi.Input<VirtualMachinePropertiesDynamicMemoryConfig>? dynamicMemoryConfig;
  /// RAM in MB for the virtual machine
  final pulumi.Input<double>? memoryMB;
  /// number of processors for the virtual machine
  final pulumi.Input<int>? processors;
  final pulumi.Input<String>? vmSize;

  /// Creates a new [VirtualMachinePropertiesHardwareProfile].
  /// [dynamicMemoryConfig] Optional.
  /// [memoryMB] RAM in MB for the virtual machine
  /// [processors] number of processors for the virtual machine
  /// [vmSize] Optional.
  VirtualMachinePropertiesHardwareProfile({
    this.dynamicMemoryConfig,
    this.memoryMB,
    this.processors,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicMemoryConfig': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePropertiesDynamicMemoryConfig, Map<String, dynamic>>(dynamicMemoryConfig, (value) => value.toMap()),
      'memoryMB': ?memoryMB,
      'processors': ?processors,
      'vmSize': ?vmSize,
    };
  }

  factory VirtualMachinePropertiesHardwareProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesHardwareProfile(
      dynamicMemoryConfig: map['dynamicMemoryConfig'] == null ? null : (VirtualMachinePropertiesDynamicMemoryConfig.fromMap((map['dynamicMemoryConfig']! as Map).cast<String, dynamic>())).input(),
      memoryMB: map['memoryMB'] == null ? null : (map['memoryMB']! as double).input(),
      processors: map['processors'] == null ? null : (map['processors']! as int).input(),
      vmSize: map['vmSize'] == null ? null : (map['vmSize']! as String).input(),
    );
  }
}

