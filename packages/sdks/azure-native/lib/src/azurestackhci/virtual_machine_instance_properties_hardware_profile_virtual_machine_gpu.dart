// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GPU properties - describes the GPU configuration.
class VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPU {
  /// GPU assignment type
  final pulumi.Input<String> assignmentType;
  /// Name of the GPU
  final pulumi.Input<String>? gpuName;
  /// Size of gpu partition in MB for GPU-P
  final pulumi.Input<double>? partitionSizeMB;

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
      assignmentType: pulumi.Input.fromValue(map['assignmentType'] as String),
      gpuName: (() { final guardedValue = map['gpuName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partitionSizeMB: (() { final guardedValue = map['partitionSizeMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

