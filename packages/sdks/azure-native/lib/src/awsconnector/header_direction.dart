/// Property direction
enum HeaderDirection {
  aNY("ANY"),
  fORWARD("FORWARD");

  const HeaderDirection(this.wireValue);
  final String wireValue;

  static HeaderDirection fromValue(String value) {
    for (final item in HeaderDirection.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HeaderDirection value: $value');
  }
}
