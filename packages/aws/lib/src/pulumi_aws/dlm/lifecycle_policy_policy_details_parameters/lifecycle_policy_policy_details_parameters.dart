// ignore_for_file: unused_element, unnecessary_cast

class LifecyclePolicyPolicyDetailsParameters {
  /// Indicates whether to exclude the root volume from snapshots created using CreateSnapshots. The default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? excludeBootVolume;

  /// Applies to AMI lifecycle policies only. Indicates whether targeted instances are rebooted when the lifecycle policy runs. <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> indicates that targeted instances are not rebooted when the policy runs. <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> indicates that target instances are rebooted when the policy runs. The default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> (instances are not rebooted).
  final bool? noReboot;

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
