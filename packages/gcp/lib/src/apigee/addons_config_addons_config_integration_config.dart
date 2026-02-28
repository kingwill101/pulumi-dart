// ignore_for_file: unused_element, unnecessary_cast

class AddonsConfigAddonsConfigIntegrationConfig {
  /// Flag that specifies whether the Integration add-on is enabled.
  final bool? enabled;

  /// Creates a new [AddonsConfigAddonsConfigIntegrationConfig].
  /// [enabled] Flag that specifies whether the Integration add-on is enabled.
  AddonsConfigAddonsConfigIntegrationConfig({
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

  factory AddonsConfigAddonsConfigIntegrationConfig.fromMap(
      Map<String, dynamic> map) {
    return AddonsConfigAddonsConfigIntegrationConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
