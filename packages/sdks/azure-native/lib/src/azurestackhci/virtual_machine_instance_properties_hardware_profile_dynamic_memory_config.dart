// ignore_for_file: unused_element, unnecessary_cast


/// Dynamic memory config
class VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfig {
  /// Maximum memory in MB
  final double? maximumMemoryMB;
  /// Minimum memory in MB
  final double? minimumMemoryMB;
  /// Defines the amount of extra memory that should be reserved for a virtual machine instance at runtime, as a percentage of the total memory that the virtual machine instance is thought to need. This only applies to virtual systems with dynamic memory enabled. This property can be in the range of 5 to 2000.
  final int? targetMemoryBuffer;

  /// Creates a new [VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfig].
  /// [maximumMemoryMB] Maximum memory in MB
  /// [minimumMemoryMB] Minimum memory in MB
  /// [targetMemoryBuffer] Defines the amount of extra memory that should be reserved for a virtual machine instance at runtime, as a percentage of the total memory that the virtual machine instance is thought to need. This only applies to virtual systems with dynamic memory enabled. This property can be in the range of 5 to 2000.
  VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfig({
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
      maximumMemoryMB: map['maximumMemoryMB'] == null ? null : map['maximumMemoryMB'] as double,
      minimumMemoryMB: map['minimumMemoryMB'] == null ? null : map['minimumMemoryMB'] as double,
      targetMemoryBuffer: map['targetMemoryBuffer'] == null ? null : map['targetMemoryBuffer'] as int,
    );
  }
}

