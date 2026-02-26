// ignore_for_file: unused_element, unnecessary_cast

class FloorsettingFilterConfigRaiSettingsRaiFilter {
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

  FloorsettingFilterConfigRaiSettingsRaiFilter({
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

  factory FloorsettingFilterConfigRaiSettingsRaiFilter.fromMap(
      Map<String, dynamic> map) {
    return FloorsettingFilterConfigRaiSettingsRaiFilter(
      confidenceLevel: map['confidenceLevel'] == null
          ? null
          : map['confidenceLevel'] as String,
      filterType: map['filterType'] as String,
    );
  }
}
