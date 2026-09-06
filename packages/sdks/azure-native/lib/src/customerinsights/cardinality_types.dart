import 'package:pulumi/pulumi.dart' as pulumi;

/// The Relationship Cardinality.
enum CardinalityTypes implements pulumi.PulumiEnum<String> {
  valueOneToOne("OneToOne"),
  valueOneToMany("OneToMany"),
  valueManyToMany("ManyToMany");

  const CardinalityTypes(this.wireValue);
  @override
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
