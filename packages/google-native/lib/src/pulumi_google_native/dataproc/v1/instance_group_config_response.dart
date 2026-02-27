// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response_dataproc_v1.dart';
import 'disk_config_response.dart';
import 'instance_flexibility_policy_response.dart';
import 'instance_reference_response.dart';
import 'managed_group_config_response.dart';
import 'startup_config_response.dart';

/// The config settings for Compute Engine resources in an instance group, such as a master or worker group.
class InstanceGroupConfigResponse {
  /// Optional. The Compute Engine accelerator configuration for these instances.
  final List<AcceleratorConfigResponseDataprocV1> accelerators;

  /// Optional. Disk option config settings.
  final DiskConfigResponse diskConfig;

  /// Optional. The Compute Engine image resource used for cluster instances.The URI can represent an image or image family.Image examples: https://www.googleapis.com/compute/v1/projects/[project_id]/global/images/[image-id] projects/[project_id]/global/images/[image-id] image-idImage family examples. Dataproc will use the most recent image from the family: https://www.googleapis.com/compute/v1/projects/[project_id]/global/images/family/[custom-image-family-name] projects/[project_id]/global/images/family/[custom-image-family-name]If the URI is unspecified, it will be inferred from SoftwareConfig.image_version or the system default.
  final String imageUri;

  /// Optional. Instance flexibility Policy allowing a mixture of VM shapes and provisioning models.
  final InstanceFlexibilityPolicyResponse instanceFlexibilityPolicy;

  /// The list of instance names. Dataproc derives the names from cluster_name, num_instances, and the instance group.
  final List<String> instanceNames;

  /// List of references to Compute Engine instances.
  final List<InstanceReferenceResponse> instanceReferences;

  /// Specifies that this instance group contains preemptible instances.
  final bool isPreemptible;

  /// Optional. The Compute Engine machine type used for cluster instances.A full URL, partial URI, or short name are valid. Examples: https://www.googleapis.com/compute/v1/projects/[project_id]/zones/[zone]/machineTypes/n1-standard-2 projects/[project_id]/zones/[zone]/machineTypes/n1-standard-2 n1-standard-2Auto Zone Exception: If you are using the Dataproc Auto Zone Placement (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, n1-standard-2.
  final String machineTypeUri;

  /// The config for Compute Engine Instance Group Manager that manages this group. This is only used for preemptible instance groups.
  final ManagedGroupConfigResponse managedGroupConfig;

  /// Optional. Specifies the minimum cpu platform for the Instance Group. See Dataproc -> Minimum CPU Platform (https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu).
  final String minCpuPlatform;

  /// Optional. The minimum number of primary worker instances to create. If min_num_instances is set, cluster creation will succeed if the number of primary workers created is at least equal to the min_num_instances number.Example: Cluster creation request with num_instances = 5 and min_num_instances = 3: If 4 VMs are created and 1 instance fails, the failed VM is deleted. The cluster is resized to 4 instances and placed in a RUNNING state. If 2 instances are created and 3 instances fail, the cluster in placed in an ERROR state. The failed VMs are not deleted.
  final int minNumInstances;

  /// Optional. The number of VM instances in the instance group. For HA cluster master_config groups, must be set to 3. For standard cluster master_config groups, must be set to 1.
  final int numInstances;

  /// Optional. Specifies the preemptibility of the instance group.The default value for master and worker groups is NON_PREEMPTIBLE. This default cannot be changed.The default value for secondary instances is PREEMPTIBLE.
  final String preemptibility;

  /// Optional. Configuration to handle the startup of instances during cluster create and update process.
  final StartupConfigResponse startupConfig;

  InstanceGroupConfigResponse({
    required this.accelerators,
    required this.diskConfig,
    required this.imageUri,
    required this.instanceFlexibilityPolicy,
    required this.instanceNames,
    required this.instanceReferences,
    required this.isPreemptible,
    required this.machineTypeUri,
    required this.managedGroupConfig,
    required this.minCpuPlatform,
    required this.minNumInstances,
    required this.numInstances,
    required this.preemptibility,
    required this.startupConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accelerators'] = pulumi.Input.encodeList<
        AcceleratorConfigResponseDataprocV1,
        Map<String, dynamic>>(accelerators, (value) => value.toMap());
    map['diskConfig'] = diskConfig.toMap();
    map['imageUri'] = imageUri;
    map['instanceFlexibilityPolicy'] = instanceFlexibilityPolicy.toMap();
    map['instanceNames'] = instanceNames;
    map['instanceReferences'] = pulumi.Input.encodeList<
        InstanceReferenceResponse,
        Map<String, dynamic>>(instanceReferences, (value) => value.toMap());
    map['isPreemptible'] = isPreemptible;
    map['machineTypeUri'] = machineTypeUri;
    map['managedGroupConfig'] = managedGroupConfig.toMap();
    map['minCpuPlatform'] = minCpuPlatform;
    map['minNumInstances'] = minNumInstances;
    map['numInstances'] = numInstances;
    map['preemptibility'] = preemptibility;
    map['startupConfig'] = startupConfig.toMap();
    return map;
  }

  factory InstanceGroupConfigResponse.fromMap(Map<String, dynamic> map) {
    return InstanceGroupConfigResponse(
      accelerators:
          pulumi.Input.decodeList<AcceleratorConfigResponseDataprocV1>(
              map['accelerators'],
              (value) => AcceleratorConfigResponseDataprocV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      diskConfig: DiskConfigResponse.fromMap(
          (map['diskConfig'] as Map).cast<String, dynamic>()),
      imageUri: map['imageUri'] as String,
      instanceFlexibilityPolicy: InstanceFlexibilityPolicyResponse.fromMap(
          (map['instanceFlexibilityPolicy'] as Map).cast<String, dynamic>()),
      instanceNames: (map['instanceNames'] as List).cast<String>(),
      instanceReferences: pulumi.Input.decodeList<InstanceReferenceResponse>(
          map['instanceReferences'],
          (value) => InstanceReferenceResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      isPreemptible: map['isPreemptible'] as bool,
      machineTypeUri: map['machineTypeUri'] as String,
      managedGroupConfig: ManagedGroupConfigResponse.fromMap(
          (map['managedGroupConfig'] as Map).cast<String, dynamic>()),
      minCpuPlatform: map['minCpuPlatform'] as String,
      minNumInstances: map['minNumInstances'] as int,
      numInstances: map['numInstances'] as int,
      preemptibility: map['preemptibility'] as String,
      startupConfig: StartupConfigResponse.fromMap(
          (map['startupConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
