/// Enum to indicate default Priority Level of request for Priority Based Execution.
enum DefaultPriorityLevel {
  valueHigh("High"),
  valueLow("Low");

  const DefaultPriorityLevel(this.value);
  final String value;

  static DefaultPriorityLevel fromValue(String value) {
    for (final item in DefaultPriorityLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DefaultPriorityLevel value: $value');
  }
}

