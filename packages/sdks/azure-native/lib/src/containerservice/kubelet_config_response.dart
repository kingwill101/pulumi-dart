// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kubelet configurations of agent nodes. See [AKS custom node configuration](https://docs.microsoft.com/azure/aks/custom-node-configuration) for more details.
class KubeletConfigResponse {
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

  /// Creates a new [KubeletConfigResponse].
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
  KubeletConfigResponse({
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

  factory KubeletConfigResponse.fromMap(Map<String, dynamic> map) {
    return KubeletConfigResponse(
      allowedUnsafeSysctls: map['allowedUnsafeSysctls'] == null ? null : ((map['allowedUnsafeSysctls'] as List).cast<String>()).input(),
      containerLogMaxFiles: map['containerLogMaxFiles'] == null ? null : (map['containerLogMaxFiles'] as int).input(),
      containerLogMaxSizeMB: map['containerLogMaxSizeMB'] == null ? null : (map['containerLogMaxSizeMB'] as int).input(),
      cpuCfsQuota: map['cpuCfsQuota'] == null ? null : (map['cpuCfsQuota'] as bool).input(),
      cpuCfsQuotaPeriod: map['cpuCfsQuotaPeriod'] == null ? null : (map['cpuCfsQuotaPeriod'] as String).input(),
      cpuManagerPolicy: map['cpuManagerPolicy'] == null ? null : (map['cpuManagerPolicy'] as String).input(),
      failSwapOn: map['failSwapOn'] == null ? null : (map['failSwapOn'] as bool).input(),
      imageGcHighThreshold: map['imageGcHighThreshold'] == null ? null : (map['imageGcHighThreshold'] as int).input(),
      imageGcLowThreshold: map['imageGcLowThreshold'] == null ? null : (map['imageGcLowThreshold'] as int).input(),
      podMaxPids: map['podMaxPids'] == null ? null : (map['podMaxPids'] as int).input(),
      topologyManagerPolicy: map['topologyManagerPolicy'] == null ? null : (map['topologyManagerPolicy'] as String).input(),
    );
  }
}

