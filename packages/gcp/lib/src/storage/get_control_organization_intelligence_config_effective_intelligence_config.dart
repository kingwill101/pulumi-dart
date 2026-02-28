// ignore_for_file: unused_element, unnecessary_cast

class GetControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig {
  /// The 'StorageIntelligence' edition that is applicable for the resource.
  final String effectiveEdition;

  /// The Intelligence config resource that is applied for the target resource.
  final String intelligenceConfig;

  /// Creates a new [GetControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig].
  /// [effectiveEdition] The 'StorageIntelligence' edition that is applicable for the resource.
  /// [intelligenceConfig] The Intelligence config resource that is applied for the target resource.
  GetControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig({
    required this.effectiveEdition,
    required this.intelligenceConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['effectiveEdition'] = effectiveEdition;
    map['intelligenceConfig'] = intelligenceConfig;
    return map;
  }

  factory GetControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig.fromMap(
      Map<String, dynamic> map) {
    return GetControlOrganizationIntelligenceConfigEffectiveIntelligenceConfig(
      effectiveEdition: map['effectiveEdition'] as String,
      intelligenceConfig: map['intelligenceConfig'] as String,
    );
  }
}
