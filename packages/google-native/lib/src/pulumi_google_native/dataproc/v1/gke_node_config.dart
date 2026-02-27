// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'gke_node_pool_accelerator_config.dart';

/// Parameters that describe cluster nodes.
class GkeNodeConfig {
  /// Optional. A list of hardware accelerators (https://cloud.google.com/compute/docs/gpus) to attach to each node.
  final List<GkeNodePoolAcceleratorConfig>? accelerators;

  /// Optional. The Customer Managed Encryption Key (CMEK) (https://cloud.google.com/kubernetes-engine/docs/how-to/using-cmek) used to encrypt the boot disk attached to each node in the node pool. Specify the key using the following format: projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}
  final String? bootDiskKmsKey;

  /// Optional. The number of local SSD disks to attach to the node, which is limited by the maximum number of disks allowable per zone (see Adding Local SSDs (https://cloud.google.com/compute/docs/disks/local-ssd)).
  final int? localSsdCount;

  /// Optional. The name of a Compute Engine machine type (https://cloud.google.com/compute/docs/machine-types).
  final String? machineType;

  /// Optional. Minimum CPU platform (https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform) to be used by this instance. The instance may be scheduled on the specified or a newer CPU platform. Specify the friendly names of CPU platforms, such as "Intel Haswell"` or Intel Sandy Bridge".
  final String? minCpuPlatform;

  /// Optional. Whether the nodes are created as legacy preemptible VM instances (https://cloud.google.com/compute/docs/instances/preemptible). Also see Spot VMs, preemptible VM instances without a maximum lifetime. Legacy and Spot preemptible nodes cannot be used in a node pool with the CONTROLLER role or in the DEFAULT node pool if the CONTROLLER role is not assigned (the DEFAULT node pool will assume the CONTROLLER role).
  final bool? preemptible;

  /// Optional. Whether the nodes are created as Spot VM instances (https://cloud.google.com/compute/docs/instances/spot). Spot VMs are the latest update to legacy preemptible VMs. Spot VMs do not have a maximum lifetime. Legacy and Spot preemptible nodes cannot be used in a node pool with the CONTROLLER role or in the DEFAULT node pool if the CONTROLLER role is not assigned (the DEFAULT node pool will assume the CONTROLLER role).
  final bool? spot;

  GkeNodeConfig({
    this.accelerators,
    this.bootDiskKmsKey,
    this.localSsdCount,
    this.machineType,
    this.minCpuPlatform,
    this.preemptible,
    this.spot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final acceleratorsValue = accelerators;
    if (acceleratorsValue != null) {
      map['accelerators'] =
          Input.encodeList<GkeNodePoolAcceleratorConfig, Map<String, dynamic>>(
              acceleratorsValue, (value) => value.toMap());
    }
    final bootDiskKmsKeyValue = bootDiskKmsKey;
    if (bootDiskKmsKeyValue != null) {
      map['bootDiskKmsKey'] = bootDiskKmsKeyValue;
    }
    final localSsdCountValue = localSsdCount;
    if (localSsdCountValue != null) {
      map['localSsdCount'] = localSsdCountValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final minCpuPlatformValue = minCpuPlatform;
    if (minCpuPlatformValue != null) {
      map['minCpuPlatform'] = minCpuPlatformValue;
    }
    final preemptibleValue = preemptible;
    if (preemptibleValue != null) {
      map['preemptible'] = preemptibleValue;
    }
    final spotValue = spot;
    if (spotValue != null) {
      map['spot'] = spotValue;
    }
    return map;
  }

  factory GkeNodeConfig.fromMap(Map<String, dynamic> map) {
    return GkeNodeConfig(
      accelerators: map['accelerators'] == null
          ? null
          : Input.decodeList<GkeNodePoolAcceleratorConfig>(
              map['accelerators'],
              (value) => GkeNodePoolAcceleratorConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      bootDiskKmsKey: map['bootDiskKmsKey'] == null
          ? null
          : map['bootDiskKmsKey'] as String,
      localSsdCount:
          map['localSsdCount'] == null ? null : map['localSsdCount'] as int,
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
      preemptible:
          map['preemptible'] == null ? null : map['preemptible'] as bool,
      spot: map['spot'] == null ? null : map['spot'] as bool,
    );
  }
}
