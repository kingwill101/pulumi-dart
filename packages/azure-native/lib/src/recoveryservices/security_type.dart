/// The target VM security type.
enum SecurityType {
  valueNone("None"),
  valueTrustedLaunch("TrustedLaunch"),
  valueConfidentialVM("ConfidentialVM");

  const SecurityType(this.value);
  final String value;

  static SecurityType fromValue(String value) {
    for (final item in SecurityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityType value: $value');
  }
}

