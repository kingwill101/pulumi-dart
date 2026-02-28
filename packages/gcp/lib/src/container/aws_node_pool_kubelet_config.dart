// ignore_for_file: unused_element, unnecessary_cast

class AwsNodePoolKubeletConfig {
  /// Whether or not to enable CPU CFS quota. Defaults to true.
  final bool? cpuCfsQuota;

  /// Optional. The CPU CFS quota period to use for the node. Defaults to "100ms".
  final String? cpuCfsQuotaPeriod;

  /// The CpuManagerPolicy to use for the node. Defaults to "none".
  final String? cpuManagerPolicy;

  /// Optional. The maximum number of PIDs in each pod running on the node. The limit scales automatically based on underlying machine size if left unset.
  final int? podPidsLimit;

  /// Creates a new [AwsNodePoolKubeletConfig].
  /// [cpuCfsQuota] Whether or not to enable CPU CFS quota. Defaults to true.
  /// [cpuCfsQuotaPeriod] Optional. The CPU CFS quota period to use for the node. Defaults to "100ms".
  /// [cpuManagerPolicy] The CpuManagerPolicy to use for the node. Defaults to "none".
  /// [podPidsLimit] Optional. The maximum number of PIDs in each pod running on the node. The limit scales automatically based on underlying machine size if left unset.
  AwsNodePoolKubeletConfig({
    this.cpuCfsQuota,
    this.cpuCfsQuotaPeriod,
    this.cpuManagerPolicy,
    this.podPidsLimit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    final podPidsLimitValue = podPidsLimit;
    if (podPidsLimitValue != null) {
      map['podPidsLimit'] = podPidsLimitValue;
    }
    return map;
  }

  factory AwsNodePoolKubeletConfig.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolKubeletConfig(
      cpuCfsQuota:
          map['cpuCfsQuota'] == null ? null : map['cpuCfsQuota'] as bool,
      cpuCfsQuotaPeriod: map['cpuCfsQuotaPeriod'] == null
          ? null
          : map['cpuCfsQuotaPeriod'] as String,
      cpuManagerPolicy: map['cpuManagerPolicy'] == null
          ? null
          : map['cpuManagerPolicy'] as String,
      podPidsLimit:
          map['podPidsLimit'] == null ? null : map['podPidsLimit'] as int,
    );
  }
}
