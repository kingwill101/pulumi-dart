/// The verbosity level applied to traces emitted by trace policies.
enum Verbosity {
  valueVerbose("verbose"),
  valueInformation("information"),
  valueError("error");

  const Verbosity(this.wireValue);
  final String wireValue;

  static Verbosity fromValue(String value) {
    for (final item in Verbosity.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Verbosity value: $value');
  }
}

