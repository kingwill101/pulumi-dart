// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StackApplicationSettings {
  /// Whether application settings should be persisted.
  final pulumi.Input<bool> enabled;
  /// Name of the settings group.
  /// Required when `enabled` is `true`.
  /// Can be up to 100 characters.
  final pulumi.Input<String>? settingsGroup;

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
      enabled: (map['enabled'] as bool).input(),
      settingsGroup: map['settingsGroup'] == null ? null : (map['settingsGroup'] as String).input(),
    );
  }
}

