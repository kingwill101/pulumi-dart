// ignore_for_file: unused_element, unnecessary_cast

class AddonsConfigAddonsConfigAdvancedApiOpsConfig {
  /// Flag that specifies whether the Advanced API Ops add-on is enabled.
  final bool? enabled;

  /// Creates a new [AddonsConfigAddonsConfigAdvancedApiOpsConfig].
  /// [enabled] Flag that specifies whether the Advanced API Ops add-on is enabled.
  AddonsConfigAddonsConfigAdvancedApiOpsConfig({this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled};
  }

  factory AddonsConfigAddonsConfigAdvancedApiOpsConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AddonsConfigAddonsConfigAdvancedApiOpsConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
