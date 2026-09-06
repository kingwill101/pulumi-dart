// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachinePropertiesDynamicMemoryConfig {
  final pulumi.Input<double?>? maximumMemoryMB;
  final pulumi.Input<double?>? minimumMemoryMB;
  /// Defines the amount of extra memory that should be reserved for a virtual machine at runtime, as a percentage of the total memory that the virtual machine is thought to need. This only applies to virtual systems with dynamic memory enabled. This property can be in the range of 5 to 2000.
  final pulumi.Input<int?>? targetMemoryBuffer;

  /// Creates a new [VirtualMachinePropertiesDynamicMemoryConfig].
  /// [maximumMemoryMB] Optional.
  /// [minimumMemoryMB] Optional.
  /// [targetMemoryBuffer] Defines the amount of extra memory that should be reserved for a virtual machine at runtime, as a percentage of the total memory that the virtual machine is thought to need. This only applies to virtual systems with dynamic memory enabled. This property can be in the range of 5 to 2000.
  const VirtualMachinePropertiesDynamicMemoryConfig({
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

  factory VirtualMachinePropertiesDynamicMemoryConfig.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesDynamicMemoryConfig(
      maximumMemoryMB: (() { final guardedValue = map['maximumMemoryMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      minimumMemoryMB: (() { final guardedValue = map['minimumMemoryMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      targetMemoryBuffer: (() { final guardedValue = map['targetMemoryBuffer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
