/// Indicates that this field supports operations on `array_value`s.
enum GoogleFirestoreAdminV1beta2IndexFieldArrayConfig {
  arrayConfigUnspecified("ARRAY_CONFIG_UNSPECIFIED"),
  contains("CONTAINS");

  const GoogleFirestoreAdminV1beta2IndexFieldArrayConfig(this.value);
  final String value;

  static GoogleFirestoreAdminV1beta2IndexFieldArrayConfig fromValue(
    String value,
  ) {
    for (final item
        in GoogleFirestoreAdminV1beta2IndexFieldArrayConfig.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleFirestoreAdminV1beta2IndexFieldArrayConfig value: $value',
    );
  }
}
