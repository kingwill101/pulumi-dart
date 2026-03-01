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

  /// Creates a new [FloorsettingFilterConfigRaiSettingsRaiFilter].
  /// [confidenceLevel] Possible values:
  /// [filterType] Possible values:
  FloorsettingFilterConfigRaiSettingsRaiFilter({
    this.confidenceLevel,
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidenceLevel': ?confidenceLevel,
      'filterType': filterType,
    };
  }

  factory FloorsettingFilterConfigRaiSettingsRaiFilter.fromMap(
    Map<String, dynamic> map,
  ) {
    return FloorsettingFilterConfigRaiSettingsRaiFilter(
      confidenceLevel: map['confidenceLevel'] == null
          ? null
          : map['confidenceLevel'] as String,
      filterType: map['filterType'] as String,
    );
  }
}
