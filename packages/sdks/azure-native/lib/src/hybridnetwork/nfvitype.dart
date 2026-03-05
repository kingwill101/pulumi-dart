/// The NFVI type.
enum NFVIType {
  valueUnknown("Unknown"),
  valueAzureArcKubernetes("AzureArcKubernetes"),
  valueAzureCore("AzureCore"),
  valueAzureOperatorNexus("AzureOperatorNexus");

  const NFVIType(this.wireValue);
  final String wireValue;

  static NFVIType fromValue(String value) {
    for (final item in NFVIType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NFVIType value: $value');
  }
}

