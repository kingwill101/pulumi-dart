/// Indicates that this field supports ordering by the specified order or comparing using =, <, <=, >, >=.
enum GoogleFirestoreAdminV1beta2IndexFieldOrder {
  orderUnspecified("ORDER_UNSPECIFIED"),
  ascending("ASCENDING"),
  descending("DESCENDING");

  const GoogleFirestoreAdminV1beta2IndexFieldOrder(this.value);
  final String value;

  static GoogleFirestoreAdminV1beta2IndexFieldOrder fromValue(String value) {
    for (final item in GoogleFirestoreAdminV1beta2IndexFieldOrder.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleFirestoreAdminV1beta2IndexFieldOrder value: $value',
    );
  }
}
