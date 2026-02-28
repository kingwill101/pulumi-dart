// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_node_pool_node_config_kubelet_config_eviction_minimum_reclaim.dart';
import 'get_cluster_node_pool_node_config_kubelet_config_eviction_soft.dart';
import 'get_cluster_node_pool_node_config_kubelet_config_eviction_soft_grace_period.dart';
import 'get_cluster_node_pool_node_config_kubelet_config_memory_manager.dart';
import 'get_cluster_node_pool_node_config_kubelet_config_topology_manager.dart';

class GetClusterNodePoolNodeConfigKubeletConfig {
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
  final List<GetClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim> evictionMinimumReclaims;
  /// Defines a map of signal names to durations that defines grace periods for soft eviction thresholds. Each soft eviction threshold must have a corresponding grace period.
  final List<GetClusterNodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod> evictionSoftGracePeriods;
  /// Defines a map of signal names to quantities or percentage that defines soft eviction thresholds.
  final List<GetClusterNodePoolNodeConfigKubeletConfigEvictionSoft> evictionSofts;
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
  final List<GetClusterNodePoolNodeConfigKubeletConfigMemoryManager> memoryManagers;
  /// Controls the maximum number of processes allowed to run in a pod.
  final int podPidsLimit;
  /// Defines whether to enable single process OOM killer.
  final bool singleProcessOomKill;
  /// Configuration for the Topology Manager on the node. The Topology Manager aligns CPU, memory, and device resources on a node to optimize performance, especially for NUMA-aware workloads, by ensuring resource co-location.
  final List<GetClusterNodePoolNodeConfigKubeletConfigTopologyManager> topologyManagers;

  /// Creates a new [GetClusterNodePoolNodeConfigKubeletConfig].
  /// [allowedUnsafeSysctls] Defines a comma-separated allowlist of unsafe sysctls or sysctl patterns which can be set on the Pods.
  /// [containerLogMaxFiles] Defines the maximum number of container log files that can be present for a container.
  /// [containerLogMaxSize] Defines the maximum size of the container log file before it is rotated.
  /// [cpuCfsQuota] Enable CPU CFS quota enforcement for containers that specify CPU limits.
  /// [cpuCfsQuotaPeriod] Set the CPU CFS quota period value 'cpu.cfs_period_us'.
  /// [cpuManagerPolicy] Control the CPU management policy on the node.
  /// [evictionMaxPodGracePeriodSeconds] Defines the maximum allowed grace period (in seconds) to use when terminating pods in response to a soft eviction threshold being met.
  /// [evictionMinimumReclaims] Defines a map of signal names to percentage that defines minimum reclaims. It describes the minimum amount of a given resource the kubelet will reclaim when performing a pod eviction.
  /// [evictionSoftGracePeriods] Defines a map of signal names to durations that defines grace periods for soft eviction thresholds. Each soft eviction threshold must have a corresponding grace period.
  /// [evictionSofts] Defines a map of signal names to quantities or percentage that defines soft eviction thresholds.
  /// [imageGcHighThresholdPercent] Defines the percent of disk usage after which image garbage collection is always run.
  /// [imageGcLowThresholdPercent] Defines the percent of disk usage before which image garbage collection is never run. Lowest disk usage to garbage collect to.
  /// [imageMaximumGcAge] Defines the maximum age an image can be unused before it is garbage collected.
  /// [imageMinimumGcAge] Defines the minimum age for an unused image before it is garbage collected.
  /// [insecureKubeletReadonlyPortEnabled] Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  /// [maxParallelImagePulls] Set the maximum number of image pulls in parallel.
  /// [memoryManagers] Configuration for the Memory Manager on the node. The memory manager optimizes memory and hugepages allocation for pods, especially those in the Guaranteed QoS class, by influencing NUMA affinity.
  /// [podPidsLimit] Controls the maximum number of processes allowed to run in a pod.
  /// [singleProcessOomKill] Defines whether to enable single process OOM killer.
  /// [topologyManagers] Configuration for the Topology Manager on the node. The Topology Manager aligns CPU, memory, and device resources on a node to optimize performance, especially for NUMA-aware workloads, by ensuring resource co-location.
  GetClusterNodePoolNodeConfigKubeletConfig({
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
    return <String, dynamic>{
      'allowedUnsafeSysctls': allowedUnsafeSysctls,
      'containerLogMaxFiles': containerLogMaxFiles,
      'containerLogMaxSize': containerLogMaxSize,
      'cpuCfsQuota': cpuCfsQuota,
      'cpuCfsQuotaPeriod': cpuCfsQuotaPeriod,
      'cpuManagerPolicy': cpuManagerPolicy,
      'evictionMaxPodGracePeriodSeconds': evictionMaxPodGracePeriodSeconds,
      'evictionMinimumReclaims': pulumi.Input.encodeList<GetClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim, Map<String, dynamic>>(evictionMinimumReclaims, (value) => value.toMap()),
      'evictionSoftGracePeriods': pulumi.Input.encodeList<GetClusterNodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod, Map<String, dynamic>>(evictionSoftGracePeriods, (value) => value.toMap()),
      'evictionSofts': pulumi.Input.encodeList<GetClusterNodePoolNodeConfigKubeletConfigEvictionSoft, Map<String, dynamic>>(evictionSofts, (value) => value.toMap()),
      'imageGcHighThresholdPercent': imageGcHighThresholdPercent,
      'imageGcLowThresholdPercent': imageGcLowThresholdPercent,
      'imageMaximumGcAge': imageMaximumGcAge,
      'imageMinimumGcAge': imageMinimumGcAge,
      'insecureKubeletReadonlyPortEnabled': insecureKubeletReadonlyPortEnabled,
      'maxParallelImagePulls': maxParallelImagePulls,
      'memoryManagers': pulumi.Input.encodeList<GetClusterNodePoolNodeConfigKubeletConfigMemoryManager, Map<String, dynamic>>(memoryManagers, (value) => value.toMap()),
      'podPidsLimit': podPidsLimit,
      'singleProcessOomKill': singleProcessOomKill,
      'topologyManagers': pulumi.Input.encodeList<GetClusterNodePoolNodeConfigKubeletConfigTopologyManager, Map<String, dynamic>>(topologyManagers, (value) => value.toMap()),
    };
  }

  factory GetClusterNodePoolNodeConfigKubeletConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodePoolNodeConfigKubeletConfig(
      allowedUnsafeSysctls: (map['allowedUnsafeSysctls'] as List).cast<String>(),
      containerLogMaxFiles: map['containerLogMaxFiles'] as int,
      containerLogMaxSize: map['containerLogMaxSize'] as String,
      cpuCfsQuota: map['cpuCfsQuota'] as bool,
      cpuCfsQuotaPeriod: map['cpuCfsQuotaPeriod'] as String,
      cpuManagerPolicy: map['cpuManagerPolicy'] as String,
      evictionMaxPodGracePeriodSeconds: map['evictionMaxPodGracePeriodSeconds'] as int,
      evictionMinimumReclaims: pulumi.Input.decodeList<GetClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim>(map['evictionMinimumReclaims'], (value) => GetClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim.fromMap((value as Map).cast<String, dynamic>())),
      evictionSoftGracePeriods: pulumi.Input.decodeList<GetClusterNodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod>(map['evictionSoftGracePeriods'], (value) => GetClusterNodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod.fromMap((value as Map).cast<String, dynamic>())),
      evictionSofts: pulumi.Input.decodeList<GetClusterNodePoolNodeConfigKubeletConfigEvictionSoft>(map['evictionSofts'], (value) => GetClusterNodePoolNodeConfigKubeletConfigEvictionSoft.fromMap((value as Map).cast<String, dynamic>())),
      imageGcHighThresholdPercent: map['imageGcHighThresholdPercent'] as int,
      imageGcLowThresholdPercent: map['imageGcLowThresholdPercent'] as int,
      imageMaximumGcAge: map['imageMaximumGcAge'] as String,
      imageMinimumGcAge: map['imageMinimumGcAge'] as String,
      insecureKubeletReadonlyPortEnabled: map['insecureKubeletReadonlyPortEnabled'] as String,
      maxParallelImagePulls: map['maxParallelImagePulls'] as int,
      memoryManagers: pulumi.Input.decodeList<GetClusterNodePoolNodeConfigKubeletConfigMemoryManager>(map['memoryManagers'], (value) => GetClusterNodePoolNodeConfigKubeletConfigMemoryManager.fromMap((value as Map).cast<String, dynamic>())),
      podPidsLimit: map['podPidsLimit'] as int,
      singleProcessOomKill: map['singleProcessOomKill'] as bool,
      topologyManagers: pulumi.Input.decodeList<GetClusterNodePoolNodeConfigKubeletConfigTopologyManager>(map['topologyManagers'], (value) => GetClusterNodePoolNodeConfigKubeletConfigTopologyManager.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

