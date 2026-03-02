// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_node_pools_nodepool_kubelet_configuration_reserved_memory.dart';
import 'get_kubernetes_node_pools_nodepool_kubelet_configuration_tracing.dart';

class GetKubernetesNodePoolsNodepoolKubeletConfiguration {
  /// Allowed sysctl mode whitelist.
  final pulumi.Input<List<String>> allowedUnsafeSysctls;
  /// The list of IP addresses of the cluster DNS servers.
  final pulumi.Input<List<String>> clusterDns;
  /// The maximum number of log files that can exist in each container.
  final pulumi.Input<String> containerLogMaxFiles;
  /// The maximum size that can be reached before a log file is rotated.
  final pulumi.Input<String> containerLogMaxSize;
  /// Specifies the maximum number of concurrent workers required to perform log rotation operations.
  final pulumi.Input<String> containerLogMaxWorkers;
  /// Specifies the duration for which container logs are monitored for log rotation.
  final pulumi.Input<String> containerLogMonitorInterval;
  /// CPU CFS quota constraint switch.
  final pulumi.Input<String> cpuCfsQuota;
  /// CPU CFS quota period value.
  final pulumi.Input<String> cpuCfsQuotaPeriod;
  /// Same as cpuManagerPolicy. The name of the policy to use. Requires the CPUManager feature gate to be enabled. Valid value is `none` or `static`.
  final pulumi.Input<String> cpuManagerPolicy;
  /// Same as eventBurst. The maximum size of a burst of event creations, temporarily allows event creations to burst to this number, while still not exceeding `event_record_qps`. It is only used when `event_record_qps` is greater than 0. Valid value is `[0-100]`.
  final pulumi.Input<String> eventBurst;
  /// Same as eventRecordQPS. The maximum event creations per second. If 0, there is no limit enforced. Valid value is `[0-50]`.
  final pulumi.Input<String> eventRecordQps;
  /// Same as evictionHard. The map of signal names to quantities that defines hard eviction thresholds. For example: `{"memory.available" = "300Mi"}`.
  final pulumi.Input<Map<String, String>> evictionHard;
  /// Same as evictionSoft. The map of signal names to quantities that defines soft eviction thresholds. For example: `{"memory.available" = "300Mi"}`.
  final pulumi.Input<Map<String, String>> evictionSoft;
  /// Same as evictionSoftGracePeriod. The map of signal names to quantities that defines grace periods for each soft eviction signal. For example: `{"memory.available" = "30s"}`.
  final pulumi.Input<Map<String, String>> evictionSoftGracePeriod;
  /// Feature switch to enable configuration of experimental features.
  final pulumi.Input<Map<String, String>> featureGates;
  /// If the image usage exceeds this threshold, image garbage collection will continue.
  final pulumi.Input<String> imageGcHighThresholdPercent;
  /// Image garbage collection is not performed when the image usage is below this threshold.
  final pulumi.Input<String> imageGcLowThresholdPercent;
  /// Same as kubeAPIBurst. The burst to allow while talking with kubernetes api-server. Valid value is `[0-100]`.
  final pulumi.Input<String> kubeApiBurst;
  /// Same as kubeAPIQPS. The QPS to use while talking with kubernetes api-server. Valid value is `[0-50]`.
  final pulumi.Input<String> kubeApiQps;
  /// Same as kubeReserved. The set of ResourceName=ResourceQuantity (e.g. cpu=200m,memory=150G) pairs that describe resources reserved for kubernetes system components. Currently, cpu, memory and local storage for root file system are supported. See [compute resources](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/) for more details.
  final pulumi.Input<Map<String, String>> kubeReserved;
  /// The maximum number of running pods.
  final pulumi.Input<String> maxPods;
  /// The policy to be used by the memory manager.
  final pulumi.Input<String> memoryManagerPolicy;
  /// The maximum number of PIDs that can be used in a Pod.
  final pulumi.Input<String> podPidsLimit;
  /// Read-only port number.
  final pulumi.Input<String> readOnlyPort;
  /// Same as registryBurst. The maximum size of burst pulls, temporarily allows pulls to burst to this number, while still not exceeding `registry_pull_qps`. Only used if `registry_pull_qps` is greater than 0. Valid value is `[0-100]`.
  final pulumi.Input<String> registryBurst;
  /// Same as registryPullQPS. The limit of registry pulls per second. Setting it to `0` means no limit. Valid value is `[0-50]`.
  final pulumi.Input<String> registryPullQps;
  /// Reserve memory for NUMA nodes.
  final pulumi.Input<List<GetKubernetesNodePoolsNodepoolKubeletConfigurationReservedMemory>> reservedMemories;
  /// Same as serializeImagePulls. When enabled, it tells the Kubelet to pull images one at a time. We recommend not changing the default value on nodes that run docker daemon with version < 1.9 or an Aufs storage backend. Valid value is `true` or `false`.
  final pulumi.Input<String> serializeImagePulls;
  /// Same as systemReserved. The set of ResourceName=ResourceQuantity (e.g. cpu=200m,memory=150G) pairs that describe resources reserved for non-kubernetes components. Currently, only cpu and memory are supported. See [compute resources](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/) for more details.
  final pulumi.Input<Map<String, String>> systemReserved;
  /// Name of the Topology Manager policy used.
  final pulumi.Input<String> topologyManagerPolicy;
  /// OpenTelemetry tracks the configuration information for client settings versioning.
  final pulumi.Input<GetKubernetesNodePoolsNodepoolKubeletConfigurationTracing> tracing;

  /// Creates a new [GetKubernetesNodePoolsNodepoolKubeletConfiguration].
  /// [allowedUnsafeSysctls] Allowed sysctl mode whitelist.
  /// [clusterDns] The list of IP addresses of the cluster DNS servers.
  /// [containerLogMaxFiles] The maximum number of log files that can exist in each container.
  /// [containerLogMaxSize] The maximum size that can be reached before a log file is rotated.
  /// [containerLogMaxWorkers] Specifies the maximum number of concurrent workers required to perform log rotation operations.
  /// [containerLogMonitorInterval] Specifies the duration for which container logs are monitored for log rotation.
  /// [cpuCfsQuota] CPU CFS quota constraint switch.
  /// [cpuCfsQuotaPeriod] CPU CFS quota period value.
  /// [cpuManagerPolicy] Same as cpuManagerPolicy. The name of the policy to use. Requires the CPUManager feature gate to be enabled. Valid value is `none` or `static`.
  /// [eventBurst] Same as eventBurst. The maximum size of a burst of event creations, temporarily allows event creations to burst to this number, while still not exceeding `event_record_qps`. It is only used when `event_record_qps` is greater than 0. Valid value is `[0-100]`.
  /// [eventRecordQps] Same as eventRecordQPS. The maximum event creations per second. If 0, there is no limit enforced. Valid value is `[0-50]`.
  /// [evictionHard] Same as evictionHard. The map of signal names to quantities that defines hard eviction thresholds. For example: `{"memory.available" = "300Mi"}`.
  /// [evictionSoft] Same as evictionSoft. The map of signal names to quantities that defines soft eviction thresholds. For example: `{"memory.available" = "300Mi"}`.
  /// [evictionSoftGracePeriod] Same as evictionSoftGracePeriod. The map of signal names to quantities that defines grace periods for each soft eviction signal. For example: `{"memory.available" = "30s"}`.
  /// [featureGates] Feature switch to enable configuration of experimental features.
  /// [imageGcHighThresholdPercent] If the image usage exceeds this threshold, image garbage collection will continue.
  /// [imageGcLowThresholdPercent] Image garbage collection is not performed when the image usage is below this threshold.
  /// [kubeApiBurst] Same as kubeAPIBurst. The burst to allow while talking with kubernetes api-server. Valid value is `[0-100]`.
  /// [kubeApiQps] Same as kubeAPIQPS. The QPS to use while talking with kubernetes api-server. Valid value is `[0-50]`.
  /// [kubeReserved] Same as kubeReserved. The set of ResourceName=ResourceQuantity (e.g. cpu=200m,memory=150G) pairs that describe resources reserved for kubernetes system components. Currently, cpu, memory and local storage for root file system are supported. See [compute resources](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/) for more details.
  /// [maxPods] The maximum number of running pods.
  /// [memoryManagerPolicy] The policy to be used by the memory manager.
  /// [podPidsLimit] The maximum number of PIDs that can be used in a Pod.
  /// [readOnlyPort] Read-only port number.
  /// [registryBurst] Same as registryBurst. The maximum size of burst pulls, temporarily allows pulls to burst to this number, while still not exceeding `registry_pull_qps`. Only used if `registry_pull_qps` is greater than 0. Valid value is `[0-100]`.
  /// [registryPullQps] Same as registryPullQPS. The limit of registry pulls per second. Setting it to `0` means no limit. Valid value is `[0-50]`.
  /// [reservedMemories] Reserve memory for NUMA nodes.
  /// [serializeImagePulls] Same as serializeImagePulls. When enabled, it tells the Kubelet to pull images one at a time. We recommend not changing the default value on nodes that run docker daemon with version < 1.9 or an Aufs storage backend. Valid value is `true` or `false`.
  /// [systemReserved] Same as systemReserved. The set of ResourceName=ResourceQuantity (e.g. cpu=200m,memory=150G) pairs that describe resources reserved for non-kubernetes components. Currently, only cpu and memory are supported. See [compute resources](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/) for more details.
  /// [topologyManagerPolicy] Name of the Topology Manager policy used.
  /// [tracing] OpenTelemetry tracks the configuration information for client settings versioning.
  GetKubernetesNodePoolsNodepoolKubeletConfiguration({
    required this.allowedUnsafeSysctls,
    required this.clusterDns,
    required this.containerLogMaxFiles,
    required this.containerLogMaxSize,
    required this.containerLogMaxWorkers,
    required this.containerLogMonitorInterval,
    required this.cpuCfsQuota,
    required this.cpuCfsQuotaPeriod,
    required this.cpuManagerPolicy,
    required this.eventBurst,
    required this.eventRecordQps,
    required this.evictionHard,
    required this.evictionSoft,
    required this.evictionSoftGracePeriod,
    required this.featureGates,
    required this.imageGcHighThresholdPercent,
    required this.imageGcLowThresholdPercent,
    required this.kubeApiBurst,
    required this.kubeApiQps,
    required this.kubeReserved,
    required this.maxPods,
    required this.memoryManagerPolicy,
    required this.podPidsLimit,
    required this.readOnlyPort,
    required this.registryBurst,
    required this.registryPullQps,
    required this.reservedMemories,
    required this.serializeImagePulls,
    required this.systemReserved,
    required this.topologyManagerPolicy,
    required this.tracing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedUnsafeSysctls': allowedUnsafeSysctls,
      'clusterDns': clusterDns,
      'containerLogMaxFiles': containerLogMaxFiles,
      'containerLogMaxSize': containerLogMaxSize,
      'containerLogMaxWorkers': containerLogMaxWorkers,
      'containerLogMonitorInterval': containerLogMonitorInterval,
      'cpuCfsQuota': cpuCfsQuota,
      'cpuCfsQuotaPeriod': cpuCfsQuotaPeriod,
      'cpuManagerPolicy': cpuManagerPolicy,
      'eventBurst': eventBurst,
      'eventRecordQps': eventRecordQps,
      'evictionHard': evictionHard,
      'evictionSoft': evictionSoft,
      'evictionSoftGracePeriod': evictionSoftGracePeriod,
      'featureGates': featureGates,
      'imageGcHighThresholdPercent': imageGcHighThresholdPercent,
      'imageGcLowThresholdPercent': imageGcLowThresholdPercent,
      'kubeApiBurst': kubeApiBurst,
      'kubeApiQps': kubeApiQps,
      'kubeReserved': kubeReserved,
      'maxPods': maxPods,
      'memoryManagerPolicy': memoryManagerPolicy,
      'podPidsLimit': podPidsLimit,
      'readOnlyPort': readOnlyPort,
      'registryBurst': registryBurst,
      'registryPullQps': registryPullQps,
      'reservedMemories': pulumi.Input.mapInputValue<List<GetKubernetesNodePoolsNodepoolKubeletConfigurationReservedMemory>, List<Map<String, dynamic>>>(reservedMemories, (value) => pulumi.Input.encodeList<GetKubernetesNodePoolsNodepoolKubeletConfigurationReservedMemory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serializeImagePulls': serializeImagePulls,
      'systemReserved': systemReserved,
      'topologyManagerPolicy': topologyManagerPolicy,
      'tracing': pulumi.Input.mapInputValue<GetKubernetesNodePoolsNodepoolKubeletConfigurationTracing, Map<String, dynamic>>(tracing, (value) => value.toMap()),
    };
  }

  factory GetKubernetesNodePoolsNodepoolKubeletConfiguration.fromMap(Map<String, dynamic> map) {
    return GetKubernetesNodePoolsNodepoolKubeletConfiguration(
      allowedUnsafeSysctls: ((map['allowedUnsafeSysctls'] as List).cast<String>()).input(),
      clusterDns: ((map['clusterDns'] as List).cast<String>()).input(),
      containerLogMaxFiles: (map['containerLogMaxFiles'] as String).input(),
      containerLogMaxSize: (map['containerLogMaxSize'] as String).input(),
      containerLogMaxWorkers: (map['containerLogMaxWorkers'] as String).input(),
      containerLogMonitorInterval: (map['containerLogMonitorInterval'] as String).input(),
      cpuCfsQuota: (map['cpuCfsQuota'] as String).input(),
      cpuCfsQuotaPeriod: (map['cpuCfsQuotaPeriod'] as String).input(),
      cpuManagerPolicy: (map['cpuManagerPolicy'] as String).input(),
      eventBurst: (map['eventBurst'] as String).input(),
      eventRecordQps: (map['eventRecordQps'] as String).input(),
      evictionHard: ((map['evictionHard'] as Map).cast<String, String>()).input(),
      evictionSoft: ((map['evictionSoft'] as Map).cast<String, String>()).input(),
      evictionSoftGracePeriod: ((map['evictionSoftGracePeriod'] as Map).cast<String, String>()).input(),
      featureGates: ((map['featureGates'] as Map).cast<String, String>()).input(),
      imageGcHighThresholdPercent: (map['imageGcHighThresholdPercent'] as String).input(),
      imageGcLowThresholdPercent: (map['imageGcLowThresholdPercent'] as String).input(),
      kubeApiBurst: (map['kubeApiBurst'] as String).input(),
      kubeApiQps: (map['kubeApiQps'] as String).input(),
      kubeReserved: ((map['kubeReserved'] as Map).cast<String, String>()).input(),
      maxPods: (map['maxPods'] as String).input(),
      memoryManagerPolicy: (map['memoryManagerPolicy'] as String).input(),
      podPidsLimit: (map['podPidsLimit'] as String).input(),
      readOnlyPort: (map['readOnlyPort'] as String).input(),
      registryBurst: (map['registryBurst'] as String).input(),
      registryPullQps: (map['registryPullQps'] as String).input(),
      reservedMemories: (pulumi.Input.decodeList<GetKubernetesNodePoolsNodepoolKubeletConfigurationReservedMemory>(map['reservedMemories'], (value) => GetKubernetesNodePoolsNodepoolKubeletConfigurationReservedMemory.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serializeImagePulls: (map['serializeImagePulls'] as String).input(),
      systemReserved: ((map['systemReserved'] as Map).cast<String, String>()).input(),
      topologyManagerPolicy: (map['topologyManagerPolicy'] as String).input(),
      tracing: (GetKubernetesNodePoolsNodepoolKubeletConfigurationTracing.fromMap((map['tracing'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

