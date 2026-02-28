/// Required. Indicates the kind of entity type.
enum EntityTypeKindDialogflowV3 {
  kindUnspecified("KIND_UNSPECIFIED"),
  kindMap("KIND_MAP"),
  kindList("KIND_LIST"),
  kindRegexp("KIND_REGEXP");

  const EntityTypeKindDialogflowV3(this.value);
  final String value;

  static EntityTypeKindDialogflowV3 fromValue(String value) {
    for (final item in EntityTypeKindDialogflowV3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTypeKindDialogflowV3 value: $value');
  }
}
