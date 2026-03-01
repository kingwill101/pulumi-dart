/// Specifies the text matching condition for text comparison. For more detail please refer to the MatchType model.
enum MatchType {
  partial("Partial"),
  complete("Complete");

  const MatchType(this.value);
  final String value;

  static MatchType fromValue(String value) {
    for (final item in MatchType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MatchType value: $value');
  }
}

