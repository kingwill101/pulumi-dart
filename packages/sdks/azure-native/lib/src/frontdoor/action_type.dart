/// Describes the override action to be applied when rule matches.
enum ActionType {
  valueAllow("Allow"),
  valueBlock("Block"),
  valueLog("Log"),
  valueRedirect("Redirect"),
  valueAnomalyScoring("AnomalyScoring"),
  valueJSChallenge("JSChallenge");

  const ActionType(this.wireValue);
  final String wireValue;

  static ActionType fromValue(String value) {
    for (final item in ActionType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ActionType value: $value');
  }
}

