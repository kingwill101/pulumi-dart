/// Type of actions that can be performed.
enum TapRuleActionType {
  valueDrop("Drop"),
  valueCount("Count"),
  valueLog("Log"),
  valueReplicate("Replicate"),
  valueGoto("Goto"),
  valueRedirect("Redirect"),
  valueMirror("Mirror");

  const TapRuleActionType(this.value);
  final String value;

  static TapRuleActionType fromValue(String value) {
    for (final item in TapRuleActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TapRuleActionType value: $value');
  }
}

