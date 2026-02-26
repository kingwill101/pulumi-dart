/// By changing the type to DIST, the patching is performed using `apt-get dist-upgrade` instead.
enum AptSettingsType2 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  dist("DIST"),
  upgrade("UPGRADE");

  const AptSettingsType2(this.value);
  final String value;

  static AptSettingsType2 fromValue(String value) {
    for (final item in AptSettingsType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AptSettingsType2 value: $value');
  }
}
