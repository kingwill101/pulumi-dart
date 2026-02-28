// ignore_for_file: unused_element, unnecessary_cast

class ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig {
  /// (Output)
  /// The `StorageIntelligence` edition that is applicable for the resource.
  final String? effectiveEdition;

  /// (Output)
  /// The Intelligence config resource that is applied for the target resource.
  final String? intelligenceConfig;

  /// Creates a new [ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig].
  /// [effectiveEdition] (Output)
  /// [intelligenceConfig] (Output)
  ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig({
    this.effectiveEdition,
    this.intelligenceConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final effectiveEditionValue = effectiveEdition;
    if (effectiveEditionValue != null) {
      map['effectiveEdition'] = effectiveEditionValue;
    }
    final intelligenceConfigValue = intelligenceConfig;
    if (intelligenceConfigValue != null) {
      map['intelligenceConfig'] = intelligenceConfigValue;
    }
    return map;
  }

  factory ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig.fromMap(
      Map<String, dynamic> map) {
    return ControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig(
      effectiveEdition: map['effectiveEdition'] == null
          ? null
          : map['effectiveEdition'] as String,
      intelligenceConfig: map['intelligenceConfig'] == null
          ? null
          : map['intelligenceConfig'] as String,
    );
  }
}
