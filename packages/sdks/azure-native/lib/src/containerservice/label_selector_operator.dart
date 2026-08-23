/// operator represents a key's relationship to a set of values. Valid operators are In, NotIn, Exists and DoesNotExist.
enum LabelSelectorOperator {
  in_("In"),
  notIn("NotIn"),
  exists("Exists"),
  doesNotExist("DoesNotExist");

  const LabelSelectorOperator(this.wireValue);
  final String wireValue;

  static LabelSelectorOperator fromValue(String value) {
    for (final item in LabelSelectorOperator.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LabelSelectorOperator value: $value');
  }
}
