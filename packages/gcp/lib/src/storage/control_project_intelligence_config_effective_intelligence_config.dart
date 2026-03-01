// ignore_for_file: unused_element, unnecessary_cast

class ControlProjectIntelligenceConfigEffectiveIntelligenceConfig {
  /// (Output)
  /// The `StorageIntelligence` edition that is applicable for the resource.
  final String? effectiveEdition;

  /// (Output)
  /// The Intelligence config resource that is applied for the target resource.
  final String? intelligenceConfig;

  /// Creates a new [ControlProjectIntelligenceConfigEffectiveIntelligenceConfig].
  /// [effectiveEdition] (Output)
  /// [intelligenceConfig] (Output)
  ControlProjectIntelligenceConfigEffectiveIntelligenceConfig({
    this.effectiveEdition,
    this.intelligenceConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effectiveEdition': ?effectiveEdition,
      'intelligenceConfig': ?intelligenceConfig,
    };
  }

  factory ControlProjectIntelligenceConfigEffectiveIntelligenceConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ControlProjectIntelligenceConfigEffectiveIntelligenceConfig(
      effectiveEdition: map['effectiveEdition'] == null
          ? null
          : map['effectiveEdition'] as String,
      intelligenceConfig: map['intelligenceConfig'] == null
          ? null
          : map['intelligenceConfig'] as String,
    );
  }
}
