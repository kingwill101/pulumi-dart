/// Degree of confidence on the impact being a platform issue
enum ConfidenceLevel {
  low("Low"),
  medium("Medium"),
  high("High");

  const ConfidenceLevel(this.value);
  final String value;

  static ConfidenceLevel fromValue(String value) {
    for (final item in ConfidenceLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConfidenceLevel value: $value');
  }
}

