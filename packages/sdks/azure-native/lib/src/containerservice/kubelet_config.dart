// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kubelet configurations of agent nodes. See [AKS custom node configuration](https://docs.microsoft.com/azure/aks/custom-node-configuration) for more details.
class KubeletConfig {
  /// Allowed list of unsafe sysctls or unsafe sysctl patterns (ending in `*`).
  final pulumi.Input<List<String>>? allowedUnsafeSysctls;
  /// The maximum number of container log files that can be present for a container. The number must be ≥ 2.
  final pulumi.Input<int>? containerLogMaxFiles;
  /// The maximum size (e.g. 10Mi) of container log file before it is rotated.
  final pulumi.Input<int>? containerLogMaxSizeMB;
  /// If CPU CFS quota enforcement is enabled for containers that specify CPU limits. The default is true.
  final pulumi.Input<bool>? cpuCfsQuota;
  /// The CPU CFS quota period value. The default is '100ms.' Valid values are a sequence of decimal numbers with an optional fraction and a unit suffix. For example: '300ms', '2h45m'. Supported units are 'ns', 'us', 'ms', 's', 'm', and 'h'.
  final pulumi.Input<String>? cpuCfsQuotaPeriod;
  /// The CPU Manager policy to use. The default is 'none'. See [Kubernetes CPU management policies](https://kubernetes.io/docs/tasks/administer-cluster/cpu-management-policies/#cpu-management-policies) for more information. Allowed values are 'none' and 'static'.
  final pulumi.Input<String>? cpuManagerPolicy;
  /// If set to true it will make the Kubelet fail to start if swap is enabled on the node.
  final pulumi.Input<bool>? failSwapOn;
  /// The percent of disk usage after which image garbage collection is always run. To disable image garbage collection, set to 100. The default is 85%
  final pulumi.Input<int>? imageGcHighThreshold;
  /// The percent of disk usage before which image garbage collection is never run. This cannot be set higher than imageGcHighThreshold. The default is 80%
  final pulumi.Input<int>? imageGcLowThreshold;
  /// The maximum number of processes per pod.
  final pulumi.Input<int>? podMaxPids;
  /// The Topology Manager policy to use. For more information see [Kubernetes Topology Manager](https://kubernetes.io/docs/tasks/administer-cluster/topology-manager). The default is 'none'. Allowed values are 'none', 'best-effort', 'restricted', and 'single-numa-node'.
  final pulumi.Input<String>? topologyManagerPolicy;

  /// Creates a new [KubeletConfig].
  /// [allowedUnsafeSysctls] Allowed list of unsafe sysctls or unsafe sysctl patterns (ending in `*`).
  /// [containerLogMaxFiles] The maximum number of container log files that can be present for a container. The number must be ≥ 2.
  /// [containerLogMaxSizeMB] The maximum size (e.g. 10Mi) of container log file before it is rotated.
  /// [cpuCfsQuota] If CPU CFS quota enforcement is enabled for containers that specify CPU limits. The default is true.
  /// [cpuCfsQuotaPeriod] The CPU CFS quota period value. The default is '100ms.' Valid values are a sequence of decimal numbers with an optional fraction and a unit suffix. For example: '300ms', '2h45m'. Supported units are 'ns', 'us', 'ms', 's', 'm', and 'h'.
  /// [cpuManagerPolicy] The CPU Manager policy to use. The default is 'none'. See [Kubernetes CPU management policies](https://kubernetes.io/docs/tasks/administer-cluster/cpu-management-policies/#cpu-management-policies) for more information. Allowed values are 'none' and 'static'.
  /// [failSwapOn] If set to true it will make the Kubelet fail to start if swap is enabled on the node.
  /// [imageGcHighThreshold] The percent of disk usage after which image garbage collection is always run. To disable image garbage collection, set to 100. The default is 85%
  /// [imageGcLowThreshold] The percent of disk usage before which image garbage collection is never run. This cannot be set higher than imageGcHighThreshold. The default is 80%
  /// [podMaxPids] The maximum number of processes per pod.
  /// [topologyManagerPolicy] The Topology Manager policy to use. For more information see [Kubernetes Topology Manager](https://kubernetes.io/docs/tasks/administer-cluster/topology-manager). The default is 'none'. Allowed values are 'none', 'best-effort', 'restricted', and 'single-numa-node'.
  const KubeletConfig({
    this.allowedUnsafeSysctls,
    this.containerLogMaxFiles,
    this.containerLogMaxSizeMB,
    this.cpuCfsQuota,
    this.cpuCfsQuotaPeriod,
    this.cpuManagerPolicy,
    this.failSwapOn,
    this.imageGcHighThreshold,
    this.imageGcLowThreshold,
    this.podMaxPids,
    this.topologyManagerPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedUnsafeSysctls': ?allowedUnsafeSysctls,
      'containerLogMaxFiles': ?containerLogMaxFiles,
      'containerLogMaxSizeMB': ?containerLogMaxSizeMB,
      'cpuCfsQuota': ?cpuCfsQuota,
      'cpuCfsQuotaPeriod': ?cpuCfsQuotaPeriod,
      'cpuManagerPolicy': ?cpuManagerPolicy,
      'failSwapOn': ?failSwapOn,
      'imageGcHighThreshold': ?imageGcHighThreshold,
      'imageGcLowThreshold': ?imageGcLowThreshold,
      'podMaxPids': ?podMaxPids,
      'topologyManagerPolicy': ?topologyManagerPolicy,
    };
  }

  factory KubeletConfig.fromMap(Map<String, dynamic> map) {
    return KubeletConfig(
      allowedUnsafeSysctls: (() { final guardedValue = map['allowedUnsafeSysctls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      containerLogMaxFiles: (() { final guardedValue = map['containerLogMaxFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      containerLogMaxSizeMB: (() { final guardedValue = map['containerLogMaxSizeMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cpuCfsQuota: (() { final guardedValue = map['cpuCfsQuota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cpuCfsQuotaPeriod: (() { final guardedValue = map['cpuCfsQuotaPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cpuManagerPolicy: (() { final guardedValue = map['cpuManagerPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failSwapOn: (() { final guardedValue = map['failSwapOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imageGcHighThreshold: (() { final guardedValue = map['imageGcHighThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      imageGcLowThreshold: (() { final guardedValue = map['imageGcLowThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      podMaxPids: (() { final guardedValue = map['podMaxPids']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      topologyManagerPolicy: (() { final guardedValue = map['topologyManagerPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
