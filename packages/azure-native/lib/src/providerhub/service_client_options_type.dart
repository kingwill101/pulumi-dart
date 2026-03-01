enum ServiceClientOptionsType {
  notSpecified("NotSpecified"),
  disableAutomaticDecompression("DisableAutomaticDecompression");

  const ServiceClientOptionsType(this.value);
  final String value;

  static ServiceClientOptionsType fromValue(String value) {
    for (final item in ServiceClientOptionsType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceClientOptionsType value: $value');
  }
}

