/// If this rule is a match should the rules engine continue running the remaining rules or stop. If not present, defaults to Continue.
enum MatchProcessingBehavior {
  continue_("Continue"),
  stop("Stop");

  const MatchProcessingBehavior(this.value);
  final String value;

  static MatchProcessingBehavior fromValue(String value) {
    for (final item in MatchProcessingBehavior.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MatchProcessingBehavior value: $value');
  }
}

