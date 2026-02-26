/// Required. Indicates the kind of entity type.
enum EntityTypeKind3 {
  kindUnspecified("KIND_UNSPECIFIED"),
  kindMap("KIND_MAP"),
  kindList("KIND_LIST"),
  kindRegexp("KIND_REGEXP");

  const EntityTypeKind3(this.value);
  final String value;

  static EntityTypeKind3 fromValue(String value) {
    for (final item in EntityTypeKind3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTypeKind3 value: $value');
  }
}
