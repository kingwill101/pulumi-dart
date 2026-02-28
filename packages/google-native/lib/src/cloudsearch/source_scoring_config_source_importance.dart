/// Importance of the source.
enum SourceScoringConfigSourceImportance {
  default_("DEFAULT"),
  low("LOW"),
  high("HIGH");

  const SourceScoringConfigSourceImportance(this.value);
  final String value;

  static SourceScoringConfigSourceImportance fromValue(String value) {
    for (final item in SourceScoringConfigSourceImportance.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceScoringConfigSourceImportance value: $value');
  }
}

