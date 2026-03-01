/// The Relationship Cardinality.
enum CardinalityTypes {
  valueOneToOne("OneToOne"),
  valueOneToMany("OneToMany"),
  valueManyToMany("ManyToMany");

  const CardinalityTypes(this.value);
  final String value;

  static CardinalityTypes fromValue(String value) {
    for (final item in CardinalityTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CardinalityTypes value: $value');
  }
}

