/// The type of a Kusto offering.
enum KustoOfferingType {
  adx("adx"),
  free("free"),
  fabric("fabric");

  const KustoOfferingType(this.value);
  final String value;

  static KustoOfferingType fromValue(String value) {
    for (final item in KustoOfferingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KustoOfferingType value: $value');
  }
}

