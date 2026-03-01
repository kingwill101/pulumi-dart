/// The verbosity level applied to traces emitted by trace policies.
enum Verbosity {
  valueVerbose("verbose"),
  valueInformation("information"),
  valueError("error");

  const Verbosity(this.value);
  final String value;

  static Verbosity fromValue(String value) {
    for (final item in Verbosity.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Verbosity value: $value');
  }
}

