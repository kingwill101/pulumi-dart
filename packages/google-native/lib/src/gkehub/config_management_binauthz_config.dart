// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for Binauthz
class ConfigManagementBinauthzConfig {
  /// Whether binauthz is enabled in this cluster.
  final bool? enabled;

  /// Creates a new [ConfigManagementBinauthzConfig].
  /// [enabled] Whether binauthz is enabled in this cluster.
  ConfigManagementBinauthzConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ConfigManagementBinauthzConfig.fromMap(Map<String, dynamic> map) {
    return ConfigManagementBinauthzConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

