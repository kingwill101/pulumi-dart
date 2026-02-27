// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_node_config_kubelet_config_eviction_minimum_reclaim/get_cluster_node_config_kubelet_config_eviction_minimum_reclaim.dart';
import '../get_cluster_node_config_kubelet_config_eviction_soft/get_cluster_node_config_kubelet_config_eviction_soft.dart';
import '../get_cluster_node_config_kubelet_config_eviction_soft_grace_period/get_cluster_node_config_kubelet_config_eviction_soft_grace_period.dart';
import '../get_cluster_node_config_kubelet_config_memory_manager/get_cluster_node_config_kubelet_config_memory_manager.dart';
import '../get_cluster_node_config_kubelet_config_topology_manager/get_cluster_node_config_kubelet_config_topology_manager.dart';

class GetClusterNodeConfigKubeletConfig {
  /// Defines a comma-separated allowlist of unsafe sysctls or sysctl patterns which can be set on the Pods.
  final List<String> allowedUnsafeSysctls;

  /// Defines the maximum number of container log files that can be present for a container.
  final int containerLogMaxFiles;

  /// Defines the maximum size of the container log file before it is rotated.
  final String containerLogMaxSize;

  /// Enable CPU CFS quota enforcement for containers that specify CPU limits.
  final bool cpuCfsQuota;

  /// Set the CPU CFS quota period value 'cpu.cfs_period_us'.
  final String cpuCfsQuotaPeriod;

  /// Control the CPU management policy on the node.
  final String cpuManagerPolicy;

  /// Defines the maximum allowed grace period (in seconds) to use when terminating pods in response to a soft eviction threshold being met.
  final int evictionMaxPodGracePeriodSeconds;

  /// Defines a map of signal names to percentage that defines minimum reclaims. It describes the minimum amount of a given resource the kubelet will reclaim when performing a pod eviction.
  final List<GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim>
      evictionMinimumReclaims;

  /// Defines a map of signal names to durations that defines grace periods for soft eviction thresholds. Each soft eviction threshold must have a corresponding grace period.
  final List<GetClusterNodeConfigKubeletConfigEvictionSoftGracePeriod>
      evictionSoftGracePeriods;

  /// Defines a map of signal names to quantities or percentage that defines soft eviction thresholds.
  final List<GetClusterNodeConfigKubeletConfigEvictionSoft> evictionSofts;

  /// Defines the percent of disk usage after which image garbage collection is always run.
  final int imageGcHighThresholdPercent;

  /// Defines the percent of disk usage before which image garbage collection is never run. Lowest disk usage to garbage collect to.
  final int imageGcLowThresholdPercent;

  /// Defines the maximum age an image can be unused before it is garbage collected.
  final String imageMaximumGcAge;

  /// Defines the minimum age for an unused image before it is garbage collected.
  final String imageMinimumGcAge;

  /// Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  final String insecureKubeletReadonlyPortEnabled;

  /// Set the maximum number of image pulls in parallel.
  final int maxParallelImagePulls;

  /// Configuration for the Memory Manager on the node. The memory manager optimizes memory and hugepages allocation for pods, especially those in the Guaranteed QoS class, by influencing NUMA affinity.
  final List<GetClusterNodeConfigKubeletConfigMemoryManager> memoryManagers;

  /// Controls the maximum number of processes allowed to run in a pod.
  final int podPidsLimit;

  /// Defines whether to enable single process OOM killer.
  final bool singleProcessOomKill;

  /// Configuration for the Topology Manager on the node. The Topology Manager aligns CPU, memory, and device resources on a node to optimize performance, especially for NUMA-aware workloads, by ensuring resource co-location.
  final List<GetClusterNodeConfigKubeletConfigTopologyManager> topologyManagers;

  GetClusterNodeConfigKubeletConfig({
    required this.allowedUnsafeSysctls,
    required this.containerLogMaxFiles,
    required this.containerLogMaxSize,
    required this.cpuCfsQuota,
    required this.cpuCfsQuotaPeriod,
    required this.cpuManagerPolicy,
    required this.evictionMaxPodGracePeriodSeconds,
    required this.evictionMinimumReclaims,
    required this.evictionSoftGracePeriods,
    required this.evictionSofts,
    required this.imageGcHighThresholdPercent,
    required this.imageGcLowThresholdPercent,
    required this.imageMaximumGcAge,
    required this.imageMinimumGcAge,
    required this.insecureKubeletReadonlyPortEnabled,
    required this.maxParallelImagePulls,
    required this.memoryManagers,
    required this.podPidsLimit,
    required this.singleProcessOomKill,
    required this.topologyManagers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedUnsafeSysctls'] = allowedUnsafeSysctls;
    map['containerLogMaxFiles'] = containerLogMaxFiles;
    map['containerLogMaxSize'] = containerLogMaxSize;
    map['cpuCfsQuota'] = cpuCfsQuota;
    map['cpuCfsQuotaPeriod'] = cpuCfsQuotaPeriod;
    map['cpuManagerPolicy'] = cpuManagerPolicy;
    map['evictionMaxPodGracePeriodSeconds'] = evictionMaxPodGracePeriodSeconds;
    map['evictionMinimumReclaims'] = pulumi.Input.encodeList<
            GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim,
            Map<String, dynamic>>(
        evictionMinimumReclaims, (value) => value.toMap());
    map['evictionSoftGracePeriods'] = pulumi.Input.encodeList<
            GetClusterNodeConfigKubeletConfigEvictionSoftGracePeriod,
            Map<String, dynamic>>(
        evictionSoftGracePeriods, (value) => value.toMap());
    map['evictionSofts'] = pulumi.Input.encodeList<
        GetClusterNodeConfigKubeletConfigEvictionSoft,
        Map<String, dynamic>>(evictionSofts, (value) => value.toMap());
    map['imageGcHighThresholdPercent'] = imageGcHighThresholdPercent;
    map['imageGcLowThresholdPercent'] = imageGcLowThresholdPercent;
    map['imageMaximumGcAge'] = imageMaximumGcAge;
    map['imageMinimumGcAge'] = imageMinimumGcAge;
    map['insecureKubeletReadonlyPortEnabled'] =
        insecureKubeletReadonlyPortEnabled;
    map['maxParallelImagePulls'] = maxParallelImagePulls;
    map['memoryManagers'] = pulumi.Input.encodeList<
        GetClusterNodeConfigKubeletConfigMemoryManager,
        Map<String, dynamic>>(memoryManagers, (value) => value.toMap());
    map['podPidsLimit'] = podPidsLimit;
    map['singleProcessOomKill'] = singleProcessOomKill;
    map['topologyManagers'] = pulumi.Input.encodeList<
        GetClusterNodeConfigKubeletConfigTopologyManager,
        Map<String, dynamic>>(topologyManagers, (value) => value.toMap());
    return map;
  }

  factory GetClusterNodeConfigKubeletConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeConfigKubeletConfig(
      allowedUnsafeSysctls:
          (map['allowedUnsafeSysctls'] as List).cast<String>(),
      containerLogMaxFiles: map['containerLogMaxFiles'] as int,
      containerLogMaxSize: map['containerLogMaxSize'] as String,
      cpuCfsQuota: map['cpuCfsQuota'] as bool,
      cpuCfsQuotaPeriod: map['cpuCfsQuotaPeriod'] as String,
      cpuManagerPolicy: map['cpuManagerPolicy'] as String,
      evictionMaxPodGracePeriodSeconds:
          map['evictionMaxPodGracePeriodSeconds'] as int,
      evictionMinimumReclaims: pulumi.Input.decodeList<
              GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim>(
          map['evictionMinimumReclaims'],
          (value) =>
              GetClusterNodeConfigKubeletConfigEvictionMinimumReclaim.fromMap(
                  (value as Map).cast<String, dynamic>())),
      evictionSoftGracePeriods: pulumi.Input.decodeList<
              GetClusterNodeConfigKubeletConfigEvictionSoftGracePeriod>(
          map['evictionSoftGracePeriods'],
          (value) =>
              GetClusterNodeConfigKubeletConfigEvictionSoftGracePeriod.fromMap(
                  (value as Map).cast<String, dynamic>())),
      evictionSofts: pulumi.Input.decodeList<
              GetClusterNodeConfigKubeletConfigEvictionSoft>(
          map['evictionSofts'],
          (value) => GetClusterNodeConfigKubeletConfigEvictionSoft.fromMap(
              (value as Map).cast<String, dynamic>())),
      imageGcHighThresholdPercent: map['imageGcHighThresholdPercent'] as int,
      imageGcLowThresholdPercent: map['imageGcLowThresholdPercent'] as int,
      imageMaximumGcAge: map['imageMaximumGcAge'] as String,
      imageMinimumGcAge: map['imageMinimumGcAge'] as String,
      insecureKubeletReadonlyPortEnabled:
          map['insecureKubeletReadonlyPortEnabled'] as String,
      maxParallelImagePulls: map['maxParallelImagePulls'] as int,
      memoryManagers: pulumi.Input.decodeList<
              GetClusterNodeConfigKubeletConfigMemoryManager>(
          map['memoryManagers'],
          (value) => GetClusterNodeConfigKubeletConfigMemoryManager.fromMap(
              (value as Map).cast<String, dynamic>())),
      podPidsLimit: map['podPidsLimit'] as int,
      singleProcessOomKill: map['singleProcessOomKill'] as bool,
      topologyManagers: pulumi.Input.decodeList<
              GetClusterNodeConfigKubeletConfigTopologyManager>(
          map['topologyManagers'],
          (value) => GetClusterNodeConfigKubeletConfigTopologyManager.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
