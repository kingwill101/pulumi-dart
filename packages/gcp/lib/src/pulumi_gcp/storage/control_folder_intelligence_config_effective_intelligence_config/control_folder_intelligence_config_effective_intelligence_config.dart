// ignore_for_file: unused_element, unnecessary_cast

class ControlFolderIntelligenceConfigEffectiveIntelligenceConfig {
  /// (Output)
  /// The `StorageIntelligence` edition that is applicable for the resource.
  final String? effectiveEdition;

  /// (Output)
  /// The Intelligence config resource that is applied for the target resource.
  final String? intelligenceConfig;

  ControlFolderIntelligenceConfigEffectiveIntelligenceConfig({
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

  factory ControlFolderIntelligenceConfigEffectiveIntelligenceConfig.fromMap(
      Map<String, dynamic> map) {
    return ControlFolderIntelligenceConfigEffectiveIntelligenceConfig(
      effectiveEdition: map['effectiveEdition'] == null
          ? null
          : map['effectiveEdition'] as String,
      intelligenceConfig: map['intelligenceConfig'] == null
          ? null
          : map['intelligenceConfig'] as String,
    );
  }
}
