/// Static routing enrichment value type. For e.g. this property value can be 'String'.
enum StaticRoutingEnrichmentType {
  valueString("String");

  const StaticRoutingEnrichmentType(this.wireValue);
  final String wireValue;

  static StaticRoutingEnrichmentType fromValue(String value) {
    for (final item in StaticRoutingEnrichmentType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StaticRoutingEnrichmentType value: $value');
  }
}

