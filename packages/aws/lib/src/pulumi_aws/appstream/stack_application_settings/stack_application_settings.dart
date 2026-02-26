// ignore_for_file: unused_element, unnecessary_cast

class StackApplicationSettings {
  /// Whether application settings should be persisted.
  final bool enabled;

  /// Name of the settings group.
  /// Required when <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span> is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  /// Can be up to 100 characters.
  final String? settingsGroup;

  StackApplicationSettings({
    required this.enabled,
    this.settingsGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final settingsGroupValue = settingsGroup;
    if (settingsGroupValue != null) {
      map['settingsGroup'] = settingsGroupValue;
    }
    return map;
  }

  factory StackApplicationSettings.fromMap(Map<String, dynamic> map) {
    return StackApplicationSettings(
      enabled: map['enabled'] as bool,
      settingsGroup:
          map['settingsGroup'] == null ? null : map['settingsGroup'] as String,
    );
  }
}
