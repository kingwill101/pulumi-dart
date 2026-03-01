/// Azure security offering type.
enum AzureSecurityOfferingType {
  nO("NO"),
  mDC("MDC");

  const AzureSecurityOfferingType(this.value);
  final String value;

  static AzureSecurityOfferingType fromValue(String value) {
    for (final item in AzureSecurityOfferingType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AzureSecurityOfferingType value: $value');
  }
}

