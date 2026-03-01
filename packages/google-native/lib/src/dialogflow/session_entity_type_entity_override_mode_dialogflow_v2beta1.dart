/// Required. Indicates whether the additional data should override or supplement the custom entity type definition.
enum SessionEntityTypeEntityOverrideModeDialogflowV2beta1 {
  entityOverrideModeUnspecified("ENTITY_OVERRIDE_MODE_UNSPECIFIED"),
  entityOverrideModeOverride("ENTITY_OVERRIDE_MODE_OVERRIDE"),
  entityOverrideModeSupplement("ENTITY_OVERRIDE_MODE_SUPPLEMENT");

  const SessionEntityTypeEntityOverrideModeDialogflowV2beta1(this.value);
  final String value;

  static SessionEntityTypeEntityOverrideModeDialogflowV2beta1 fromValue(
    String value,
  ) {
    for (final item
        in SessionEntityTypeEntityOverrideModeDialogflowV2beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown SessionEntityTypeEntityOverrideModeDialogflowV2beta1 value: $value',
    );
  }
}
