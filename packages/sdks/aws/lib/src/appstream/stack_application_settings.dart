// ignore_for_file: unused_element, unnecessary_cast


class StackApplicationSettings {
  /// Whether application settings should be persisted.
  final bool enabled;
  /// Name of the settings group.
  /// Required when `enabled` is `true`.
  /// Can be up to 100 characters.
  final String? settingsGroup;

  /// Creates a new [StackApplicationSettings].
  /// [enabled] Whether application settings should be persisted.
  /// [settingsGroup] Name of the settings group.
  StackApplicationSettings({
    required this.enabled,
    this.settingsGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'settingsGroup': ?settingsGroup,
    };
  }

  factory StackApplicationSettings.fromMap(Map<String, dynamic> map) {
    return StackApplicationSettings(
      enabled: map['enabled'] as bool,
      settingsGroup: map['settingsGroup'] == null ? null : map['settingsGroup'] as String,
    );
  }
}

