/// Type of target entity.
enum EntityType {
  valueNone("None"),
  valueProfile("Profile"),
  valueInteraction("Interaction"),
  valueRelationship("Relationship");

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

