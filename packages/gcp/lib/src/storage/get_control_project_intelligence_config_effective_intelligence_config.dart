// ignore_for_file: unused_element, unnecessary_cast

class GetControlProjectIntelligenceConfigEffectiveIntelligenceConfig {
  /// The 'StorageIntelligence' edition that is applicable for the resource.
  final String effectiveEdition;

  /// The Intelligence config resource that is applied for the target resource.
  final String intelligenceConfig;

  /// Creates a new [GetControlProjectIntelligenceConfigEffectiveIntelligenceConfig].
  /// [effectiveEdition] The 'StorageIntelligence' edition that is applicable for the resource.
  /// [intelligenceConfig] The Intelligence config resource that is applied for the target resource.
  GetControlProjectIntelligenceConfigEffectiveIntelligenceConfig({
    required this.effectiveEdition,
    required this.intelligenceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveEdition': effectiveEdition,
      'intelligenceConfig': intelligenceConfig,
    };
  }

  factory GetControlProjectIntelligenceConfigEffectiveIntelligenceConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetControlProjectIntelligenceConfigEffectiveIntelligenceConfig(
      effectiveEdition: map['effectiveEdition'] as String,
      intelligenceConfig: map['intelligenceConfig'] as String,
    );
  }
}
