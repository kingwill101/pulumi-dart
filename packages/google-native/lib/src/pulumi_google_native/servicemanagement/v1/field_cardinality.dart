/// The field cardinality.
enum FieldCardinality {
  cardinalityUnknown("CARDINALITY_UNKNOWN"),
  cardinalityOptional("CARDINALITY_OPTIONAL"),
  cardinalityRequired("CARDINALITY_REQUIRED"),
  cardinalityRepeated("CARDINALITY_REPEATED");

  const FieldCardinality(this.value);
  final String value;

  static FieldCardinality fromValue(String value) {
    for (final item in FieldCardinality.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FieldCardinality value: $value');
  }
}
