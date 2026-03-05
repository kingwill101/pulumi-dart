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
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskDefinitionKernelCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TaskDefinitionDevice>(guardedValue, (value) => TaskDefinitionDevice.fromMap((value as Map).cast<String, dynamic>()))); })(),
      initProcessEnabled: (() { final guardedValue = map['initProcessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxSwap: (() { final guardedValue = map['maxSwap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sharedMemorySize: (() { final guardedValue = map['sharedMemorySize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      swappiness: (() { final guardedValue = map['swappiness']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tmpfs: (() { final guardedValue = map['tmpfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TaskDefinitionTmpfs>(guardedValue, (value) => TaskDefinitionTmpfs.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

