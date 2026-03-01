// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_kubelet_configuration_reserved_memory.dart';
import 'node_pool_kubelet_configuration_tracing.dart';

class NodePoolKubeletConfiguration {
  /// Allowed sysctl mode whitelist.
  final List<String>? allowedUnsafeSysctls;
  /// The list of IP addresses of the cluster DNS servers.
  final List<String>? clusterDns;
  /// The maximum number of log files that can exist in each container.
  final String? containerLogMaxFiles;
  /// The maximum size that can be reached before a log file is rotated.
  final String? containerLogMaxSize;
  /// Specifies the maximum number of concurrent workers required to perform log rotation operations.
  final String? containerLogMaxWorkers;
  /// Specifies the duration for which container logs are monitored for log rotation.
  final String? containerLogMonitorInterval;
  /// CPU CFS quota constraint switch.
  final String? cpuCfsQuota;
  /// CPU CFS quota period value.
  final String? cpuCfsQuotaPeriod;
  /// Same as cpuManagerPolicy. The name of the policy to use. Requires the CPUManager feature gate to be enabled. Valid value is `none` or `static`.
  final String? cpuManagerPolicy;
  /// Same as eventBurst. The maximum size of a burst of event creations, temporarily allows event creations to burst to this number, while still not exceeding `event_record_qps`. It is only used when `event_record_qps` is greater than 0. Valid value is `[0-100]`.
  final String? eventBurst;
  /// Same as eventRecordQPS. The maximum event creations per second. If 0, there is no limit enforced. Valid value is `[0-50]`.
  final String? eventRecordQps;
  /// Same as evictionHard. The map of signal names to quantities that defines hard eviction thresholds. For example: `{"memory.available" = "300Mi"}`.
  final Map<String, String>? evictionHard;
  /// Same as evictionSoft. The map of signal names to quantities that defines soft eviction thresholds. For example: `{"memory.available" = "300Mi"}`.
  final Map<String, String>? evictionSoft;
  /// Same as evictionSoftGracePeriod. The map of signal names to quantities that defines grace periods for each soft eviction signal. For example: `{"memory.available" = "30s"}`.
  final Map<String, String>? evictionSoftGracePeriod;
  /// Feature switch to enable configuration of experimental features.
  final Map<String, bool>? featureGates;
  /// If the image usage exceeds this threshold, image garbage collection will continue.
  final String? imageGcHighThresholdPercent;
  /// Image garbage collection is not performed when the image usage is below this threshold.
  final String? imageGcLowThresholdPercent;
  /// Same as kubeAPIBurst. The burst to allow while talking with kubernetes api-server. Valid value is `[0-100]`.
  final String? kubeApiBurst;
  /// Same as kubeAPIQPS. The QPS to use while talking with kubernetes api-server. Valid value is `[0-50]`.
  final String? kubeApiQps;
  /// Same as kubeReserved. The set of ResourceName=ResourceQuantity (e.g. cpu=200m,memory=150G) pairs that describe resources reserved for kubernetes system components. Currently, cpu, memory and local storage for root file system are supported. See [compute resources](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/) for more details.
  final Map<String, String>? kubeReserved;
  /// The maximum number of running pods.
  final String? maxPods;
  /// The policy to be used by the memory manager.
  final String? memoryManagerPolicy;
  /// The maximum number of PIDs that can be used in a Pod.
  final String? podPidsLimit;
  /// Read-only port number.
  final String? readOnlyPort;
  /// Same as registryBurst. The maximum size of burst pulls, temporarily allows pulls to burst to this number, while still not exceeding `registry_pull_qps`. Only used if `registry_pull_qps` is greater than 0. Valid value is `[0-100]`.
  final String? registryBurst;
  /// Same as registryPullQPS. The limit of registry pulls per second. Setting it to `0` means no limit. Valid value is `[0-50]`.
  final String? registryPullQps;
  /// Reserve memory for NUMA nodes. See `reserved_memory` below.
  final List<NodePoolKubeletConfigurationReservedMemory>? reservedMemories;
  /// Same as serializeImagePulls. When enabled, it tells the Kubelet to pull images one at a time. We recommend not changing the default value on nodes that run docker daemon with version < 1.9 or an Aufs storage backend. Valid value is `true` or `false`.
  final String? serializeImagePulls;
  /// Used to enable the kubelet server certificate signing and rotation via CSR.
  final bool? serverTlsBootstrap;
  /// Same as systemReserved. The set of ResourceName=ResourceQuantity (e.g. cpu=200m,memory=150G) pairs that describe resources reserved for non-kubernetes components. Currently, only cpu and memory are supported. See [compute resources](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/) for more details.
  final Map<String, String>? systemReserved;
  /// Name of the Topology Manager policy used.
  final String? topologyManagerPolicy;
  /// OpenTelemetry tracks the configuration information for client settings versioning. See `tracing` below.
  final NodePoolKubeletConfigurationTracing? tracing;

  /// Creates a new [NodePoolKubeletConfiguration].
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
  /// [reservedMemories] Reserve memory for NUMA nodes. See `reserved_memory` below.
  /// [serializeImagePulls] Same as serializeImagePulls. When enabled, it tells the Kubelet to pull images one at a time. We recommend not changing the default value on nodes that run docker daemon with version < 1.9 or an Aufs storage backend. Valid value is `true` or `false`.
  /// [serverTlsBootstrap] Used to enable the kubelet server certificate signing and rotation via CSR.
  /// [systemReserved] Same as systemReserved. The set of ResourceName=ResourceQuantity (e.g. cpu=200m,memory=150G) pairs that describe resources reserved for non-kubernetes components. Currently, only cpu and memory are supported. See [compute resources](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/) for more details.
  /// [topologyManagerPolicy] Name of the Topology Manager policy used.
  /// [tracing] OpenTelemetry tracks the configuration information for client settings versioning. See `tracing` below.
  NodePoolKubeletConfiguration({
    this.allowedUnsafeSysctls,
    this.clusterDns,
    this.containerLogMaxFiles,
    this.containerLogMaxSize,
    this.containerLogMaxWorkers,
    this.containerLogMonitorInterval,
    this.cpuCfsQuota,
    this.cpuCfsQuotaPeriod,
    this.cpuManagerPolicy,
    this.eventBurst,
    this.eventRecordQps,
    this.evictionHard,
    this.evictionSoft,
    this.evictionSoftGracePeriod,
    this.featureGates,
    this.imageGcHighThresholdPercent,
    this.imageGcLowThresholdPercent,
    this.kubeApiBurst,
    this.kubeApiQps,
    this.kubeReserved,
    this.maxPods,
    this.memoryManagerPolicy,
    this.podPidsLimit,
    this.readOnlyPort,
    this.registryBurst,
    this.registryPullQps,
    this.reservedMemories,
    this.serializeImagePulls,
    this.serverTlsBootstrap,
    this.systemReserved,
    this.topologyManagerPolicy,
    this.tracing,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedUnsafeSysctls': ?allowedUnsafeSysctls,
      'clusterDns': ?clusterDns,
      'containerLogMaxFiles': ?containerLogMaxFiles,
      'containerLogMaxSize': ?containerLogMaxSize,
      'containerLogMaxWorkers': ?containerLogMaxWorkers,
      'containerLogMonitorInterval': ?containerLogMonitorInterval,
      'cpuCfsQuota': ?cpuCfsQuota,
      'cpuCfsQuotaPeriod': ?cpuCfsQuotaPeriod,
      'cpuManagerPolicy': ?cpuManagerPolicy,
      'eventBurst': ?eventBurst,
      'eventRecordQps': ?eventRecordQps,
      'evictionHard': ?evictionHard,
      'evictionSoft': ?evictionSoft,
      'evictionSoftGracePeriod': ?evictionSoftGracePeriod,
      'featureGates': ?featureGates,
      'imageGcHighThresholdPercent': ?imageGcHighThresholdPercent,
      'imageGcLowThresholdPercent': ?imageGcLowThresholdPercent,
      'kubeApiBurst': ?kubeApiBurst,
      'kubeApiQps': ?kubeApiQps,
      'kubeReserved': ?kubeReserved,
      'maxPods': ?maxPods,
      'memoryManagerPolicy': ?memoryManagerPolicy,
      'podPidsLimit': ?podPidsLimit,
      'readOnlyPort': ?readOnlyPort,
      'registryBurst': ?registryBurst,
      'registryPullQps': ?registryPullQps,
      'reservedMemories': ?reservedMemories == null ? null : pulumi.Input.encodeList<NodePoolKubeletConfigurationReservedMemory, Map<String, dynamic>>(reservedMemories!, (value) => value.toMap()),
      'serializeImagePulls': ?serializeImagePulls,
      'serverTlsBootstrap': ?serverTlsBootstrap,
      'systemReserved': ?systemReserved,
      'topologyManagerPolicy': ?topologyManagerPolicy,
      'tracing': ?tracing == null ? null : tracing!.toMap(),
    };
  }

  factory NodePoolKubeletConfiguration.fromMap(Map<String, dynamic> map) {
    return NodePoolKubeletConfiguration(
      allowedUnsafeSysctls: map['allowedUnsafeSysctls'] == null ? null : (map['allowedUnsafeSysctls'] as List).cast<String>(),
      clusterDns: map['clusterDns'] == null ? null : (map['clusterDns'] as List).cast<String>(),
      containerLogMaxFiles: map['containerLogMaxFiles'] == null ? null : map['containerLogMaxFiles'] as String,
      containerLogMaxSize: map['containerLogMaxSize'] == null ? null : map['containerLogMaxSize'] as String,
      containerLogMaxWorkers: map['containerLogMaxWorkers'] == null ? null : map['containerLogMaxWorkers'] as String,
      containerLogMonitorInterval: map['containerLogMonitorInterval'] == null ? null : map['containerLogMonitorInterval'] as String,
      cpuCfsQuota: map['cpuCfsQuota'] == null ? null : map['cpuCfsQuota'] as String,
      cpuCfsQuotaPeriod: map['cpuCfsQuotaPeriod'] == null ? null : map['cpuCfsQuotaPeriod'] as String,
      cpuManagerPolicy: map['cpuManagerPolicy'] == null ? null : map['cpuManagerPolicy'] as String,
      eventBurst: map['eventBurst'] == null ? null : map['eventBurst'] as String,
      eventRecordQps: map['eventRecordQps'] == null ? null : map['eventRecordQps'] as String,
      evictionHard: map['evictionHard'] == null ? null : (map['evictionHard'] as Map).cast<String, String>(),
      evictionSoft: map['evictionSoft'] == null ? null : (map['evictionSoft'] as Map).cast<String, String>(),
      evictionSoftGracePeriod: map['evictionSoftGracePeriod'] == null ? null : (map['evictionSoftGracePeriod'] as Map).cast<String, String>(),
      featureGates: map['featureGates'] == null ? null : (map['featureGates'] as Map).cast<String, bool>(),
      imageGcHighThresholdPercent: map['imageGcHighThresholdPercent'] == null ? null : map['imageGcHighThresholdPercent'] as String,
      imageGcLowThresholdPercent: map['imageGcLowThresholdPercent'] == null ? null : map['imageGcLowThresholdPercent'] as String,
      kubeApiBurst: map['kubeApiBurst'] == null ? null : map['kubeApiBurst'] as String,
      kubeApiQps: map['kubeApiQps'] == null ? null : map['kubeApiQps'] as String,
      kubeReserved: map['kubeReserved'] == null ? null : (map['kubeReserved'] as Map).cast<String, String>(),
      maxPods: map['maxPods'] == null ? null : map['maxPods'] as String,
      memoryManagerPolicy: map['memoryManagerPolicy'] == null ? null : map['memoryManagerPolicy'] as String,
      podPidsLimit: map['podPidsLimit'] == null ? null : map['podPidsLimit'] as String,
      readOnlyPort: map['readOnlyPort'] == null ? null : map['readOnlyPort'] as String,
      registryBurst: map['registryBurst'] == null ? null : map['registryBurst'] as String,
      registryPullQps: map['registryPullQps'] == null ? null : map['registryPullQps'] as String,
      reservedMemories: map['reservedMemories'] == null ? null : pulumi.Input.decodeList<NodePoolKubeletConfigurationReservedMemory>(map['reservedMemories'], (value) => NodePoolKubeletConfigurationReservedMemory.fromMap((value as Map).cast<String, dynamic>())),
      serializeImagePulls: map['serializeImagePulls'] == null ? null : map['serializeImagePulls'] as String,
      serverTlsBootstrap: map['serverTlsBootstrap'] == null ? null : map['serverTlsBootstrap'] as bool,
      systemReserved: map['systemReserved'] == null ? null : (map['systemReserved'] as Map).cast<String, String>(),
      topologyManagerPolicy: map['topologyManagerPolicy'] == null ? null : map['topologyManagerPolicy'] as String,
      tracing: map['tracing'] == null ? null : NodePoolKubeletConfigurationTracing.fromMap((map['tracing'] as Map).cast<String, dynamic>()),
    );
  }
}

