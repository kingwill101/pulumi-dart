// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for Binauthz
class ConfigManagementBinauthzConfigResponse {
  /// Whether binauthz is enabled in this cluster.
  final bool enabled;

  ConfigManagementBinauthzConfigResponse({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ConfigManagementBinauthzConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return ConfigManagementBinauthzConfigResponse(
      enabled: map['enabled'] as bool,
    );
  }
}
