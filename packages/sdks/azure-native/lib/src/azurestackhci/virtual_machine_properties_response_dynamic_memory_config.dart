// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualMachinePropertiesResponseDynamicMemoryConfig {
  final pulumi.Input<double>? maximumMemoryMB;
  final pulumi.Input<double>? minimumMemoryMB;
  /// Defines the amount of extra memory that should be reserved for a virtual machine at runtime, as a percentage of the total memory that the virtual machine is thought to need. This only applies to virtual systems with dynamic memory enabled. This property can be in the range of 5 to 2000.
  final pulumi.Input<int>? targetMemoryBuffer;

  /// Creates a new [VirtualMachinePropertiesResponseDynamicMemoryConfig].
  /// [maximumMemoryMB] Optional.
  /// [minimumMemoryMB] Optional.
  /// [targetMemoryBuffer] Defines the amount of extra memory that should be reserved for a virtual machine at runtime, as a percentage of the total memory that the virtual machine is thought to need. This only applies to virtual systems with dynamic memory enabled. This property can be in the range of 5 to 2000.
  VirtualMachinePropertiesResponseDynamicMemoryConfig({
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

  factory VirtualMachinePropertiesResponseDynamicMemoryConfig.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePropertiesResponseDynamicMemoryConfig(
      maximumMemoryMB: map['maximumMemoryMB'] == null ? null : (map['maximumMemoryMB']! as double).input(),
      minimumMemoryMB: map['minimumMemoryMB'] == null ? null : (map['minimumMemoryMB']! as double).input(),
      targetMemoryBuffer: map['targetMemoryBuffer'] == null ? null : (map['targetMemoryBuffer']! as int).input(),
    );
  }
}

