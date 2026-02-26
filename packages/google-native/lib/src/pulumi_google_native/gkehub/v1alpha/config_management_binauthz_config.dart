// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for Binauthz
class ConfigManagementBinauthzConfig {
  /// Whether binauthz is enabled in this cluster.
  final bool? enabled;

  ConfigManagementBinauthzConfig({
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

  factory ConfigManagementBinauthzConfig.fromMap(Map<String, dynamic> map) {
    return ConfigManagementBinauthzConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
