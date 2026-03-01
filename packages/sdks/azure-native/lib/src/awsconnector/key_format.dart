/// The format of the key pair. Default: ``pem``
enum KeyFormat {
  pem("pem"),
  ppk("ppk");

  const KeyFormat(this.value);
  final String value;

  static KeyFormat fromValue(String value) {
    for (final item in KeyFormat.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KeyFormat value: $value');
  }
}

