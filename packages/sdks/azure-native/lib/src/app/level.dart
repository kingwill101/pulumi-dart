/// The specified logger's log level.
enum Level {
  valueOff("off"),
  valueError("error"),
  valueInfo("info"),
  valueDebug("debug"),
  valueTrace("trace"),
  valueWarn("warn");

  const Level(this.wireValue);
  final String wireValue;

  static Level fromValue(String value) {
    for (final item in Level.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Level value: $value');
  }
}

