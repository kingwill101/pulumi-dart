/// Required. Indicates whether the additional data should override or supplement the custom entity type definition.
enum SessionEntityTypeEntityOverrideMode3 {
  entityOverrideModeUnspecified("ENTITY_OVERRIDE_MODE_UNSPECIFIED"),
  entityOverrideModeOverride("ENTITY_OVERRIDE_MODE_OVERRIDE"),
  entityOverrideModeSupplement("ENTITY_OVERRIDE_MODE_SUPPLEMENT");

  const SessionEntityTypeEntityOverrideMode3(this.value);
  final String value;

  static SessionEntityTypeEntityOverrideMode3 fromValue(String value) {
    for (final item in SessionEntityTypeEntityOverrideMode3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SessionEntityTypeEntityOverrideMode3 value: $value');
  }
}
