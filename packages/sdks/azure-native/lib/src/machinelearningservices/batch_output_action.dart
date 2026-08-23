/// Enum to determine how batch inferencing will handle output
enum BatchOutputAction {
  summaryOnly("SummaryOnly"),
  appendRow("AppendRow");

  const BatchOutputAction(this.wireValue);
  final String wireValue;

  static BatchOutputAction fromValue(String value) {
    for (final item in BatchOutputAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BatchOutputAction value: $value');
  }
}
