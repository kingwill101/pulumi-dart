// ignore_for_file: unused_element, unnecessary_cast


class SettingsApplicationSettingsCsmSettings {
  /// Audience claim set in the generated RCToken. This value is not validated by IAP.
  final String? rctokenAud;

  /// Creates a new [SettingsApplicationSettingsCsmSettings].
  /// [rctokenAud] Audience claim set in the generated RCToken. This value is not validated by IAP.
  SettingsApplicationSettingsCsmSettings({
    this.rctokenAud,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rctokenAud': ?rctokenAud,
    };
  }

  factory SettingsApplicationSettingsCsmSettings.fromMap(Map<String, dynamic> map) {
    return SettingsApplicationSettingsCsmSettings(
      rctokenAud: map['rctokenAud'] == null ? null : map['rctokenAud'] as String,
    );
  }
}

