enum KnownSyslogDataSourceLogLevels {
  valueDebug("Debug"),
  valueInfo("Info"),
  valueNotice("Notice"),
  valueWarning("Warning"),
  valueError("Error"),
  valueCritical("Critical"),
  valueAlert("Alert"),
  valueEmergency("Emergency"),
  value("*");

  const KnownSyslogDataSourceLogLevels(this.value);
  final String value;

  static KnownSyslogDataSourceLogLevels fromValue(String value) {
    for (final item in KnownSyslogDataSourceLogLevels.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KnownSyslogDataSourceLogLevels value: $value');
  }
}

