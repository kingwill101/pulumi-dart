/// Describes the override action to be applied when rule matches.
enum ActionType {
  allow("Allow"),
  block("Block"),
  log("Log"),
  redirect("Redirect"),
  anomalyScoring("AnomalyScoring"),
  jSChallenge("JSChallenge"),
  cAPTCHA("CAPTCHA");

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
