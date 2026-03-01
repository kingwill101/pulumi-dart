/// Cache node resource requires a proxy
enum ProxyRequired {
  none("None"),
  required("Required");

  const ProxyRequired(this.value);
  final String value;

  static ProxyRequired fromValue(String value) {
    for (final item in ProxyRequired.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProxyRequired value: $value');
  }
}

