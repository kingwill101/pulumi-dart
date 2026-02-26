// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'accelerator_config7.dart';
import 'disk_config2.dart';
import 'instance_group_config_preemptibility2.dart';

/// The config settings for Compute Engine resources in an instance group, such as a master or worker group.
class InstanceGroupConfig2 {
  /// Optional. The Compute Engine accelerator configuration for these instances.
  final List<AcceleratorConfig7>? accelerators;

  /// Optional. Disk option config settings.
  final DiskConfig2? diskConfig;

  /// Optional. The Compute Engine image resource used for cluster instances.The URI can represent an image or image family.Image examples: https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/[image-id] projects/[project_id]/global/images/[image-id] image-idImage family examples. Dataproc will use the most recent image from the family: https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/family/[custom-image-family-name] projects/[project_id]/global/images/family/[custom-image-family-name]If the URI is unspecified, it will be inferred from SoftwareConfig.image_version or the system default.
  final String? imageUri;

  /// Optional. The Compute Engine machine type used for cluster instances.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2 projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2 n1-standard-2Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, n1-standard-2.
  final String? machineTypeUri;

  /// Specifies the minimum cpu platform for the Instance Group. See Dataproc -> Minimum CPU Platform (https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu).
  final String? minCpuPlatform;

  /// Optional. The number of VM instances in the instance group. For HA cluster master_config groups, must be set to 3. For standard cluster master_config groups, must be set to 1.
  final int? numInstances;

  /// Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.
  final InstanceGroupConfigPreemptibility2? preemptibility;

  InstanceGroupConfig2({
    this.accelerators,
    this.diskConfig,
    this.imageUri,
    this.machineTypeUri,
    this.minCpuPlatform,
    this.numInstances,
    this.preemptibility,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorsValue = accelerators;
    if (acceleratorsValue != null) {
      map['accelerators'] =
          Input.encodeList<AcceleratorConfig7, Map<String, dynamic>>(
              acceleratorsValue, (value) => value.toMap());
    }
    final diskConfigValue = diskConfig;
    if (diskConfigValue != null) {
      map['diskConfig'] = diskConfigValue.toMap();
    }
    final imageUriValue = imageUri;
    if (imageUriValue != null) {
      map['imageUri'] = imageUriValue;
    }
    final machineTypeUriValue = machineTypeUri;
    if (machineTypeUriValue != null) {
      map['machineTypeUri'] = machineTypeUriValue;
    }
    final minCpuPlatformValue = minCpuPlatform;
    if (minCpuPlatformValue != null) {
      map['minCpuPlatform'] = minCpuPlatformValue;
    }
    final numInstancesValue = numInstances;
    if (numInstancesValue != null) {
      map['numInstances'] = numInstancesValue;
    }
    final preemptibilityValue = preemptibility;
    if (preemptibilityValue != null) {
      map['preemptibility'] = preemptibilityValue.value;
    }
    return map;
  }

  factory InstanceGroupConfig2.fromMap(Map<String, dynamic> map) {
    return InstanceGroupConfig2(
      accelerators: map['accelerators'] == null
          ? null
          : Input.decodeList<AcceleratorConfig7>(
              map['accelerators'],
              (value) => AcceleratorConfig7.fromMap(
                  (value as Map).cast<String, dynamic>())),
      diskConfig: map['diskConfig'] == null
          ? null
          : DiskConfig2.fromMap(
              (map['diskConfig'] as Map).cast<String, dynamic>()),
      imageUri: map['imageUri'] == null ? null : map['imageUri'] as String,
      machineTypeUri: map['machineTypeUri'] == null
          ? null
          : map['machineTypeUri'] as String,
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
      numInstances:
          map['numInstances'] == null ? null : map['numInstances'] as int,
      preemptibility: map['preemptibility'] == null
          ? null
          : InstanceGroupConfigPreemptibility2.fromValue(
              map['preemptibility'] as String),
    );
  }
}
