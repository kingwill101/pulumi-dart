/// Required. Indicates whether the additional data should override or supplement the custom entity type definition.
enum SessionEntityTypeEntityOverrideMode {
  entityOverrideModeUnspecified("ENTITY_OVERRIDE_MODE_UNSPECIFIED"),
  entityOverrideModeOverride("ENTITY_OVERRIDE_MODE_OVERRIDE"),
  entityOverrideModeSupplement("ENTITY_OVERRIDE_MODE_SUPPLEMENT");

  const SessionEntityTypeEntityOverrideMode(this.value);
  final String value;

  static SessionEntityTypeEntityOverrideMode fromValue(String value) {
    for (final item in SessionEntityTypeEntityOverrideMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown SessionEntityTypeEntityOverrideMode value: $value');
  }
}
