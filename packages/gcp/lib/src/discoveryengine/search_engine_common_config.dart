// ignore_for_file: unused_element, unnecessary_cast

class SearchEngineCommonConfig {
  /// The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features.cd
  final String? companyName;

  /// Creates a new [SearchEngineCommonConfig].
  /// [companyName] The name of the company, business or entity that is associated with the engine. Setting this may help improve LLM related features.cd
  SearchEngineCommonConfig({
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

  factory SearchEngineCommonConfig.fromMap(Map<String, dynamic> map) {
    return SearchEngineCommonConfig(
      companyName:
          map['companyName'] == null ? null : map['companyName'] as String,
    );
  }
}
