// ignore_for_file: unused_element, unnecessary_cast


class SettingsAccessSettingsCorsSettings {
  /// Configuration to allow HTTP OPTIONS calls to skip authorization.
  /// If undefined, IAP will not apply any special logic to OPTIONS requests.
  final bool? allowHttpOptions;

  /// Creates a new [SettingsAccessSettingsCorsSettings].
  /// [allowHttpOptions] Configuration to allow HTTP OPTIONS calls to skip authorization.
  SettingsAccessSettingsCorsSettings({
    this.allowHttpOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowHttpOptions': ?allowHttpOptions,
    };
  }

  factory SettingsAccessSettingsCorsSettings.fromMap(Map<String, dynamic> map) {
    return SettingsAccessSettingsCorsSettings(
      allowHttpOptions: map['allowHttpOptions'] == null ? null : map['allowHttpOptions'] as bool,
    );
  }
}

