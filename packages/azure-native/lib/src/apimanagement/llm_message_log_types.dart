/// Specifies which message should be logged. Currently there is only 'all' option.
enum LlmMessageLogTypes {
  valueAll("all");

  const LlmMessageLogTypes(this.value);
  final String value;

  static LlmMessageLogTypes fromValue(String value) {
    for (final item in LlmMessageLogTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LlmMessageLogTypes value: $value');
  }
}

