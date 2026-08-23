/// Sort order for composite paths.
enum CompositePathSortOrder {
  valueAscending("ascending"),
  valueDescending("descending");

  const CompositePathSortOrder(this.wireValue);
  final String wireValue;

  static CompositePathSortOrder fromValue(String value) {
    for (final item in CompositePathSortOrder.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompositePathSortOrder value: $value');
  }
}
