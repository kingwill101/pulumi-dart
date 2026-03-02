// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Dynamic memory config
class VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfigResponse {
  /// Maximum memory in MB
  final pulumi.Input<double>? maximumMemoryMB;
  /// Minimum memory in MB
  final pulumi.Input<double>? minimumMemoryMB;
  /// Defines the amount of extra memory that should be reserved for a virtual machine instance at runtime, as a percentage of the total memory that the virtual machine instance is thought to need. This only applies to virtual systems with dynamic memory enabled. This property can be in the range of 5 to 2000.
  final pulumi.Input<int>? targetMemoryBuffer;

  /// Creates a new [VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfigResponse].
  /// [maximumMemoryMB] Maximum memory in MB
  /// [minimumMemoryMB] Minimum memory in MB
  /// [targetMemoryBuffer] Defines the amount of extra memory that should be reserved for a virtual machine instance at runtime, as a percentage of the total memory that the virtual machine instance is thought to need. This only applies to virtual systems with dynamic memory enabled. This property can be in the range of 5 to 2000.
  VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfigResponse({
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

  factory VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfigResponse(
      maximumMemoryMB: map['maximumMemoryMB'] == null ? null : (map['maximumMemoryMB']! as double).input(),
      minimumMemoryMB: map['minimumMemoryMB'] == null ? null : (map['minimumMemoryMB']! as double).input(),
      targetMemoryBuffer: map['targetMemoryBuffer'] == null ? null : (map['targetMemoryBuffer']! as int).input(),
    );
  }
}

