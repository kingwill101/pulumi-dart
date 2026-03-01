// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_definition_device.dart';
import 'task_definition_kernel_capabilities.dart';
import 'task_definition_tmpfs.dart';

class TaskDefinitionLinuxParameters {
  final TaskDefinitionKernelCapabilities? capabilities;
  final List<TaskDefinitionDevice>? devices;
  final bool? initProcessEnabled;
  final int? maxSwap;
  final int? sharedMemorySize;
  final int? swappiness;
  final List<TaskDefinitionTmpfs>? tmpfs;

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
      'capabilities': ?capabilities == null ? null : capabilities!.toMap(),
      'devices': ?devices == null
          ? null
          : pulumi.Input.encodeList<TaskDefinitionDevice, Map<String, dynamic>>(
              devices!,
              (value) => value.toMap(),
            ),
      'initProcessEnabled': ?initProcessEnabled,
      'maxSwap': ?maxSwap,
      'sharedMemorySize': ?sharedMemorySize,
      'swappiness': ?swappiness,
      'tmpfs': ?tmpfs == null
          ? null
          : pulumi.Input.encodeList<TaskDefinitionTmpfs, Map<String, dynamic>>(
              tmpfs!,
              (value) => value.toMap(),
            ),
    };
  }

  factory TaskDefinitionLinuxParameters.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionLinuxParameters(
      capabilities: map['capabilities'] == null
          ? null
          : TaskDefinitionKernelCapabilities.fromMap(
              (map['capabilities'] as Map).cast<String, dynamic>(),
            ),
      devices: map['devices'] == null
          ? null
          : pulumi.Input.decodeList<TaskDefinitionDevice>(
              map['devices'],
              (value) => TaskDefinitionDevice.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      initProcessEnabled: map['initProcessEnabled'] == null
          ? null
          : map['initProcessEnabled'] as bool,
      maxSwap: map['maxSwap'] == null ? null : map['maxSwap'] as int,
      sharedMemorySize: map['sharedMemorySize'] == null
          ? null
          : map['sharedMemorySize'] as int,
      swappiness: map['swappiness'] == null ? null : map['swappiness'] as int,
      tmpfs: map['tmpfs'] == null
          ? null
          : pulumi.Input.decodeList<TaskDefinitionTmpfs>(
              map['tmpfs'],
              (value) => TaskDefinitionTmpfs.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
