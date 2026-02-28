// ignore_for_file: unused_element, unnecessary_cast

/// Specifies anti affinity group config for the VMware user cluster.
class VmwareAAGConfig {
  /// Spread nodes across at least three physical hosts (requires at least three hosts). Enabled by default.
  final bool? aagConfigDisabled;

  /// Creates a new [VmwareAAGConfig].
  /// [aagConfigDisabled] Spread nodes across at least three physical hosts (requires at least three hosts). Enabled by default.
  VmwareAAGConfig({
    this.aagConfigDisabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aagConfigDisabledValue = aagConfigDisabled;
    if (aagConfigDisabledValue != null) {
      map['aagConfigDisabled'] = aagConfigDisabledValue;
    }
    return map;
  }

  factory VmwareAAGConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAAGConfig(
      aagConfigDisabled: map['aagConfigDisabled'] == null
          ? null
          : map['aagConfigDisabled'] as bool,
    );
  }
}
