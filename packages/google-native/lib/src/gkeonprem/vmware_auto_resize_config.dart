// ignore_for_file: unused_element, unnecessary_cast

/// Represents auto resizing configurations for the VMware user cluster.
class VmwareAutoResizeConfig {
  /// Whether to enable controle plane node auto resizing.
  final bool? enabled;

  /// Creates a new [VmwareAutoResizeConfig].
  /// [enabled] Whether to enable controle plane node auto resizing.
  VmwareAutoResizeConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory VmwareAutoResizeConfig.fromMap(Map<String, dynamic> map) {
    return VmwareAutoResizeConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
