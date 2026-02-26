/// Required. Indicates whether the additional data should override or supplement the custom entity type definition.
enum SessionEntityTypeEntityOverrideMode4 {
  entityOverrideModeUnspecified("ENTITY_OVERRIDE_MODE_UNSPECIFIED"),
  entityOverrideModeOverride("ENTITY_OVERRIDE_MODE_OVERRIDE"),
  entityOverrideModeSupplement("ENTITY_OVERRIDE_MODE_SUPPLEMENT");

  const SessionEntityTypeEntityOverrideMode4(this.value);
  final String value;

  static SessionEntityTypeEntityOverrideMode4 fromValue(String value) {
    for (final item in SessionEntityTypeEntityOverrideMode4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SessionEntityTypeEntityOverrideMode4 value: $value');
  }
}
