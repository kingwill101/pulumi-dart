/// The sort order applied to the sort column.
enum DimensionSortOrder {
  sortOrderUnspecified("SORT_ORDER_UNSPECIFIED"),
  sortOrderNone("SORT_ORDER_NONE"),
  sortOrderAscending("SORT_ORDER_ASCENDING"),
  sortOrderDescending("SORT_ORDER_DESCENDING");

  const DimensionSortOrder(this.value);
  final String value;

  static DimensionSortOrder fromValue(String value) {
    for (final item in DimensionSortOrder.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DimensionSortOrder value: $value');
  }
}
