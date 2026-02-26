// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workflow_template_placement_managed_cluster_config_secondary_worker_config_accelerator/workflow_template_placement_managed_cluster_config_secondary_worker_config_accelerator.dart';
import '../workflow_template_placement_managed_cluster_config_secondary_worker_config_disk_config/workflow_template_placement_managed_cluster_config_secondary_worker_config_disk_config.dart';
import '../workflow_template_placement_managed_cluster_config_secondary_worker_config_managed_group_config/workflow_template_placement_managed_cluster_config_secondary_worker_config_managed_group_config.dart';

class WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfig {
  /// Optional. The Compute Engine accelerator configuration for these instances.
  final List<
          WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigAccelerator>?
      accelerators;

  /// Optional. Disk option config settings.
  final WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigDiskConfig?
      diskConfig;

  /// Optional. The Compute Engine image resource used for cluster instances. The URI can represent an image or image family. Image examples: * `https://www.googleapis.com/compute/beta/projects/<span pulumi-lang-nodejs="[projectId]" pulumi-lang-dotnet="[ProjectId]" pulumi-lang-go="[projectId]" pulumi-lang-python="[project_id]" pulumi-lang-yaml="[projectId]" pulumi-lang-java="[projectId]">[project_id]</span>/global/images/[image-id]` * `projects/<span pulumi-lang-nodejs="[projectId]" pulumi-lang-dotnet="[ProjectId]" pulumi-lang-go="[projectId]" pulumi-lang-python="[project_id]" pulumi-lang-yaml="[projectId]" pulumi-lang-java="[projectId]">[project_id]</span>/global/images/[image-id]` * `image-id` Image family examples. Dataproc will use the most recent image from the family: * `https://www.googleapis.com/compute/beta/projects/<span pulumi-lang-nodejs="[projectId]" pulumi-lang-dotnet="[ProjectId]" pulumi-lang-go="[projectId]" pulumi-lang-python="[project_id]" pulumi-lang-yaml="[projectId]" pulumi-lang-java="[projectId]">[project_id]</span>/global/images/family/[custom-image-family-name]` * `projects/<span pulumi-lang-nodejs="[projectId]" pulumi-lang-dotnet="[ProjectId]" pulumi-lang-go="[projectId]" pulumi-lang-python="[project_id]" pulumi-lang-yaml="[projectId]" pulumi-lang-java="[projectId]">[project_id]</span>/global/images/family/[custom-image-family-name]` If the URI is unspecified, it will be inferred from `SoftwareConfig.image_version` or the system default.
  final String? image;

  /// Output only. The list of instance names. Dataproc derives the names from <span pulumi-lang-nodejs="`clusterName`" pulumi-lang-dotnet="`ClusterName`" pulumi-lang-go="`clusterName`" pulumi-lang-python="`cluster_name`" pulumi-lang-yaml="`clusterName`" pulumi-lang-java="`clusterName`">`cluster_name`</span>, <span pulumi-lang-nodejs="`numInstances`" pulumi-lang-dotnet="`NumInstances`" pulumi-lang-go="`numInstances`" pulumi-lang-python="`num_instances`" pulumi-lang-yaml="`numInstances`" pulumi-lang-java="`numInstances`">`num_instances`</span>, and the instance group.
  final List<String>? instanceNames;

  /// Output only. Specifies that this instance group contains preemptible instances.
  final bool? isPreemptible;

  /// Optional. The Compute Engine machine type used for cluster instances. A full URL, partial URI, or short name are valid. Examples: * `https://www.googleapis.com/compute/v1/projects/<span pulumi-lang-nodejs="[projectId]" pulumi-lang-dotnet="[ProjectId]" pulumi-lang-go="[projectId]" pulumi-lang-python="[project_id]" pulumi-lang-yaml="[projectId]" pulumi-lang-java="[projectId]">[project_id]</span>/zones/us-east1-a/machineTypes/n1-standard-2` * `projects/<span pulumi-lang-nodejs="[projectId]" pulumi-lang-dotnet="[ProjectId]" pulumi-lang-go="[projectId]" pulumi-lang-python="[project_id]" pulumi-lang-yaml="[projectId]" pulumi-lang-java="[projectId]">[project_id]</span>/zones/us-east1-a/machineTypes/n1-standard-2` * `n1-standard-2` **Auto Zone Exception**: If you are using the Dataproc [Auto Zone Placement](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/auto-zone#using_auto_zone_placement) feature, you must use the short name of the machine type resource, for example, `n1-standard-2`.
  final String? machineType;

  /// Output only. The config for Compute Engine Instance Group Manager that manages this group. This is only used for preemptible instance groups.
  final List<
          WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigManagedGroupConfig>?
      managedGroupConfigs;

  /// Optional. Specifies the minimum cpu platform for the Instance Group. See [Dataproc > Minimum CPU Platform](https://cloud.google.com/dataproc/docs/concepts/compute/dataproc-min-cpu).
  final String? minCpuPlatform;

  /// Optional. The number of VM instances in the instance group. For [HA cluster](https://www.terraform.io/dataproc/docs/concepts/configuring-clusters/high-availability)<span pulumi-lang-nodejs=" masterConfig " pulumi-lang-dotnet=" MasterConfig " pulumi-lang-go=" masterConfig " pulumi-lang-python=" master_config " pulumi-lang-yaml=" masterConfig " pulumi-lang-java=" masterConfig "> master_config </span>groups, **must be set to 3**. For standard cluster<span pulumi-lang-nodejs=" masterConfig " pulumi-lang-dotnet=" MasterConfig " pulumi-lang-go=" masterConfig " pulumi-lang-python=" master_config " pulumi-lang-yaml=" masterConfig " pulumi-lang-java=" masterConfig "> master_config </span>groups, **must be set to 1**.
  final int? numInstances;

  /// Optional. Specifies the preemptibility of the instance group. The default value for master and worker groups is `NON_PREEMPTIBLE`. This default cannot be changed. The default value for secondary instances is `PREEMPTIBLE`. Possible values: PREEMPTIBILITY_UNSPECIFIED, NON_PREEMPTIBLE, PREEMPTIBLE
  final String? preemptibility;

  WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfig({
    this.accelerators,
    this.diskConfig,
    this.image,
    this.instanceNames,
    this.isPreemptible,
    this.machineType,
    this.managedGroupConfigs,
    this.minCpuPlatform,
    this.numInstances,
    this.preemptibility,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorsValue = accelerators;
    if (acceleratorsValue != null) {
      map['accelerators'] = Input.encodeList<
          WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigAccelerator,
          Map<String, dynamic>>(acceleratorsValue, (value) => value.toMap());
    }
    final diskConfigValue = diskConfig;
    if (diskConfigValue != null) {
      map['diskConfig'] = diskConfigValue.toMap();
    }
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue;
    }
    final instanceNamesValue = instanceNames;
    if (instanceNamesValue != null) {
      map['instanceNames'] = instanceNamesValue;
    }
    final isPreemptibleValue = isPreemptible;
    if (isPreemptibleValue != null) {
      map['isPreemptible'] = isPreemptibleValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final managedGroupConfigsValue = managedGroupConfigs;
    if (managedGroupConfigsValue != null) {
      map['managedGroupConfigs'] = Input.encodeList<
          WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigManagedGroupConfig,
          Map<String,
              dynamic>>(managedGroupConfigsValue, (value) => value.toMap());
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
      map['preemptibility'] = preemptibilityValue;
    }
    return map;
  }

  factory WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfig.fromMap(
      Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfig(
      accelerators: map['accelerators'] == null
          ? null
          : Input.decodeList<
                  WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigAccelerator>(
              map['accelerators'],
              (value) =>
                  WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigAccelerator
                      .fromMap((value as Map).cast<String, dynamic>())),
      diskConfig: map['diskConfig'] == null
          ? null
          : WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigDiskConfig
              .fromMap((map['diskConfig'] as Map).cast<String, dynamic>()),
      image: map['image'] == null ? null : map['image'] as String,
      instanceNames: map['instanceNames'] == null
          ? null
          : (map['instanceNames'] as List).cast<String>(),
      isPreemptible:
          map['isPreemptible'] == null ? null : map['isPreemptible'] as bool,
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      managedGroupConfigs: map['managedGroupConfigs'] == null
          ? null
          : Input.decodeList<
                  WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigManagedGroupConfig>(
              map['managedGroupConfigs'],
              (value) =>
                  WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfigManagedGroupConfig
                      .fromMap((value as Map).cast<String, dynamic>())),
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
      numInstances:
          map['numInstances'] == null ? null : map['numInstances'] as int,
      preemptibility: map['preemptibility'] == null
          ? null
          : map['preemptibility'] as String,
    );
  }
}
