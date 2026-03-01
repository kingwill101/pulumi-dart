/// Log verbosity for the job.
enum LogVerbosity {
  valueNotSet("NotSet"),
  valueDebug("Debug"),
  valueInfo("Info"),
  valueWarning("Warning"),
  valueError("Error"),
  valueCritical("Critical");

  const LogVerbosity(this.value);
  final String value;

  static LogVerbosity fromValue(String value) {
    for (final item in LogVerbosity.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LogVerbosity value: $value');
  }
}

