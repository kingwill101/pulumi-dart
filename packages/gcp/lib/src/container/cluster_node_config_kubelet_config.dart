// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_node_config_kubelet_config_eviction_minimum_reclaim.dart';
import 'cluster_node_config_kubelet_config_eviction_soft.dart';
import 'cluster_node_config_kubelet_config_eviction_soft_grace_period.dart';
import 'cluster_node_config_kubelet_config_memory_manager.dart';
import 'cluster_node_config_kubelet_config_topology_manager.dart';

class ClusterNodeConfigKubeletConfig {
  /// Defines a comma-separated allowlist of unsafe sysctls or sysctl patterns which can be set on the Pods. The allowed sysctl groups are `kernel.shm*`, `kernel.msg*`, `kernel.sem`, `fs.mqueue.*`, and `net.*`.
  final List<String>? allowedUnsafeSysctls;

  /// Defines the maximum number of container log files that can be present for a container. The integer must be between 2 and 10, inclusive.
  final int? containerLogMaxFiles;

  /// Defines the maximum size of the
  /// container log file before it is rotated. Specified as a positive number and a
  /// unit suffix, such as `"100Ki"`, `"10Mi"`. Valid units are "Ki", "Mi", "Gi".
  /// The value must be between `"10Mi"` and `"500Mi"`, inclusive. And the total container log size
  /// (`container_log_max_size` * `container_log_max_files`) cannot exceed 1% of the total storage of the node.
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
  final ClusterNodeConfigKubeletConfigEvictionMinimumReclaim?
  evictionMinimumReclaim;

  /// Defines a map of signal names to quantities or percentage that defines soft eviction thresholds. Structure is documented below.
  final ClusterNodeConfigKubeletConfigEvictionSoft? evictionSoft;

  /// Defines a map of signal names to durations that defines grace periods for soft eviction thresholds. Each soft eviction threshold must have a corresponding grace period. Structure is documented below.
  final ClusterNodeConfigKubeletConfigEvictionSoftGracePeriod?
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
  final ClusterNodeConfigKubeletConfigMemoryManager? memoryManager;

  /// Controls the maximum number of processes allowed to run in a pod. The value must be greater than or equal to 1024 and less than 4194304.
  final int? podPidsLimit;

  /// Defines whether to enable single process OOM killer. If true, the processes in the container will be OOM killed individually instead of as a group.
  final bool? singleProcessOomKill;

  /// These settings control the kubelet's [Topology Manager policy](https://kubernetes.io/docs/tasks/administer-cluster/topology-manager/#topology-manager-policies), which coordinates the set of components responsible for performance optimizations related to CPU isolation, memory, and device locality. Structure is documented below.
  final ClusterNodeConfigKubeletConfigTopologyManager? topologyManager;

  /// Creates a new [ClusterNodeConfigKubeletConfig].
  /// [allowedUnsafeSysctls] Defines a comma-separated allowlist of unsafe sysctls or sysctl patterns which can be set on the Pods. The allowed sysctl groups are `kernel.shm*`, `kernel.msg*`, `kernel.sem`, `fs.mqueue.*`, and `net.*`.
  /// [containerLogMaxFiles] Defines the maximum number of container log files that can be present for a container. The integer must be between 2 and 10, inclusive.
  /// [containerLogMaxSize] Defines the maximum size of the
  /// [cpuCfsQuota] If true, enables CPU CFS quota enforcement for
  /// [cpuCfsQuotaPeriod] The CPU CFS quota period value. Specified
  /// [cpuManagerPolicy] The CPU management policy on the node. See
  /// [evictionMaxPodGracePeriodSeconds] Defines the maximum allowed grace period (in seconds) to use when terminating pods in response to a soft eviction threshold being met. The integer must be positive and not exceed 300.
  /// [evictionMinimumReclaim] Defines a map of signal names to percentage that defines minimum reclaims. It describes the minimum amount of a given resource the kubelet will reclaim when performing a pod eviction. Structure is documented below.
  /// [evictionSoft] Defines a map of signal names to quantities or percentage that defines soft eviction thresholds. Structure is documented below.
  /// [evictionSoftGracePeriod] Defines a map of signal names to durations that defines grace periods for soft eviction thresholds. Each soft eviction threshold must have a corresponding grace period. Structure is documented below.
  /// [imageGcHighThresholdPercent] Defines the percent of disk usage after which image garbage collection is always run. The integer must be between 10 and 85, inclusive.
  /// [imageGcLowThresholdPercent] Defines the percent of disk usage before which image garbage collection is never run. Lowest disk usage to garbage collect to. The integer must be between 10 and 85, inclusive.
  /// [imageMaximumGcAge] Defines the maximum age an image can be unused before it is garbage collected. Specified as a sequence of decimal numbers, each with optional fraction and a unit suffix, such as `"300s"`, `"1.5m"`, and `"2h45m"`. Valid time units are "ns", "us" (or "µs"), "ms", "s", "m", "h". The value must be a positive duration.
  /// [imageMinimumGcAge] Defines the minimum age for an unused image before it is garbage collected. Specified as a sequence of decimal numbers, each with optional fraction and a unit suffix, such as `"300s"`, `"1.5m"`. The value cannot be greater than "2m".
  /// [insecureKubeletReadonlyPortEnabled] Controls whether the kubelet read-only port is enabled. It is strongly recommended to set this to `FALSE`. Possible values: `TRUE`, `FALSE`.
  /// [maxParallelImagePulls] Set the maximum number of image pulls in parallel. The integer must be between 2 and 5, inclusive.
  /// [memoryManager] Configuration for the [memory manager](https://kubernetes.io/docs/tasks/administer-cluster/memory-manager/) on the node.
  /// [podPidsLimit] Controls the maximum number of processes allowed to run in a pod. The value must be greater than or equal to 1024 and less than 4194304.
  /// [singleProcessOomKill] Defines whether to enable single process OOM killer. If true, the processes in the container will be OOM killed individually instead of as a group.
  /// [topologyManager] These settings control the kubelet's [Topology Manager policy](https://kubernetes.io/docs/tasks/administer-cluster/topology-manager/#topology-manager-policies), which coordinates the set of components responsible for performance optimizations related to CPU isolation, memory, and device locality. Structure is documented below.
  ClusterNodeConfigKubeletConfig({
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
    return <String, dynamic>{
      'allowedUnsafeSysctls': ?allowedUnsafeSysctls,
      'containerLogMaxFiles': ?containerLogMaxFiles,
      'containerLogMaxSize': ?containerLogMaxSize,
      'cpuCfsQuota': ?cpuCfsQuota,
      'cpuCfsQuotaPeriod': ?cpuCfsQuotaPeriod,
      'cpuManagerPolicy': ?cpuManagerPolicy,
      'evictionMaxPodGracePeriodSeconds': ?evictionMaxPodGracePeriodSeconds,
      'evictionMinimumReclaim': ?evictionMinimumReclaim == null
          ? null
          : evictionMinimumReclaim!.toMap(),
      'evictionSoft': ?evictionSoft == null ? null : evictionSoft!.toMap(),
      'evictionSoftGracePeriod': ?evictionSoftGracePeriod == null
          ? null
          : evictionSoftGracePeriod!.toMap(),
      'imageGcHighThresholdPercent': ?imageGcHighThresholdPercent,
      'imageGcLowThresholdPercent': ?imageGcLowThresholdPercent,
      'imageMaximumGcAge': ?imageMaximumGcAge,
      'imageMinimumGcAge': ?imageMinimumGcAge,
      'insecureKubeletReadonlyPortEnabled': ?insecureKubeletReadonlyPortEnabled,
      'maxParallelImagePulls': ?maxParallelImagePulls,
      'memoryManager': ?memoryManager == null ? null : memoryManager!.toMap(),
      'podPidsLimit': ?podPidsLimit,
      'singleProcessOomKill': ?singleProcessOomKill,
      'topologyManager': ?topologyManager == null
          ? null
          : topologyManager!.toMap(),
    };
  }

  factory ClusterNodeConfigKubeletConfig.fromMap(Map<String, dynamic> map) {
    return ClusterNodeConfigKubeletConfig(
      allowedUnsafeSysctls: map['allowedUnsafeSysctls'] == null
          ? null
          : (map['allowedUnsafeSysctls'] as List).cast<String>(),
      containerLogMaxFiles: map['containerLogMaxFiles'] == null
          ? null
          : map['containerLogMaxFiles'] as int,
      containerLogMaxSize: map['containerLogMaxSize'] == null
          ? null
          : map['containerLogMaxSize'] as String,
      cpuCfsQuota: map['cpuCfsQuota'] == null
          ? null
          : map['cpuCfsQuota'] as bool,
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
          : ClusterNodeConfigKubeletConfigEvictionMinimumReclaim.fromMap(
              (map['evictionMinimumReclaim'] as Map).cast<String, dynamic>(),
            ),
      evictionSoft: map['evictionSoft'] == null
          ? null
          : ClusterNodeConfigKubeletConfigEvictionSoft.fromMap(
              (map['evictionSoft'] as Map).cast<String, dynamic>(),
            ),
      evictionSoftGracePeriod: map['evictionSoftGracePeriod'] == null
          ? null
          : ClusterNodeConfigKubeletConfigEvictionSoftGracePeriod.fromMap(
              (map['evictionSoftGracePeriod'] as Map).cast<String, dynamic>(),
            ),
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
          : ClusterNodeConfigKubeletConfigMemoryManager.fromMap(
              (map['memoryManager'] as Map).cast<String, dynamic>(),
            ),
      podPidsLimit: map['podPidsLimit'] == null
          ? null
          : map['podPidsLimit'] as int,
      singleProcessOomKill: map['singleProcessOomKill'] == null
          ? null
          : map['singleProcessOomKill'] as bool,
      topologyManager: map['topologyManager'] == null
          ? null
          : ClusterNodeConfigKubeletConfigTopologyManager.fromMap(
              (map['topologyManager'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
