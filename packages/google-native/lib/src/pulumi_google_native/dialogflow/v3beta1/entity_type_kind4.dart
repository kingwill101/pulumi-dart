/// Required. Indicates the kind of entity type.
enum EntityTypeKind4 {
  kindUnspecified("KIND_UNSPECIFIED"),
  kindMap("KIND_MAP"),
  kindList("KIND_LIST"),
  kindRegexp("KIND_REGEXP");

  const EntityTypeKind4(this.value);
  final String value;

  static EntityTypeKind4 fromValue(String value) {
    for (final item in EntityTypeKind4.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTypeKind4 value: $value');
  }
}
