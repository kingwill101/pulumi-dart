// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_properties_response_dynamic_memory_config.dart';

/// HardwareProfile - Specifies the hardware settings for the virtual machine.
class VirtualMachinePropertiesResponseHardwareProfile {
  final pulumi.Input<VirtualMachinePropertiesResponseDynamicMemoryConfig?>? dynamicMemoryConfig;
  /// RAM in MB for the virtual machine
  final pulumi.Input<double?>? memoryMB;
  /// number of processors for the virtual machine
  final pulumi.Input<int?>? processors;
  final pulumi.Input<String?>? vmSize;

  /// Creates a new [VirtualMachinePropertiesResponseHardwareProfile].
  /// [dynamicMemoryConfig] Optional.
  /// [memoryMB] RAM in MB for the virtual machine
  /// [processors] number of processors for the virtual machine
  /// [vmSize] Optional.
  VirtualMachinePropertiesResponseHardwareProfile({
    this.dynamicMemoryConfig,
    this.memoryMB,
    this.processors,
    pulumi.Input<String?>? vmSize,
  }) : vmSize = vmSize ?? pulumi.Input.fromValue('Default');

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
      dynamicMemoryConfig: (() { final guardedValue = map['dynamicMemoryConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualMachinePropertiesResponseDynamicMemoryConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      memoryMB: (() { final guardedValue = map['memoryMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      processors: (() { final guardedValue = map['processors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
