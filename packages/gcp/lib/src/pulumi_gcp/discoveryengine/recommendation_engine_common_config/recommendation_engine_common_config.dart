// ignore_for_file: unused_element, unnecessary_cast

class RecommendationEngineCommonConfig {
  /// The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features.cd
  final String? companyName;

  RecommendationEngineCommonConfig({
    this.companyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final companyNameValue = companyName;
    if (companyNameValue != null) {
      map['companyName'] = companyNameValue;
    }
    return map;
  }

  factory RecommendationEngineCommonConfig.fromMap(Map<String, dynamic> map) {
    return RecommendationEngineCommonConfig(
      companyName:
          map['companyName'] == null ? null : map['companyName'] as String,
    );
  }
}
