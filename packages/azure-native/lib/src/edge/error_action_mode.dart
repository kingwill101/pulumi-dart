/// Error action mode
enum ErrorActionMode {
  stopOnAnyFailure("stopOnAnyFailure"),
  stopOnNFailures("stopOnNFailures"),
  silentlyContinue("silentlyContinue");

  const ErrorActionMode(this.value);
  final String value;

  static ErrorActionMode fromValue(String value) {
    for (final item in ErrorActionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ErrorActionMode value: $value');
  }
}

