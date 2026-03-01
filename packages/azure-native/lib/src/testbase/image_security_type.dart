/// Custom image security type.
enum ImageSecurityType {
  valueStandard("Standard"),
  valueTrustedLaunch("TrustedLaunch");

  const ImageSecurityType(this.value);
  final String value;

  static ImageSecurityType fromValue(String value) {
    for (final item in ImageSecurityType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageSecurityType value: $value');
  }
}

