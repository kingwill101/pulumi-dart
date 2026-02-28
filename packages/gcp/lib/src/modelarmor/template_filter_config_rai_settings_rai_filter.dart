// ignore_for_file: unused_element, unnecessary_cast

class TemplateFilterConfigRaiSettingsRaiFilter {
  /// Possible values:
  /// LOW_AND_ABOVE
  /// MEDIUM_AND_ABOVE
  /// HIGH
  final String? confidenceLevel;

  /// Possible values:
  /// SEXUALLY_EXPLICIT
  /// HATE_SPEECH
  /// HARASSMENT
  /// DANGEROUS
  final String filterType;

  /// Creates a new [TemplateFilterConfigRaiSettingsRaiFilter].
  /// [confidenceLevel] Possible values:
  /// [filterType] Possible values:
  TemplateFilterConfigRaiSettingsRaiFilter({
    this.confidenceLevel,
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final confidenceLevelValue = confidenceLevel;
    if (confidenceLevelValue != null) {
      map['confidenceLevel'] = confidenceLevelValue;
    }
    map['filterType'] = filterType;
    return map;
  }

  factory TemplateFilterConfigRaiSettingsRaiFilter.fromMap(
      Map<String, dynamic> map) {
    return TemplateFilterConfigRaiSettingsRaiFilter(
      confidenceLevel: map['confidenceLevel'] == null
          ? null
          : map['confidenceLevel'] as String,
      filterType: map['filterType'] as String,
    );
  }
}
