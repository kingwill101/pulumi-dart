// ignore_for_file: unused_element, unnecessary_cast


/// GPU properties - describes the GPU configuration.
class VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPU {
  /// GPU assignment type
  final String assignmentType;
  /// Name of the GPU
  final String? gpuName;
  /// Size of gpu partition in MB for GPU-P
  final double? partitionSizeMB;

  /// Creates a new [VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPU].
  /// [assignmentType] GPU assignment type
  /// [gpuName] Name of the GPU
  /// [partitionSizeMB] Size of gpu partition in MB for GPU-P
  VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPU({
    required this.assignmentType,
    this.gpuName,
    this.partitionSizeMB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignmentType': assignmentType,
      'gpuName': ?gpuName,
      'partitionSizeMB': ?partitionSizeMB,
    };
  }

  factory VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPU.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPU(
      assignmentType: map['assignmentType'] as String,
      gpuName: map['gpuName'] == null ? null : map['gpuName'] as String,
      partitionSizeMB: map['partitionSizeMB'] == null ? null : map['partitionSizeMB'] as double,
    );
  }
}

