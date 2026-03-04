/// Type of target entity.
enum EntityType {
  valueNone("None"),
  valueProfile("Profile"),
  valueInteraction("Interaction"),
  valueRelationship("Relationship");

  const EntityType(this.wireValue);
  final String wireValue;

  static EntityType fromValue(String value) {
    for (final item in EntityType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityType value: $value');
  }
}
