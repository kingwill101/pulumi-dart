/// Type of entity.
enum EntityTypes {
  valueNone("None"),
  valueProfile("Profile"),
  valueInteraction("Interaction"),
  valueRelationship("Relationship");

  const EntityTypes(this.wireValue);
  final String wireValue;

  static EntityTypes fromValue(String value) {
    for (final item in EntityTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EntityTypes value: $value');
  }
}
