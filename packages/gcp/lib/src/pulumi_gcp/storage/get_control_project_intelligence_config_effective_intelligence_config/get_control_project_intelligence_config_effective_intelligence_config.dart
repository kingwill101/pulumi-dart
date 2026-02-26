// ignore_for_file: unused_element, unnecessary_cast

class GetControlProjectIntelligenceConfigEffectiveIntelligenceConfig {
  /// The 'StorageIntelligence' edition that is applicable for the resource.
  final String effectiveEdition;

  /// The Intelligence config resource that is applied for the target resource.
  final String intelligenceConfig;

  GetControlProjectIntelligenceConfigEffectiveIntelligenceConfig({
    required this.effectiveEdition,
    required this.intelligenceConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['effectiveEdition'] = effectiveEdition;
    map['intelligenceConfig'] = intelligenceConfig;
    return map;
  }

  factory GetControlProjectIntelligenceConfigEffectiveIntelligenceConfig.fromMap(
      Map<String, dynamic> map) {
    return GetControlProjectIntelligenceConfigEffectiveIntelligenceConfig(
      effectiveEdition: map['effectiveEdition'] as String,
      intelligenceConfig: map['intelligenceConfig'] as String,
    );
  }
}
