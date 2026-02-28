// ignore_for_file: unused_element, unnecessary_cast

/// Configuration options for the KALM addon.
class KalmConfig {
  /// Whether KALM is enabled for this cluster.
  final bool? enabled;

  /// Creates a new [KalmConfig].
  /// [enabled] Whether KALM is enabled for this cluster.
  KalmConfig({
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

  factory KalmConfig.fromMap(Map<String, dynamic> map) {
    return KalmConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
