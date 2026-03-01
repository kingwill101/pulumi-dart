/// The category.
enum ResourceTypeCategory {
  none("None"),
  freeForm("FreeForm"),
  internal("Internal"),
  pureProxy("PureProxy");

  const ResourceTypeCategory(this.value);
  final String value;

  static ResourceTypeCategory fromValue(String value) {
    for (final item in ResourceTypeCategory.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceTypeCategory value: $value');
  }
}

