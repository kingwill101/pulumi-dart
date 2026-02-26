// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for Binauthz
class ConfigManagementBinauthzConfig2 {
  /// Whether binauthz is enabled in this cluster.
  final bool? enabled;

  ConfigManagementBinauthzConfig2({
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

  factory ConfigManagementBinauthzConfig2.fromMap(Map<String, dynamic> map) {
    return ConfigManagementBinauthzConfig2(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
