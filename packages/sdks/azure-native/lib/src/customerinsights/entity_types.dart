/// Type of entity.
enum EntityTypes {
  valueNone("None"),
  valueProfile("Profile"),
  valueInteraction("Interaction"),
  valueRelationship("Relationship");

  const EntityTypes(this.value);
  final String value;

  static EntityTypes fromValue(String value) {
    for (final item in EntityTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTypes value: $value');
  }
}

