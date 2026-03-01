// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_host_batch_bind_mount_entry_response.dart';
import 'container_registry_response.dart';

/// The container settings for a task.
class TaskContainerSettingsResponse {
  /// If this array is null or be not present, container task will mount entire temporary disk drive in windows (or AZ_BATCH_NODE_ROOT_DIR in Linux). It won't' mount any data paths into container if this array is set as empty.
  final List<ContainerHostBatchBindMountEntryResponse>? containerHostBatchBindMounts;
  /// These additional options are supplied as arguments to the "docker create" command, in addition to those controlled by the Batch Service.
  final String? containerRunOptions;
  /// This is the full image reference, as would be specified to "docker pull". If no tag is provided as part of the image name, the tag ":latest" is used as a default.
  final String imageName;
  /// This setting can be omitted if was already provided at pool creation.
  final ContainerRegistryResponse? registry;
  /// A flag to indicate where the container task working directory is. The default is 'taskWorkingDirectory'.
  final String? workingDirectory;

  /// Creates a new [TaskContainerSettingsResponse].
  /// [containerHostBatchBindMounts] If this array is null or be not present, container task will mount entire temporary disk drive in windows (or AZ_BATCH_NODE_ROOT_DIR in Linux). It won't' mount any data paths into container if this array is set as empty.
  /// [containerRunOptions] These additional options are supplied as arguments to the "docker create" command, in addition to those controlled by the Batch Service.
  /// [imageName] This is the full image reference, as would be specified to "docker pull". If no tag is provided as part of the image name, the tag ":latest" is used as a default.
  /// [registry] This setting can be omitted if was already provided at pool creation.
  /// [workingDirectory] A flag to indicate where the container task working directory is. The default is 'taskWorkingDirectory'.
  TaskContainerSettingsResponse({
    this.containerHostBatchBindMounts,
    this.containerRunOptions,
    required this.imageName,
    this.registry,
    this.workingDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerHostBatchBindMounts': ?containerHostBatchBindMounts == null ? null : pulumi.Input.encodeList<ContainerHostBatchBindMountEntryResponse, Map<String, dynamic>>(containerHostBatchBindMounts!, (value) => value.toMap()),
      'containerRunOptions': ?containerRunOptions,
      'imageName': imageName,
      'registry': ?registry == null ? null : registry!.toMap(),
      'workingDirectory': ?workingDirectory,
    };
  }

  factory TaskContainerSettingsResponse.fromMap(Map<String, dynamic> map) {
    return TaskContainerSettingsResponse(
      containerHostBatchBindMounts: map['containerHostBatchBindMounts'] == null ? null : pulumi.Input.decodeList<ContainerHostBatchBindMountEntryResponse>(map['containerHostBatchBindMounts'], (value) => ContainerHostBatchBindMountEntryResponse.fromMap((value as Map).cast<String, dynamic>())),
      containerRunOptions: map['containerRunOptions'] == null ? null : map['containerRunOptions'] as String,
      imageName: map['imageName'] as String,
      registry: map['registry'] == null ? null : ContainerRegistryResponse.fromMap((map['registry'] as Map).cast<String, dynamic>()),
      workingDirectory: map['workingDirectory'] == null ? null : map['workingDirectory'] as String,
    );
  }
}

