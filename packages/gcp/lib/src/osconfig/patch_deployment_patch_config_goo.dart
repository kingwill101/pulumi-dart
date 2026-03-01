// ignore_for_file: unused_element, unnecessary_cast

class PatchDeploymentPatchConfigGoo {
  /// goo update settings. Use this setting to override the default goo patch rules.
  final bool enabled;

  /// Creates a new [PatchDeploymentPatchConfigGoo].
  /// [enabled] goo update settings. Use this setting to override the default goo patch rules.
  PatchDeploymentPatchConfigGoo({required this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory PatchDeploymentPatchConfigGoo.fromMap(Map<String, dynamic> map) {
    return PatchDeploymentPatchConfigGoo(enabled: map['enabled'] as bool);
  }
}
