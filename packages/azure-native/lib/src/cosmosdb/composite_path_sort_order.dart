/// Sort order for composite paths.
enum CompositePathSortOrder {
  valueAscending("ascending"),
  valueDescending("descending");

  const CompositePathSortOrder(this.value);
  final String value;

  static CompositePathSortOrder fromValue(String value) {
    for (final item in CompositePathSortOrder.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CompositePathSortOrder value: $value');
  }
}

