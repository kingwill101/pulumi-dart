enum CustomConstraintMethodTypesItem {
  methodTypeUnspecified("METHOD_TYPE_UNSPECIFIED"),
  create("CREATE"),
  update("UPDATE"),
  delete("DELETE");

  const CustomConstraintMethodTypesItem(this.value);
  final String value;

  static CustomConstraintMethodTypesItem fromValue(String value) {
    for (final item in CustomConstraintMethodTypesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown CustomConstraintMethodTypesItem value: $value',
    );
  }
}
