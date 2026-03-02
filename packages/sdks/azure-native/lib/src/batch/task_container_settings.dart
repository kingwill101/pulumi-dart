// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_host_batch_bind_mount_entry.dart';
import 'container_registry.dart';
import 'container_working_directory.dart';

/// The container settings for a task.
class TaskContainerSettings {
  /// If this array is null or be not present, container task will mount entire temporary disk drive in windows (or AZ_BATCH_NODE_ROOT_DIR in Linux). It won't' mount any data paths into container if this array is set as empty.
  final pulumi.Input<List<ContainerHostBatchBindMountEntry>>? containerHostBatchBindMounts;
  /// These additional options are supplied as arguments to the "docker create" command, in addition to those controlled by the Batch Service.
  final pulumi.Input<String>? containerRunOptions;
  /// This is the full image reference, as would be specified to "docker pull". If no tag is provided as part of the image name, the tag ":latest" is used as a default.
  final pulumi.Input<String> imageName;
  /// This setting can be omitted if was already provided at pool creation.
  final pulumi.Input<ContainerRegistry>? registry;
  /// A flag to indicate where the container task working directory is. The default is 'taskWorkingDirectory'.
  final pulumi.Input<ContainerWorkingDirectory>? workingDirectory;

  /// Creates a new [TaskContainerSettings].
  /// [containerHostBatchBindMounts] If this array is null or be not present, container task will mount entire temporary disk drive in windows (or AZ_BATCH_NODE_ROOT_DIR in Linux). It won't' mount any data paths into container if this array is set as empty.
  /// [containerRunOptions] These additional options are supplied as arguments to the "docker create" command, in addition to those controlled by the Batch Service.
  /// [imageName] This is the full image reference, as would be specified to "docker pull". If no tag is provided as part of the image name, the tag ":latest" is used as a default.
  /// [registry] This setting can be omitted if was already provided at pool creation.
  /// [workingDirectory] A flag to indicate where the container task working directory is. The default is 'taskWorkingDirectory'.
  TaskContainerSettings({
    this.containerHostBatchBindMounts,
    this.containerRunOptions,
    required this.imageName,
    this.registry,
    this.workingDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerHostBatchBindMounts': ?pulumi.Input.mapOptionalInputValue<List<ContainerHostBatchBindMountEntry>, List<Map<String, dynamic>>>(containerHostBatchBindMounts, (value) => pulumi.Input.encodeList<ContainerHostBatchBindMountEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerRunOptions': ?containerRunOptions,
      'imageName': imageName,
      'registry': ?pulumi.Input.mapOptionalInputValue<ContainerRegistry, Map<String, dynamic>>(registry, (value) => value.toMap()),
      'workingDirectory': ?pulumi.Input.mapOptionalInputValue<ContainerWorkingDirectory, String>(workingDirectory, (value) => value.value),
    };
  }

  factory TaskContainerSettings.fromMap(Map<String, dynamic> map) {
    return TaskContainerSettings(
      containerHostBatchBindMounts: map['containerHostBatchBindMounts'] == null ? null : (pulumi.Input.decodeList<ContainerHostBatchBindMountEntry>(map['containerHostBatchBindMounts'], (value) => ContainerHostBatchBindMountEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      containerRunOptions: map['containerRunOptions'] == null ? null : (map['containerRunOptions'] as String).input(),
      imageName: (map['imageName'] as String).input(),
      registry: map['registry'] == null ? null : (ContainerRegistry.fromMap((map['registry'] as Map).cast<String, dynamic>())).input(),
      workingDirectory: map['workingDirectory'] == null ? null : (ContainerWorkingDirectory.fromValue(map['workingDirectory'] as String)).input(),
    );
  }
}

