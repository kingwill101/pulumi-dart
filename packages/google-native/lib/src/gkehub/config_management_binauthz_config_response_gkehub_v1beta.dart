// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for Binauthz
class ConfigManagementBinauthzConfigResponseGkehubV1beta {
  /// Whether binauthz is enabled in this cluster.
  final bool enabled;

  /// Creates a new [ConfigManagementBinauthzConfigResponseGkehubV1beta].
  /// [enabled] Whether binauthz is enabled in this cluster.
  ConfigManagementBinauthzConfigResponseGkehubV1beta({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory ConfigManagementBinauthzConfigResponseGkehubV1beta.fromMap(
      Map<String, dynamic> map) {
    return ConfigManagementBinauthzConfigResponseGkehubV1beta(
      enabled: map['enabled'] as bool,
    );
  }
}
