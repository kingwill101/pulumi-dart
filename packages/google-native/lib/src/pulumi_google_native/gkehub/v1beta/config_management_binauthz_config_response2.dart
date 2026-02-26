// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for Binauthz
class ConfigManagementBinauthzConfigResponse2 {
  /// Whether binauthz is enabled in this cluster.
  final bool enabled;

  ConfigManagementBinauthzConfigResponse2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ConfigManagementBinauthzConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return ConfigManagementBinauthzConfigResponse2(
      enabled: map['enabled'] as bool,
    );
  }
}
