/// The Relationship Cardinality.
enum CardinalityTypes {
  valueOneToOne("OneToOne"),
  valueOneToMany("OneToMany"),
  valueManyToMany("ManyToMany");

  const CardinalityTypes(this.wireValue);
  final String wireValue;

  static CardinalityTypes fromValue(String value) {
    for (final item in CardinalityTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CardinalityTypes value: $value');
  }
}
