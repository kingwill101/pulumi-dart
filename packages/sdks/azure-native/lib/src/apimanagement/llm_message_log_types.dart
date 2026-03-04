/// Specifies which message should be logged. Currently there is only 'all' option.
enum LlmMessageLogTypes {
  valueAll("all");

  const LlmMessageLogTypes(this.wireValue);
  final String wireValue;

  static LlmMessageLogTypes fromValue(String value) {
    for (final item in LlmMessageLogTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LlmMessageLogTypes value: $value');
  }
}
