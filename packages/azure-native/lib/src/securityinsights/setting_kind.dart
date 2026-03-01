/// The kind of the setting
enum SettingKind {
  valueAnomalies("Anomalies"),
  valueEyesOn("EyesOn"),
  valueEntityAnalytics("EntityAnalytics"),
  valueUeba("Ueba");

  const SettingKind(this.value);
  final String value;

  static SettingKind fromValue(String value) {
    for (final item in SettingKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SettingKind value: $value');
  }
}

