enum NGroupUpdateMode {
  valueManual("Manual"),
  valueRolling("Rolling");

  const NGroupUpdateMode(this.value);
  final String value;

  static NGroupUpdateMode fromValue(String value) {
    for (final item in NGroupUpdateMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NGroupUpdateMode value: $value');
  }
}

