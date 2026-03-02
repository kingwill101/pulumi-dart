// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_response_dynamic_memory_config.dart';

/// HardwareProfile - Specifies the hardware settings for the virtual machine.
class VirtualMachinePropertiesResponseHardwareProfile {
  final pulumi.Input<VirtualMachinePropertiesResponseDynamicMemoryConfig>? dynamicMemoryConfig;
  /// RAM in MB for the virtual machine
  final pulumi.Input<double>? memoryMB;
  /// number of processors for the virtual machine
  final pulumi.Input<int>? processors;
  final pulumi.Input<String>? vmSize;

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
      'dynamicMemoryConfig': ?pulumi.Input.mapOptionalInputValue<VirtualMachinePropertiesResponseDynamicMemoryConfig, Map<String, dynamic>>(dynamicMemoryConfig, (value) => value.toMap()),
      'memoryMB': ?memoryMB,
      'processors': ?processors,
      'vmSize': ?vmSize,
    };
  }

  factory VirtualMachinePropertiesResponseHardwareProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesResponseHardwareProfile(
      dynamicMemoryConfig: map['dynamicMemoryConfig'] == null ? null : (VirtualMachinePropertiesResponseDynamicMemoryConfig.fromMap((map['dynamicMemoryConfig']! as Map).cast<String, dynamic>())).input(),
      memoryMB: map['memoryMB'] == null ? null : (map['memoryMB']! as double).input(),
      processors: map['processors'] == null ? null : (map['processors']! as int).input(),
      vmSize: map['vmSize'] == null ? null : (map['vmSize']! as String).input(),
    );
  }
}

