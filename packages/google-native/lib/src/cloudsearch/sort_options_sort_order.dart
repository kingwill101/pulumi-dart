/// Ascending is the default sort order
enum SortOptionsSortOrder {
  ascending("ASCENDING"),
  descending("DESCENDING");

  const SortOptionsSortOrder(this.value);
  final String value;

  static SortOptionsSortOrder fromValue(String value) {
    for (final item in SortOptionsSortOrder.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SortOptionsSortOrder value: $value');
  }
}
