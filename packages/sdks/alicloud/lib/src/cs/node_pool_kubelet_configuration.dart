// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_pool_kubelet_configuration_reserved_memory.dart';
import 'node_pool_kubelet_configuration_tracing.dart';

class NodePoolKubeletConfiguration {
  /// Allowed sysctl mode whitelist.
  final pulumi.Input<List<String>>? allowedUnsafeSysctls;
  /// The list of IP addresses of the cluster DNS servers.
  final pulumi.Input<List<String>>? clusterDns;
  /// The maximum number of log files that can exist in each container.
  final pulumi.Input<String>? containerLogMaxFiles;
  /// The maximum size that can be reached before a log file is rotated.
  final pulumi.Input<String>? containerLogMaxSize;
  /// Specifies the maximum number of concurrent workers required to perform log rotation operations.
  final pulumi.Input<String>? containerLogMaxWorkers;
  /// Specifies the duration for which container logs are monitored for log rotation.
  final pulumi.Input<String>? containerLogMonitorInterval;
  /// CPU CFS quota constraint switch.
  final pulumi.Input<String>? cpuCfsQuota;
  /// CPU CFS quota period value.
  final pulumi.Input<String>? cpuCfsQuotaPeriod;
  /// Same as cpuManagerPolicy. The name of the policy to use. Requires the CPUManager feature gate to be enabled. Valid value is `none` or `static`.
  final pulumi.Input<String>? cpuManagerPolicy;
  /// Same as eventBurst. The maximum size of a burst of event creations, temporarily allows event creations to burst to this number, while still not exceeding `event_record_qps`. It is only used when `event_record_qps` is greater than 0. Valid value is `[0-100]`.
  final pulumi.Input<String>? eventBurst;
  /// Same as eventRecordQPS. The maximum event creations per second. If 0, there is no limit enforced. Valid value is `[0-50]`.
  final pulumi.Input<String>? eventRecordQps;
  /// Same as evictionHard. The map of signal names to quantities that defines hard eviction thresholds. For example: `{"memory.available" = "300Mi"}`.
  final pulumi.Input<Map<String, String>>? evictionHard;
  /// Same as evictionSoft. The map of signal names to quantities that defines soft eviction thresholds. For example: `{"memory.available" = "300Mi"}`.
  final pulumi.Input<Map<String, String>>? evictionSoft;
  /// Same as evictionSoftGracePeriod. The map of signal names to quantities that defines grace periods for each soft eviction signal. For example: `{"memory.available" = "30s"}`.
  final pulumi.Input<Map<String, String>>? evictionSoftGracePeriod;
  /// Feature switch to enable configuration of experimental features.
  final pulumi.Input<Map<String, bool>>? featureGates;
  /// If the image usage exceeds this threshold, image garbage collection will continue.
  final pulumi.Input<String>? imageGcHighThresholdPercent;
  /// Image garbage collection is not performed when the image usage is below this threshold.
  final pulumi.Input<String>? imageGcLowThresholdPercent;
  /// Same as kubeAPIBurst. The burst to allow while talking with kubernetes api-server. Valid value is `[0-100]`.
  final pulumi.Input<String>? kubeApiBurst;
  /// Same as kubeAPIQPS. The QPS to use while talking with kubernetes api-server. Valid value is `[0-50]`.
  final pulumi.Input<String>? kubeApiQps;
  /// Same as kubeReserved. The set of ResourceName=ResourceQuantity (e.g. cpu=200m,memory=150G) pairs that describe resources reserved for kubernetes system components. Currently, cpu, memory and local storage for root file system are supported. See [compute resources](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/) for more details.
  final pulumi.Input<Map<String, String>>? kubeReserved;
  /// The maximum number of running pods.
  final pulumi.Input<String>? maxPods;
  /// The policy to be used by the memory manager.
  final pulumi.Input<String>? memoryManagerPolicy;
  /// The maximum number of PIDs that can be used in a Pod.
  final pulumi.Input<String>? podPidsLimit;
  /// Read-only port number.
  final pulumi.Input<String>? readOnlyPort;
  /// Same as registryBurst. The maximum size of burst pulls, temporarily allows pulls to burst to this number, while still not exceeding `registry_pull_qps`. Only used if `registry_pull_qps` is greater than 0. Valid value is `[0-100]`.
  final pulumi.Input<String>? registryBurst;
  /// Same as registryPullQPS. The limit of registry pulls per second. Setting it to `0` means no limit. Valid value is `[0-50]`.
  final pulumi.Input<String>? registryPullQps;
  /// Reserve memory for NUMA nodes. See `reserved_memory` below.
  final pulumi.Input<List<NodePoolKubeletConfigurationReservedMemory>>? reservedMemories;
  /// Same as serializeImagePulls. When enabled, it tells the Kubelet to pull images one at a time. We recommend not changing the default value on nodes that run docker daemon with version &lt; 1.9 or an Aufs storage backend. Valid value is `true` or `false`.
  final pulumi.Input<String>? serializeImagePulls;
  /// Used to enable the kubelet server certificate signing and rotation via CSR.
  final pulumi.Input<bool>? serverTlsBootstrap;
  /// Same as systemReserved. The set of ResourceName=ResourceQuantity (e.g. cpu=200m,memory=150G) pairs that describe resources reserved for non-kubernetes components. Currently, only cpu and memory are supported. See [compute resources](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/) for more details.
  final pulumi.Input<Map<String, String>>? systemReserved;
  /// Name of the Topology Manager policy used.
  final pulumi.Input<String>? topologyManagerPolicy;
  /// OpenTelemetry tracks the configuration information for client settings versioning. See `tracing` below.
  final pulumi.Input<NodePoolKubeletConfigurationTracing>? tracing;

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
  /// [serializeImagePulls] Same as serializeImagePulls. When enabled, it tells the Kubelet to pull images one at a time. We recommend not changing the default value on nodes that run docker daemon with version &lt; 1.9 or an Aufs storage backend. Valid value is `true` or `false`.
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
      'reservedMemories': ?pulumi.Input.mapOptionalInputValue<List<NodePoolKubeletConfigurationReservedMemory>, List<Map<String, dynamic>>>(reservedMemories, (value) => pulumi.Input.encodeList<NodePoolKubeletConfigurationReservedMemory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serializeImagePulls': ?serializeImagePulls,
      'serverTlsBootstrap': ?serverTlsBootstrap,
      'systemReserved': ?systemReserved,
      'topologyManagerPolicy': ?topologyManagerPolicy,
      'tracing': ?pulumi.Input.mapOptionalInputValue<NodePoolKubeletConfigurationTracing, Map<String, dynamic>>(tracing, (value) => value.toMap()),
    };
  }

  factory NodePoolKubeletConfiguration.fromMap(Map<String, dynamic> map) {
    return NodePoolKubeletConfiguration(
      allowedUnsafeSysctls: (() { final guardedValue = map['allowedUnsafeSysctls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clusterDns: (() { final guardedValue = map['clusterDns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      containerLogMaxFiles: (() { final guardedValue = map['containerLogMaxFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerLogMaxSize: (() { final guardedValue = map['containerLogMaxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerLogMaxWorkers: (() { final guardedValue = map['containerLogMaxWorkers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerLogMonitorInterval: (() { final guardedValue = map['containerLogMonitorInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCfsQuota: (() { final guardedValue = map['cpuCfsQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuCfsQuotaPeriod: (() { final guardedValue = map['cpuCfsQuotaPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuManagerPolicy: (() { final guardedValue = map['cpuManagerPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventBurst: (() { final guardedValue = map['eventBurst']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventRecordQps: (() { final guardedValue = map['eventRecordQps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evictionHard: (() { final guardedValue = map['evictionHard']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      evictionSoft: (() { final guardedValue = map['evictionSoft']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      evictionSoftGracePeriod: (() { final guardedValue = map['evictionSoftGracePeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      featureGates: (() { final guardedValue = map['featureGates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, bool>()); })(),
      imageGcHighThresholdPercent: (() { final guardedValue = map['imageGcHighThresholdPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageGcLowThresholdPercent: (() { final guardedValue = map['imageGcLowThresholdPercent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubeApiBurst: (() { final guardedValue = map['kubeApiBurst']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubeApiQps: (() { final guardedValue = map['kubeApiQps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubeReserved: (() { final guardedValue = map['kubeReserved']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      maxPods: (() { final guardedValue = map['maxPods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryManagerPolicy: (() { final guardedValue = map['memoryManagerPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      podPidsLimit: (() { final guardedValue = map['podPidsLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readOnlyPort: (() { final guardedValue = map['readOnlyPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryBurst: (() { final guardedValue = map['registryBurst']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryPullQps: (() { final guardedValue = map['registryPullQps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reservedMemories: (() { final guardedValue = map['reservedMemories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodePoolKubeletConfigurationReservedMemory>(guardedValue, (value) => NodePoolKubeletConfigurationReservedMemory.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serializeImagePulls: (() { final guardedValue = map['serializeImagePulls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverTlsBootstrap: (() { final guardedValue = map['serverTlsBootstrap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      systemReserved: (() { final guardedValue = map['systemReserved']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      topologyManagerPolicy: (() { final guardedValue = map['topologyManagerPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tracing: (() { final guardedValue = map['tracing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NodePoolKubeletConfigurationTracing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

