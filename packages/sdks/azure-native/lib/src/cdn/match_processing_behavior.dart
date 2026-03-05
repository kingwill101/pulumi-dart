/// If this rule is a match should the rules engine continue running the remaining rules or stop. If not present, defaults to Continue.
enum MatchProcessingBehavior {
  continue_("Continue"),
  stop("Stop");

  const MatchProcessingBehavior(this.wireValue);
  final String wireValue;

  static MatchProcessingBehavior fromValue(String value) {
    for (final item in MatchProcessingBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MatchProcessingBehavior value: $value');
  }
}

