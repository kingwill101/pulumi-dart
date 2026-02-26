// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'accelerator_config_response7.dart';
import 'disk_config_response2.dart';
import 'instance_reference_response2.dart';
import 'managed_group_config_response2.dart';

/// The config settings for Compute Engine resources in an instance group, such as a master or worker group.
class InstanceGroupConfigResponse2 {
  /// Optional. The Compute Engine accelerator configuration for these instances.
  final List<AcceleratorConfigResponse7> accelerators;

  /// Optional. Disk option config settings.
  final DiskConfigResponse2 diskConfig;

  /// Optional. The Compute Engine image resource used for cluster instances.The URI can represent an image or image family.Image examples: https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/[image-id] projects/[project_id]/global/images/[image-id] image-idImage family examples. Dataproc will use the most recent image from the family: https://www.googleapis.com/compute/beta/projects/[project_id]/global/images/family/[custom-image-family-name] projects/[project_id]/global/images/family/[custom-image-family-name]If the URI is unspecified, it will be inferred from SoftwareConfig.image_version or the system default.
  final String imageUri;

  /// The list of instance names. Dataproc derives the names from cluster_name, num_instances, and the instance group.
  final List<String> instanceNames;

  /// List of references to Compute Engine instances.
  final List<InstanceReferenceResponse2> instanceReferences;

  /// Specifies that this instance group contains preemptible instances.
  final bool isPreemptible;

  /// Optional. The Compute Engine machine type used for cluster instances.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2 projects/[project_id]/zones/us-east1-a/machineTypes/n1-standard-2 n1-standard-2Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, n1-standard-2.
  final String machineTypeUri;

  /// The config for Compute Engine Instance Group Manager that manages this group. This is only used for preemptible instance groups.
  final ManagedGroupConfigResponse2 managedGroupConfig;

  /// Specifies the minimum cpu platform for the Instance Group. See Dataproc -> Minimum CPU Platform (https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu).
  final String minCpuPlatform;

  /// Optional. The number of VM instances in the instance group. For HA cluster master_config groups, must be set to 3. For standard cluster master_config groups, must be set to 1.
  final int numInstances;

  /// Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.
  final String preemptibility;

  InstanceGroupConfigResponse2({
    required this.accelerators,
    required this.diskConfig,
    required this.imageUri,
    required this.instanceNames,
    required this.instanceReferences,
    required this.isPreemptible,
    required this.machineTypeUri,
    required this.managedGroupConfig,
    required this.minCpuPlatform,
    required this.numInstances,
    required this.preemptibility,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accelerators'] =
        Input.encodeList<AcceleratorConfigResponse7, Map<String, dynamic>>(
            accelerators, (value) => value.toMap());
    map['diskConfig'] = diskConfig.toMap();
    map['imageUri'] = imageUri;
    map['instanceNames'] = instanceNames;
    map['instanceReferences'] =
        Input.encodeList<InstanceReferenceResponse2, Map<String, dynamic>>(
            instanceReferences, (value) => value.toMap());
    map['isPreemptible'] = isPreemptible;
    map['machineTypeUri'] = machineTypeUri;
    map['managedGroupConfig'] = managedGroupConfig.toMap();
    map['minCpuPlatform'] = minCpuPlatform;
    map['numInstances'] = numInstances;
    map['preemptibility'] = preemptibility;
    return map;
  }

  factory InstanceGroupConfigResponse2.fromMap(Map<String, dynamic> map) {
    return InstanceGroupConfigResponse2(
      accelerators: Input.decodeList<AcceleratorConfigResponse7>(
          map['accelerators'],
          (value) => AcceleratorConfigResponse7.fromMap(
              (value as Map).cast<String, dynamic>())),
      diskConfig: DiskConfigResponse2.fromMap(
          (map['diskConfig'] as Map).cast<String, dynamic>()),
      imageUri: map['imageUri'] as String,
      instanceNames: (map['instanceNames'] as List).cast<String>(),
      instanceReferences: Input.decodeList<InstanceReferenceResponse2>(
          map['instanceReferences'],
          (value) => InstanceReferenceResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      isPreemptible: map['isPreemptible'] as bool,
      machineTypeUri: map['machineTypeUri'] as String,
      managedGroupConfig: ManagedGroupConfigResponse2.fromMap(
          (map['managedGroupConfig'] as Map).cast<String, dynamic>()),
      minCpuPlatform: map['minCpuPlatform'] as String,
      numInstances: map['numInstances'] as int,
      preemptibility: map['preemptibility'] as String,
    );
  }
}
