// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for Binauthz
class ConfigManagementBinauthzConfigGkehubV1beta {
  /// Whether binauthz is enabled in this cluster.
  final bool? enabled;

  /// Creates a new [ConfigManagementBinauthzConfigGkehubV1beta].
  /// [enabled] Whether binauthz is enabled in this cluster.
  ConfigManagementBinauthzConfigGkehubV1beta({
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

  factory ConfigManagementBinauthzConfigGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return ConfigManagementBinauthzConfigGkehubV1beta(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
