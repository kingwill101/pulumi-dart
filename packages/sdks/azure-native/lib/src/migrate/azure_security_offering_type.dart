/// Azure security offering type.
enum AzureSecurityOfferingType {
  nO("NO"),
  mDC("MDC");

  const AzureSecurityOfferingType(this.wireValue);
  final String wireValue;

  static AzureSecurityOfferingType fromValue(String value) {
    for (final item in AzureSecurityOfferingType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSecurityOfferingType value: $value');
  }
}

