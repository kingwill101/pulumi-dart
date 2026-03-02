// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_machine_instance_properties_hardware_profile_dynamic_memory_config_response.dart';
import 'virtual_machine_instance_properties_hardware_profile_virtual_machine_gpuresponse.dart';

/// HardwareProfile - Specifies the hardware settings for the virtual machine instance.
class VirtualMachineInstancePropertiesHardwareProfileResponse {
  /// Dynamic memory config
  final pulumi.Input<VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfigResponse>? dynamicMemoryConfig;
  /// RAM in MB for the virtual machine instance
  final pulumi.Input<double>? memoryMB;
  /// number of processors for the virtual machine instance
  final pulumi.Input<int>? processors;
  /// virtualMachineGPUs - list of gpus to be attached to the virtual machine instance
  final pulumi.Input<List<VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPUResponse>>? virtualMachineGPUs;
  /// Enum of VM Sizes
  final pulumi.Input<String>? vmSize;

  /// Creates a new [VirtualMachineInstancePropertiesHardwareProfileResponse].
  /// [dynamicMemoryConfig] Dynamic memory config
  /// [memoryMB] RAM in MB for the virtual machine instance
  /// [processors] number of processors for the virtual machine instance
  /// [virtualMachineGPUs] virtualMachineGPUs - list of gpus to be attached to the virtual machine instance
  /// [vmSize] Enum of VM Sizes
  VirtualMachineInstancePropertiesHardwareProfileResponse({
    this.dynamicMemoryConfig,
    this.memoryMB,
    this.processors,
    this.virtualMachineGPUs,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dynamicMemoryConfig': ?pulumi.Input.mapOptionalInputValue<VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfigResponse, Map<String, dynamic>>(dynamicMemoryConfig, (value) => value.toMap()),
      'memoryMB': ?memoryMB,
      'processors': ?processors,
      'virtualMachineGPUs': ?pulumi.Input.mapOptionalInputValue<List<VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPUResponse>, List<Map<String, dynamic>>>(virtualMachineGPUs, (value) => pulumi.Input.encodeList<VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPUResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmSize': ?vmSize,
    };
  }

  factory VirtualMachineInstancePropertiesHardwareProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachineInstancePropertiesHardwareProfileResponse(
      dynamicMemoryConfig: map['dynamicMemoryConfig'] == null ? null : (VirtualMachineInstancePropertiesHardwareProfileDynamicMemoryConfigResponse.fromMap((map['dynamicMemoryConfig']! as Map).cast<String, dynamic>())).input(),
      memoryMB: map['memoryMB'] == null ? null : (map['memoryMB']! as double).input(),
      processors: map['processors'] == null ? null : (map['processors']! as int).input(),
      virtualMachineGPUs: map['virtualMachineGPUs'] == null ? null : (pulumi.Input.decodeList<VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPUResponse>(map['virtualMachineGPUs']!, (value) => VirtualMachineInstancePropertiesHardwareProfileVirtualMachineGPUResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vmSize: map['vmSize'] == null ? null : (map['vmSize']! as String).input(),
    );
  }
}

