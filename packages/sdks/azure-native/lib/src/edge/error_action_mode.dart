/// Error action mode
enum ErrorActionMode {
  stopOnAnyFailure("stopOnAnyFailure"),
  stopOnNFailures("stopOnNFailures"),
  silentlyContinue("silentlyContinue");

  const ErrorActionMode(this.wireValue);
  final String wireValue;

  static ErrorActionMode fromValue(String value) {
    for (final item in ErrorActionMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ErrorActionMode value: $value');
  }
}
