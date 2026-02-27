/// Required. Indicates the kind of entity type.
enum EntityTypeKindDialogflowV2beta1 {
  kindUnspecified("KIND_UNSPECIFIED"),
  kindMap("KIND_MAP"),
  kindList("KIND_LIST"),
  kindRegexp("KIND_REGEXP");

  const EntityTypeKindDialogflowV2beta1(this.value);
  final String value;

  static EntityTypeKindDialogflowV2beta1 fromValue(String value) {
    for (final item in EntityTypeKindDialogflowV2beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown EntityTypeKindDialogflowV2beta1 value: $value');
  }
}
