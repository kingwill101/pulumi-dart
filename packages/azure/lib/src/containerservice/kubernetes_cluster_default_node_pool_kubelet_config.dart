// ignore_for_file: unused_element, unnecessary_cast


class KubernetesClusterDefaultNodePoolKubeletConfig {
  /// Specifies the allow list of unsafe sysctls command or patterns (ending in `*`).
  final List<String>? allowedUnsafeSysctls;
  /// Specifies the maximum number of container log files that can be present for a container. must be at least 2.
  final int? containerLogMaxLine;
  /// Specifies the maximum size (e.g. 10MB) of container log file before it is rotated.
  final int? containerLogMaxSizeMb;
  /// Is CPU CFS quota enforcement for containers enabled? Defaults to `true`.
  final bool? cpuCfsQuotaEnabled;
  /// Specifies the CPU CFS quota period value.
  final String? cpuCfsQuotaPeriod;
  /// Specifies the CPU Manager policy to use. Possible values are `none` and `static`,.
  final String? cpuManagerPolicy;
  /// Specifies the percent of disk usage above which image garbage collection is always run. Must be between `0` and `100`.
  final int? imageGcHighThreshold;
  /// Specifies the percent of disk usage lower than which image garbage collection is never run. Must be between `0` and `100`.
  final int? imageGcLowThreshold;
  /// Specifies the maximum number of processes per pod.
  final int? podMaxPid;
  /// Specifies the Topology Manager policy to use. Possible values are `none`, `best-effort`, `restricted` or `single-numa-node`.
  final String? topologyManagerPolicy;

  /// Creates a new [KubernetesClusterDefaultNodePoolKubeletConfig].
  /// [allowedUnsafeSysctls] Specifies the allow list of unsafe sysctls command or patterns (ending in `*`).
  /// [containerLogMaxLine] Specifies the maximum number of container log files that can be present for a container. must be at least 2.
  /// [containerLogMaxSizeMb] Specifies the maximum size (e.g. 10MB) of container log file before it is rotated.
  /// [cpuCfsQuotaEnabled] Is CPU CFS quota enforcement for containers enabled? Defaults to `true`.
  /// [cpuCfsQuotaPeriod] Specifies the CPU CFS quota period value.
  /// [cpuManagerPolicy] Specifies the CPU Manager policy to use. Possible values are `none` and `static`,.
  /// [imageGcHighThreshold] Specifies the percent of disk usage above which image garbage collection is always run. Must be between `0` and `100`.
  /// [imageGcLowThreshold] Specifies the percent of disk usage lower than which image garbage collection is never run. Must be between `0` and `100`.
  /// [podMaxPid] Specifies the maximum number of processes per pod.
  /// [topologyManagerPolicy] Specifies the Topology Manager policy to use. Possible values are `none`, `best-effort`, `restricted` or `single-numa-node`.
  KubernetesClusterDefaultNodePoolKubeletConfig({
    this.allowedUnsafeSysctls,
    this.containerLogMaxLine,
    this.containerLogMaxSizeMb,
    this.cpuCfsQuotaEnabled,
    this.cpuCfsQuotaPeriod,
    this.cpuManagerPolicy,
    this.imageGcHighThreshold,
    this.imageGcLowThreshold,
    this.podMaxPid,
    this.topologyManagerPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedUnsafeSysctls': ?allowedUnsafeSysctls,
      'containerLogMaxLine': ?containerLogMaxLine,
      'containerLogMaxSizeMb': ?containerLogMaxSizeMb,
      'cpuCfsQuotaEnabled': ?cpuCfsQuotaEnabled,
      'cpuCfsQuotaPeriod': ?cpuCfsQuotaPeriod,
      'cpuManagerPolicy': ?cpuManagerPolicy,
      'imageGcHighThreshold': ?imageGcHighThreshold,
      'imageGcLowThreshold': ?imageGcLowThreshold,
      'podMaxPid': ?podMaxPid,
      'topologyManagerPolicy': ?topologyManagerPolicy,
    };
  }

  factory KubernetesClusterDefaultNodePoolKubeletConfig.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterDefaultNodePoolKubeletConfig(
      allowedUnsafeSysctls: map['allowedUnsafeSysctls'] == null ? null : (map['allowedUnsafeSysctls'] as List).cast<String>(),
      containerLogMaxLine: map['containerLogMaxLine'] == null ? null : map['containerLogMaxLine'] as int,
      containerLogMaxSizeMb: map['containerLogMaxSizeMb'] == null ? null : map['containerLogMaxSizeMb'] as int,
      cpuCfsQuotaEnabled: map['cpuCfsQuotaEnabled'] == null ? null : map['cpuCfsQuotaEnabled'] as bool,
      cpuCfsQuotaPeriod: map['cpuCfsQuotaPeriod'] == null ? null : map['cpuCfsQuotaPeriod'] as String,
      cpuManagerPolicy: map['cpuManagerPolicy'] == null ? null : map['cpuManagerPolicy'] as String,
      imageGcHighThreshold: map['imageGcHighThreshold'] == null ? null : map['imageGcHighThreshold'] as int,
      imageGcLowThreshold: map['imageGcLowThreshold'] == null ? null : map['imageGcLowThreshold'] as int,
      podMaxPid: map['podMaxPid'] == null ? null : map['podMaxPid'] as int,
      topologyManagerPolicy: map['topologyManagerPolicy'] == null ? null : map['topologyManagerPolicy'] as String,
    );
  }
}

