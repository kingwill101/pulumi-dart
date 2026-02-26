/// Defines the data for which Dialogflow applies redaction. Dialogflow does not redact data that it does not have access to – for example, Cloud logging.
enum SecuritySettingRedactionScope2 {
  redactionScopeUnspecified("REDACTION_SCOPE_UNSPECIFIED"),
  redactDiskStorage("REDACT_DISK_STORAGE");

  const SecuritySettingRedactionScope2(this.value);
  final String value;

  static SecuritySettingRedactionScope2 fromValue(String value) {
    for (final item in SecuritySettingRedactionScope2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecuritySettingRedactionScope2 value: $value');
  }
}
