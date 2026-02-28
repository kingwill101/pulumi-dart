// ignore_for_file: unused_element, unnecessary_cast

class LifecyclePolicyPolicyDetailsParameters {
  /// Indicates whether to exclude the root volume from snapshots created using CreateSnapshots. The default is `false`.
  final bool? excludeBootVolume;

  /// Applies to AMI lifecycle policies only. Indicates whether targeted instances are rebooted when the lifecycle policy runs. `true` indicates that targeted instances are not rebooted when the policy runs. `false` indicates that target instances are rebooted when the policy runs. The default is `true` (instances are not rebooted).
  final bool? noReboot;

  /// Creates a new [LifecyclePolicyPolicyDetailsParameters].
  /// [excludeBootVolume] Indicates whether to exclude the root volume from snapshots created using CreateSnapshots. The default is `false`.
  /// [noReboot] Applies to AMI lifecycle policies only. Indicates whether targeted instances are rebooted when the lifecycle policy runs. `true` indicates that targeted instances are not rebooted when the policy runs. `false` indicates that target instances are rebooted when the policy runs. The default is `true` (instances are not rebooted).
  LifecyclePolicyPolicyDetailsParameters({
    this.excludeBootVolume,
    this.noReboot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final excludeBootVolumeValue = excludeBootVolume;
    if (excludeBootVolumeValue != null) {
      map['excludeBootVolume'] = excludeBootVolumeValue;
    }
    final noRebootValue = noReboot;
    if (noRebootValue != null) {
      map['noReboot'] = noRebootValue;
    }
    return map;
  }

  factory LifecyclePolicyPolicyDetailsParameters.fromMap(
      Map<String, dynamic> map) {
    return LifecyclePolicyPolicyDetailsParameters(
      excludeBootVolume: map['excludeBootVolume'] == null
          ? null
          : map['excludeBootVolume'] as bool,
      noReboot: map['noReboot'] == null ? null : map['noReboot'] as bool,
    );
  }
}
