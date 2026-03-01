/// The NFVI type.
enum NFVIType {
  valueUnknown("Unknown"),
  valueAzureArcKubernetes("AzureArcKubernetes"),
  valueAzureCore("AzureCore"),
  valueAzureOperatorNexus("AzureOperatorNexus");

  const NFVIType(this.value);
  final String value;

  static NFVIType fromValue(String value) {
    for (final item in NFVIType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NFVIType value: $value');
  }
}

