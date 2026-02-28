// ignore_for_file: unused_element, unnecessary_cast

class AddonsConfigAddonsConfigMonetizationConfig {
  /// Flag that specifies whether the Monetization add-on is enabled.
  final bool? enabled;

  /// Creates a new [AddonsConfigAddonsConfigMonetizationConfig].
  /// [enabled] Flag that specifies whether the Monetization add-on is enabled.
  AddonsConfigAddonsConfigMonetizationConfig({
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

  factory AddonsConfigAddonsConfigMonetizationConfig.fromMap(
      Map<String, dynamic> map) {
    return AddonsConfigAddonsConfigMonetizationConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
