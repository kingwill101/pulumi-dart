/// Required. Immutable. The type of entity.
enum EntityType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  table("TABLE"),
  fileset("FILESET");

  const EntityType(this.value);
  final String value;

  static EntityType fromValue(String value) {
    for (final item in EntityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityType value: $value');
  }
}

