// ignore_for_file: unused_element, unnecessary_cast


/// GPU properties - describes the GPU configuration.
class VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPUResponse {
  /// GPU assignment type
  final String assignmentType;
  /// Name of the GPU
  final String? gpuName;
  /// Size of gpu partition in MB for GPU-P
  final double? partitionSizeMB;

  /// Creates a new [VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPUResponse].
  /// [assignmentType] GPU assignment type
  /// [gpuName] Name of the GPU
  /// [partitionSizeMB] Size of gpu partition in MB for GPU-P
  VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPUResponse({
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

  factory VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPUResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPUResponse(
      assignmentType: map['assignmentType'] as String,
      gpuName: map['gpuName'] == null ? null : map['gpuName'] as String,
      partitionSizeMB: map['partitionSizeMB'] == null ? null : map['partitionSizeMB'] as double,
    );
  }
}

