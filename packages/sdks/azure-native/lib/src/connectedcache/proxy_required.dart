/// Cache node resource requires a proxy
enum ProxyRequired {
  none("None"),
  required("Required");

  const ProxyRequired(this.wireValue);
  final String wireValue;

  static ProxyRequired fromValue(String value) {
    for (final item in ProxyRequired.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProxyRequired value: $value');
  }
}

