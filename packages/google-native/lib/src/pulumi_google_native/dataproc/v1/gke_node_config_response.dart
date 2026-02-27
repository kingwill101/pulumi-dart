// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gke_node_pool_accelerator_config_response.dart';

/// Parameters that describe cluster nodes.
class GkeNodeConfigResponse {
  /// Optional. A list of hardware accelerators (https://cloud.google.com/compute/docs/gpus) to attach to each node.
  final List<GkeNodePoolAcceleratorConfigResponse> accelerators;

  /// Optional. The Customer Managed Encryption Key (CMEK) (https://cloud.google.com/kubernetes-engine/docs/how-to/using-cmek) used to encrypt the boot disk attached to each node in the node pool. Specify the key using the following format: projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}
  final String bootDiskKmsKey;

  /// Optional. The number of local SSD disks to attach to the node, which is limited by the maximum number of disks allowable per zone (see Adding Local SSDs (https://cloud.google.com/compute/docs/disks/local-ssd)).
  final int localSsdCount;

  /// Optional. The name of a Compute Engine machine type (https://cloud.google.com/compute/docs/machine-types).
  final String machineType;

  /// Optional. Minimum CPU platform (https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform) to be used by this instance. The instance may be scheduled on the specified or a newer CPU platform. Specify the friendly names of CPU platforms, such as "Intel Haswell"` or Intel Sandy Bridge".
  final String minCpuPlatform;

  /// Optional. Whether the nodes are created as legacy preemptible VM instances (https://cloud.google.com/compute/docs/instances/preemptible). Also see Spot VMs, preemptible VM instances without a maximum lifetime. Legacy and Spot preemptible nodes cannot be used in a node pool with the CONTROLLER role or in the DEFAULT node pool if the CONTROLLER role is not assigned (the DEFAULT node pool will assume the CONTROLLER role).
  final bool preemptible;

  /// Optional. Whether the nodes are created as Spot VM instances (https://cloud.google.com/compute/docs/instances/spot). Spot VMs are the latest update to legacy preemptible VMs. Spot VMs do not have a maximum lifetime. Legacy and Spot preemptible nodes cannot be used in a node pool with the CONTROLLER role or in the DEFAULT node pool if the CONTROLLER role is not assigned (the DEFAULT node pool will assume the CONTROLLER role).
  final bool spot;

  GkeNodeConfigResponse({
    required this.accelerators,
    required this.bootDiskKmsKey,
    required this.localSsdCount,
    required this.machineType,
    required this.minCpuPlatform,
    required this.preemptible,
    required this.spot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accelerators'] = pulumi.Input.encodeList<
        GkeNodePoolAcceleratorConfigResponse,
        Map<String, dynamic>>(accelerators, (value) => value.toMap());
    map['bootDiskKmsKey'] = bootDiskKmsKey;
    map['localSsdCount'] = localSsdCount;
    map['machineType'] = machineType;
    map['minCpuPlatform'] = minCpuPlatform;
    map['preemptible'] = preemptible;
    map['spot'] = spot;
    return map;
  }

  factory GkeNodeConfigResponse.fromMap(Map<String, dynamic> map) {
    return GkeNodeConfigResponse(
      accelerators:
          pulumi.Input.decodeList<GkeNodePoolAcceleratorConfigResponse>(
              map['accelerators'],
              (value) => GkeNodePoolAcceleratorConfigResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      bootDiskKmsKey: map['bootDiskKmsKey'] as String,
      localSsdCount: map['localSsdCount'] as int,
      machineType: map['machineType'] as String,
      minCpuPlatform: map['minCpuPlatform'] as String,
      preemptible: map['preemptible'] as bool,
      spot: map['spot'] as bool,
    );
  }
}
