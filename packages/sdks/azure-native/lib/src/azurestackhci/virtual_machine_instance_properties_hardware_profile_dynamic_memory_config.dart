// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dynamic memory config
class VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfig {
  /// Maximum memory in MB
  final pulumi.Input<double?>? maximumMemoryMB;
  /// Minimum memory in MB
  final pulumi.Input<double?>? minimumMemoryMB;
  /// Defines the amount of extra memory that should be reserved for a virtual machine instance at runtime, as a percentage of the total memory that the virtual machine instance is thought to need. This only applies to virtual systems with dynamic memory enabled. This property can be in the range of 5 to 2000.
  final pulumi.Input<int?>? targetMemoryBuffer;

  /// Creates a new [VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfig].
  /// [maximumMemoryMB] Maximum memory in MB
  /// [minimumMemoryMB] Minimum memory in MB
  /// [targetMemoryBuffer] Defines the amount of extra memory that should be reserved for a virtual machine instance at runtime, as a percentage of the total memory that the virtual machine instance is thought to need. This only applies to virtual systems with dynamic memory enabled. This property can be in the range of 5 to 2000.
  const VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfig({
    this.maximumMemoryMB,
    this.minimumMemoryMB,
    this.targetMemoryBuffer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumMemoryMB': ?maximumMemoryMB,
      'minimumMemoryMB': ?minimumMemoryMB,
      'targetMemoryBuffer': ?targetMemoryBuffer,
    };
  }

  factory VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfig.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfig(
      maximumMemoryMB: (() { final guardedValue = map['maximumMemoryMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      minimumMemoryMB: (() { final guardedValue = map['minimumMemoryMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      targetMemoryBuffer: (() { final guardedValue = map['targetMemoryBuffer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
