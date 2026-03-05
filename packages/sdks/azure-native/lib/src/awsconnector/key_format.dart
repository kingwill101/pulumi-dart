/// The format of the key pair. Default: ``pem``
enum KeyFormat {
  pem("pem"),
  ppk("ppk");

  const KeyFormat(this.wireValue);
  final String wireValue;

  static KeyFormat fromValue(String value) {
    for (final item in KeyFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyFormat value: $value');
  }
}

