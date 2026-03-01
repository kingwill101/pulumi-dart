enum Logging {
  valueStdout("stdout"),
  valueStderr("stderr"),
  valueStdoutAndStderr("stdoutAndStderr"),
  valueNone("none");

  const Logging(this.value);
  final String value;

  static Logging fromValue(String value) {
    for (final item in Logging.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Logging value: $value');
  }
}

