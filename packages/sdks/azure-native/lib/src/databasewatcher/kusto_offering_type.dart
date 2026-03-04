/// The type of a Kusto offering.
enum KustoOfferingType {
  adx("adx"),
  free("free"),
  fabric("fabric");

  const KustoOfferingType(this.wireValue);
  final String wireValue;

  static KustoOfferingType fromValue(String value) {
    for (final item in KustoOfferingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KustoOfferingType value: $value');
  }
}
