// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_machine_properties_response_dynamic_memory_config.dart';

/// HardwareProfile - Specifies the hardware settings for the virtual machine.
class VirtualMachinePropertiesResponseHardwareProfile {
  final VirtualMachinePropertiesResponseDynamicMemoryConfig? dynamicMemoryConfig;
  /// RAM in MB for the virtual machine
  final double? memoryMB;
  /// number of processors for the virtual machine
  final int? processors;
  final String? vmSize;

  /// Creates a new [VirtualMachinePropertiesResponseHardwareProfile].
  /// [dynamicMemoryConfig] Optional.
  /// [memoryMB] RAM in MB for the virtual machine
  /// [processors] number of processors for the virtual machine
  /// [vmSize] Optional.
  VirtualMachinePropertiesResponseHardwareProfile({
    this.dynamicMemoryConfig,
    this.memoryMB,
    this.processors,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicMemoryConfig': ?dynamicMemoryConfig == null ? null : dynamicMemoryConfig!.toMap(),
      'memoryMB': ?memoryMB,
      'processors': ?processors,
      'vmSize': ?vmSize,
    };
  }

  factory VirtualMachinePropertiesResponseHardwareProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesResponseHardwareProfile(
      dynamicMemoryConfig: map['dynamicMemoryConfig'] == null ? null : VirtualMachinePropertiesResponseDynamicMemoryConfig.fromMap((map['dynamicMemoryConfig'] as Map).cast<String, dynamic>()),
      memoryMB: map['memoryMB'] == null ? null : map['memoryMB'] as double,
      processors: map['processors'] == null ? null : map['processors'] as int,
      vmSize: map['vmSize'] == null ? null : map['vmSize'] as String,
    );
  }
}

