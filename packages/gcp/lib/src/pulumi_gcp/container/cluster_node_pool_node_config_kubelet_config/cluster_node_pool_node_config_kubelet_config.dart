// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_node_pool_node_config_kubelet_config_eviction_minimum_reclaim/cluster_node_pool_node_config_kubelet_config_eviction_minimum_reclaim.dart';
import '../cluster_node_pool_node_config_kubelet_config_eviction_soft/cluster_node_pool_node_config_kubelet_config_eviction_soft.dart';
import '../cluster_node_pool_node_config_kubelet_config_eviction_soft_grace_period/cluster_node_pool_node_config_kubelet_config_eviction_soft_grace_period.dart';
import '../cluster_node_pool_node_config_kubelet_config_memory_manager/cluster_node_pool_node_config_kubelet_config_memory_manager.dart';
import '../cluster_node_pool_node_config_kubelet_config_topology_manager/cluster_node_pool_node_config_kubelet_config_topology_manager.dart';

class ClusterNodePoolNodeConfigKubeletConfig {
  /// Defines a comma-separated allowlist of unsafe sysctls or sysctl patterns which can be set on the Pods. The allowed sysctl groups are `kernel.shm*`, `kernel.msg*`, `kernel.sem`, `fs.mqueue.*`, and `net.*`.
  final List<String>? allowedUnsafeSysctls;

  /// Defines the maximum number of container log files that can be present for a container. The integer must be between 2 and 10, inclusive.
  final int? containerLogMaxFiles;

  /// Defines the maximum size of the
  /// container log file before it is rotated. Specified as a positive number and a
  /// unit suffix, such as `"100Ki"`, `"10Mi"`. Valid units are "Ki", "Mi", "Gi".
  /// The value must be between `"10Mi"` and `"500Mi"`, inclusive. And the total container log size
  /// (<span pulumi-lang-nodejs="`containerLogMaxSize`" pulumi-lang-dotnet="`ContainerLogMaxSize`" pulumi-lang-go="`containerLogMaxSize`" pulumi-lang-python="`container_log_max_size`" pulumi-lang-yaml="`containerLogMaxSize`" pulumi-lang-java="`containerLogMaxSize`">`container_log_max_size`</span> * <span pulumi-lang-nodejs="`containerLogMaxFiles`" pulumi-lang-dotnet="`ContainerLogMaxFiles`" pulumi-lang-go="`containerLogMaxFiles`" pulumi-lang-python="`container_log_max_files`" pulumi-lang-yaml="`containerLogMaxFiles`" pulumi-lang-java="`containerLogMaxFiles`">`container_log_max_files`</span>) cannot exceed 1% of the total storage of the node.
  final String? containerLogMaxSize;

  /// If true, enables CPU CFS quota enforcement for
  /// containers that specify CPU limits.
  final bool? cpuCfsQuota;

  /// The CPU CFS quota period value. Specified
  /// as a sequence of decimal numbers, each with optional fraction and a unit suffix,
  /// such as `"300ms"`. Valid time units are "ns", "us" (or "µs"), "ms", "s", "m",
  /// "h". The value must be a positive duration.
  final String? cpuCfsQuotaPeriod;

  /// The CPU management policy on the node. See
  /// [K8S CPU Management Policies](https://kubernetes.io/docs/tasks/administer-cluster/cpu-management-policies/).
  /// One of `"none"` or `"static"`. If unset (or set to the empty string `""`), the API will treat the field as if set to "none".
  /// Prior to the 6.4.0 this field was marked as required. The workaround for the required field
  /// is setting the empty string `""`, which will function identically to not setting this field.
  final String? cpuManagerPolicy;

  /// Defines the maximum allowed grace period (in seconds) to use when terminating pods in response to a soft eviction threshold being met. The integer must be positive and not exceed 300.
  final int? evictionMaxPodGracePeriodSeconds;

  /// Defines a map of signal names to percentage that defines minimum reclaims. It describes the minimum amount of a given resource the kubelet will reclaim when performing a pod eviction. Structure is documented below.
  final ClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim?
      evictionMinimumReclaim;

  /// Defines a map of signal names to quantities or percentage that defines soft eviction thresholds. Structure is documented below.
  final ClusterNodePoolNodeConfigKubeletConfigEvictionSoft? evictionSoft;

  /// Defines a map of signal names to durations that defines grace periods for soft eviction thresholds. Each soft eviction threshold must have a corresponding grace period. Structure is documented below.
  final ClusterNodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod?
      evictionSoftGracePeriod;

  /// Defines the percent of disk usage after which image garbage collection is always run. The integer must be between 10 and 85, inclusive.
  final int? imageGcHighThresholdPercent;

  /// Defines the percent of disk usage before which image garbage collection is never run. Lowest disk usage to garbage collect to. The integer must be between 10 and 85, inclusive.
  final int? imageGcLowThresholdPercent;

  /// Defines the maximum age an image can be unused before it is garbage collected. Specified as a sequence of decimal numbers, each with optional fraction and a unit suffix, such as `"300s"`, `"1.5m"`, and `"2h45m"`. Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h". The value must be a positive duration.
  final String? imageMaximumGcAge;

  /// Defines the minimum age for an unused image before it is garbage collected. Specified as a sequence of decimal numbers, each with optional fraction and a unit suffix, such as `"300s"`, `"1.5m"`. The value cannot be greater than "2m".
  final String? imageMinimumGcAge;

  /// Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  final String? insecureKubeletReadonlyPortEnabled;

  /// Set the maximum number of image pulls in parallel. The integer must be between 2 and 5, inclusive.
  final int? maxParallelImagePulls;

  /// Configuration for the [memory manager](https://kubernetes.io/docs/tasks/administer-cluster/memory-manager/) on the node.
  /// The memory manager optimizes memory and hugepages allocation for pods, especially
  /// those in the Guaranteed QoS class, by influencing NUMA affinity. Structure is documented below.
  final ClusterNodePoolNodeConfigKubeletConfigMemoryManager? memoryManager;

  /// Controls the maximum number of processes allowed to run in a pod. The value must be greater than or equal to 1024 and less than 4194304.
  final int? podPidsLimit;

  /// Defines whether to enable single process OOM killer. If true, the processes in the container will be OOM killed individually instead of as a group.
  final bool? singleProcessOomKill;

  /// These settings control the kubelet's [Topology Manager policy](https://kubernetes.io/docs/tasks/administer-cluster/topology-manager/#topology-manager-policies), which coordinates the set of components responsible for performance optimizations related to CPU isolation, memory, and device locality. Structure is documented below.
  final ClusterNodePoolNodeConfigKubeletConfigTopologyManager? topologyManager;

  ClusterNodePoolNodeConfigKubeletConfig({
    this.allowedUnsafeSysctls,
    this.containerLogMaxFiles,
    this.containerLogMaxSize,
    this.cpuCfsQuota,
    this.cpuCfsQuotaPeriod,
    this.cpuManagerPolicy,
    this.evictionMaxPodGracePeriodSeconds,
    this.evictionMinimumReclaim,
    this.evictionSoft,
    this.evictionSoftGracePeriod,
    this.imageGcHighThresholdPercent,
    this.imageGcLowThresholdPercent,
    this.imageMaximumGcAge,
    this.imageMinimumGcAge,
    this.insecureKubeletReadonlyPortEnabled,
    this.maxParallelImagePulls,
    this.memoryManager,
    this.podPidsLimit,
    this.singleProcessOomKill,
    this.topologyManager,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedUnsafeSysctlsValue = allowedUnsafeSysctls;
    if (allowedUnsafeSysctlsValue != null) {
      map['allowedUnsafeSysctls'] = allowedUnsafeSysctlsValue;
    }
    final containerLogMaxFilesValue = containerLogMaxFiles;
    if (containerLogMaxFilesValue != null) {
      map['containerLogMaxFiles'] = containerLogMaxFilesValue;
    }
    final containerLogMaxSizeValue = containerLogMaxSize;
    if (containerLogMaxSizeValue != null) {
      map['containerLogMaxSize'] = containerLogMaxSizeValue;
    }
    final cpuCfsQuotaValue = cpuCfsQuota;
    if (cpuCfsQuotaValue != null) {
      map['cpuCfsQuota'] = cpuCfsQuotaValue;
    }
    final cpuCfsQuotaPeriodValue = cpuCfsQuotaPeriod;
    if (cpuCfsQuotaPeriodValue != null) {
      map['cpuCfsQuotaPeriod'] = cpuCfsQuotaPeriodValue;
    }
    final cpuManagerPolicyValue = cpuManagerPolicy;
    if (cpuManagerPolicyValue != null) {
      map['cpuManagerPolicy'] = cpuManagerPolicyValue;
    }
    final evictionMaxPodGracePeriodSecondsValue =
        evictionMaxPodGracePeriodSeconds;
    if (evictionMaxPodGracePeriodSecondsValue != null) {
      map['evictionMaxPodGracePeriodSeconds'] =
          evictionMaxPodGracePeriodSecondsValue;
    }
    final evictionMinimumReclaimValue = evictionMinimumReclaim;
    if (evictionMinimumReclaimValue != null) {
      map['evictionMinimumReclaim'] = evictionMinimumReclaimValue.toMap();
    }
    final evictionSoftValue = evictionSoft;
    if (evictionSoftValue != null) {
      map['evictionSoft'] = evictionSoftValue.toMap();
    }
    final evictionSoftGracePeriodValue = evictionSoftGracePeriod;
    if (evictionSoftGracePeriodValue != null) {
      map['evictionSoftGracePeriod'] = evictionSoftGracePeriodValue.toMap();
    }
    final imageGcHighThresholdPercentValue = imageGcHighThresholdPercent;
    if (imageGcHighThresholdPercentValue != null) {
      map['imageGcHighThresholdPercent'] = imageGcHighThresholdPercentValue;
    }
    final imageGcLowThresholdPercentValue = imageGcLowThresholdPercent;
    if (imageGcLowThresholdPercentValue != null) {
      map['imageGcLowThresholdPercent'] = imageGcLowThresholdPercentValue;
    }
    final imageMaximumGcAgeValue = imageMaximumGcAge;
    if (imageMaximumGcAgeValue != null) {
      map['imageMaximumGcAge'] = imageMaximumGcAgeValue;
    }
    final imageMinimumGcAgeValue = imageMinimumGcAge;
    if (imageMinimumGcAgeValue != null) {
      map['imageMinimumGcAge'] = imageMinimumGcAgeValue;
    }
    final insecureKubeletReadonlyPortEnabledValue =
        insecureKubeletReadonlyPortEnabled;
    if (insecureKubeletReadonlyPortEnabledValue != null) {
      map['insecureKubeletReadonlyPortEnabled'] =
          insecureKubeletReadonlyPortEnabledValue;
    }
    final maxParallelImagePullsValue = maxParallelImagePulls;
    if (maxParallelImagePullsValue != null) {
      map['maxParallelImagePulls'] = maxParallelImagePullsValue;
    }
    final memoryManagerValue = memoryManager;
    if (memoryManagerValue != null) {
      map['memoryManager'] = memoryManagerValue.toMap();
    }
    final podPidsLimitValue = podPidsLimit;
    if (podPidsLimitValue != null) {
      map['podPidsLimit'] = podPidsLimitValue;
    }
    final singleProcessOomKillValue = singleProcessOomKill;
    if (singleProcessOomKillValue != null) {
      map['singleProcessOomKill'] = singleProcessOomKillValue;
    }
    final topologyManagerValue = topologyManager;
    if (topologyManagerValue != null) {
      map['topologyManager'] = topologyManagerValue.toMap();
    }
    return map;
  }

  factory ClusterNodePoolNodeConfigKubeletConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterNodePoolNodeConfigKubeletConfig(
      allowedUnsafeSysctls: map['allowedUnsafeSysctls'] == null
          ? null
          : (map['allowedUnsafeSysctls'] as List).cast<String>(),
      containerLogMaxFiles: map['containerLogMaxFiles'] == null
          ? null
          : map['containerLogMaxFiles'] as int,
      containerLogMaxSize: map['containerLogMaxSize'] == null
          ? null
          : map['containerLogMaxSize'] as String,
      cpuCfsQuota:
          map['cpuCfsQuota'] == null ? null : map['cpuCfsQuota'] as bool,
      cpuCfsQuotaPeriod: map['cpuCfsQuotaPeriod'] == null
          ? null
          : map['cpuCfsQuotaPeriod'] as String,
      cpuManagerPolicy: map['cpuManagerPolicy'] == null
          ? null
          : map['cpuManagerPolicy'] as String,
      evictionMaxPodGracePeriodSeconds:
          map['evictionMaxPodGracePeriodSeconds'] == null
              ? null
              : map['evictionMaxPodGracePeriodSeconds'] as int,
      evictionMinimumReclaim: map['evictionMinimumReclaim'] == null
          ? null
          : ClusterNodePoolNodeConfigKubeletConfigEvictionMinimumReclaim
              .fromMap((map['evictionMinimumReclaim'] as Map)
                  .cast<String, dynamic>()),
      evictionSoft: map['evictionSoft'] == null
          ? null
          : ClusterNodePoolNodeConfigKubeletConfigEvictionSoft.fromMap(
              (map['evictionSoft'] as Map).cast<String, dynamic>()),
      evictionSoftGracePeriod: map['evictionSoftGracePeriod'] == null
          ? null
          : ClusterNodePoolNodeConfigKubeletConfigEvictionSoftGracePeriod
              .fromMap((map['evictionSoftGracePeriod'] as Map)
                  .cast<String, dynamic>()),
      imageGcHighThresholdPercent: map['imageGcHighThresholdPercent'] == null
          ? null
          : map['imageGcHighThresholdPercent'] as int,
      imageGcLowThresholdPercent: map['imageGcLowThresholdPercent'] == null
          ? null
          : map['imageGcLowThresholdPercent'] as int,
      imageMaximumGcAge: map['imageMaximumGcAge'] == null
          ? null
          : map['imageMaximumGcAge'] as String,
      imageMinimumGcAge: map['imageMinimumGcAge'] == null
          ? null
          : map['imageMinimumGcAge'] as String,
      insecureKubeletReadonlyPortEnabled:
          map['insecureKubeletReadonlyPortEnabled'] == null
              ? null
              : map['insecureKubeletReadonlyPortEnabled'] as String,
      maxParallelImagePulls: map['maxParallelImagePulls'] == null
          ? null
          : map['maxParallelImagePulls'] as int,
      memoryManager: map['memoryManager'] == null
          ? null
          : ClusterNodePoolNodeConfigKubeletConfigMemoryManager.fromMap(
              (map['memoryManager'] as Map).cast<String, dynamic>()),
      podPidsLimit:
          map['podPidsLimit'] == null ? null : map['podPidsLimit'] as int,
      singleProcessOomKill: map['singleProcessOomKill'] == null
          ? null
          : map['singleProcessOomKill'] as bool,
      topologyManager: map['topologyManager'] == null
          ? null
          : ClusterNodePoolNodeConfigKubeletConfigTopologyManager.fromMap(
              (map['topologyManager'] as Map).cast<String, dynamic>()),
    );
  }
}
