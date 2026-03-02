// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_definition_device.dart';
import 'task_definition_kernel_capabilities.dart';
import 'task_definition_tmpfs.dart';

class TaskDefinitionLinuxParameters {
  final pulumi.Input<TaskDefinitionKernelCapabilities>? capabilities;
  final pulumi.Input<List<TaskDefinitionDevice>>? devices;
  final pulumi.Input<bool>? initProcessEnabled;
  final pulumi.Input<int>? maxSwap;
  final pulumi.Input<int>? sharedMemorySize;
  final pulumi.Input<int>? swappiness;
  final pulumi.Input<List<TaskDefinitionTmpfs>>? tmpfs;

  /// Creates a new [TaskDefinitionLinuxParameters].
  /// [capabilities] Optional.
  /// [devices] Optional.
  /// [initProcessEnabled] Optional.
  /// [maxSwap] Optional.
  /// [sharedMemorySize] Optional.
  /// [swappiness] Optional.
  /// [tmpfs] Optional.
  TaskDefinitionLinuxParameters({
    this.capabilities,
    this.devices,
    this.initProcessEnabled,
    this.maxSwap,
    this.sharedMemorySize,
    this.swappiness,
    this.tmpfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?pulumi.Input.mapOptionalInputValue<TaskDefinitionKernelCapabilities, Map<String, dynamic>>(capabilities, (value) => value.toMap()),
      'devices': ?pulumi.Input.mapOptionalInputValue<List<TaskDefinitionDevice>, List<Map<String, dynamic>>>(devices, (value) => pulumi.Input.encodeList<TaskDefinitionDevice, Map<String, dynamic>>(value, (value) => value.toMap())),
      'initProcessEnabled': ?initProcessEnabled,
      'maxSwap': ?maxSwap,
      'sharedMemorySize': ?sharedMemorySize,
      'swappiness': ?swappiness,
      'tmpfs': ?pulumi.Input.mapOptionalInputValue<List<TaskDefinitionTmpfs>, List<Map<String, dynamic>>>(tmpfs, (value) => pulumi.Input.encodeList<TaskDefinitionTmpfs, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TaskDefinitionLinuxParameters.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionLinuxParameters(
      capabilities: map['capabilities'] == null ? null : (TaskDefinitionKernelCapabilities.fromMap((map['capabilities'] as Map).cast<String, dynamic>())).input(),
      devices: map['devices'] == null ? null : (pulumi.Input.decodeList<TaskDefinitionDevice>(map['devices'], (value) => TaskDefinitionDevice.fromMap((value as Map).cast<String, dynamic>()))).input(),
      initProcessEnabled: map['initProcessEnabled'] == null ? null : (map['initProcessEnabled'] as bool).input(),
      maxSwap: map['maxSwap'] == null ? null : (map['maxSwap'] as int).input(),
      sharedMemorySize: map['sharedMemorySize'] == null ? null : (map['sharedMemorySize'] as int).input(),
      swappiness: map['swappiness'] == null ? null : (map['swappiness'] as int).input(),
      tmpfs: map['tmpfs'] == null ? null : (pulumi.Input.decodeList<TaskDefinitionTmpfs>(map['tmpfs'], (value) => TaskDefinitionTmpfs.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

