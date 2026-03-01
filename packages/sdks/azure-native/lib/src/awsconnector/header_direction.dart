/// Property direction
enum HeaderDirection {
  aNY("ANY"),
  fORWARD("FORWARD");

  const HeaderDirection(this.value);
  final String value;

  static HeaderDirection fromValue(String value) {
    for (final item in HeaderDirection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HeaderDirection value: $value');
  }
}

