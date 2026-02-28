/// By changing the type to DIST, the patching is performed using `apt-get dist-upgrade` instead.
enum AptSettingsTypeOsconfigV1beta {
  typeUnspecified("TYPE_UNSPECIFIED"),
  dist("DIST"),
  upgrade("UPGRADE");

  const AptSettingsTypeOsconfigV1beta(this.value);
  final String value;

  static AptSettingsTypeOsconfigV1beta fromValue(String value) {
    for (final item in AptSettingsTypeOsconfigV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AptSettingsTypeOsconfigV1beta value: $value');
  }
}
