/// Indicates how the output will be organized.
enum BatchOutputAction {
  valueSummaryOnly("SummaryOnly"),
  valueAppendRow("AppendRow");

  const BatchOutputAction(this.value);
  final String value;

  static BatchOutputAction fromValue(String value) {
    for (final item in BatchOutputAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BatchOutputAction value: $value');
  }
}

