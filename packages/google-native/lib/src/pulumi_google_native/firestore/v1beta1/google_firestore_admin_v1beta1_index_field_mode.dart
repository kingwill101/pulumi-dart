/// The field's mode.
enum GoogleFirestoreAdminV1beta1IndexFieldMode {
  modeUnspecified("MODE_UNSPECIFIED"),
  ascending("ASCENDING"),
  descending("DESCENDING"),
  arrayContains("ARRAY_CONTAINS");

  const GoogleFirestoreAdminV1beta1IndexFieldMode(this.value);
  final String value;

  static GoogleFirestoreAdminV1beta1IndexFieldMode fromValue(String value) {
    for (final item in GoogleFirestoreAdminV1beta1IndexFieldMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleFirestoreAdminV1beta1IndexFieldMode value: $value');
  }
}
