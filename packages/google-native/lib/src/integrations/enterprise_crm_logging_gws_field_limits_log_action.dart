enum EnterpriseCrmLoggingGwsFieldLimitsLogAction {
  logActionUnspecified("LOG_ACTION_UNSPECIFIED"),
  dontLog("DONT_LOG"),
  log("LOG");

  const EnterpriseCrmLoggingGwsFieldLimitsLogAction(this.value);
  final String value;

  static EnterpriseCrmLoggingGwsFieldLimitsLogAction fromValue(String value) {
    for (final item in EnterpriseCrmLoggingGwsFieldLimitsLogAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EnterpriseCrmLoggingGwsFieldLimitsLogAction value: $value',
    );
  }
}
