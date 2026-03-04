// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_dynamic_memory_config.dart';

/// HardwareProfile - Specifies the hardware settings for the virtual machine.
class VirtualMachinePropertiesHardwareProfile {
  final pulumi.Input<VirtualMachinePropertiesDynamicMemoryConfig>?
  dynamicMemoryConfig;

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
      'dynamicMemoryConfig':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualMachinePropertiesDynamicMemoryConfig,
            Map<String, dynamic>
          >(dynamicMemoryConfig, (value) => value.toMap()),
      'memoryMB': ?memoryMB,
      'processors': ?processors,
      'vmSize': ?vmSize,
    };
  }

  factory VirtualMachinePropertiesHardwareProfile.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualMachinePropertiesHardwareProfile(
      dynamicMemoryConfig: (() {
        final guardedValue = map['dynamicMemoryConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualMachinePropertiesDynamicMemoryConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      memoryMB: (() {
        final guardedValue = map['memoryMB'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      processors: (() {
        final guardedValue = map['processors'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      vmSize: (() {
        final guardedValue = map['vmSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
