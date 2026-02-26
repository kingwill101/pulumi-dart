/// Required. Indicates the kind of entity type.
enum EntityTypeKind2 {
  kindUnspecified("KIND_UNSPECIFIED"),
  kindMap("KIND_MAP"),
  kindList("KIND_LIST"),
  kindRegexp("KIND_REGEXP");

  const EntityTypeKind2(this.value);
  final String value;

  static EntityTypeKind2 fromValue(String value) {
    for (final item in EntityTypeKind2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTypeKind2 value: $value');
  }
}
