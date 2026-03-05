enum NGroupUpdateMode {
  valueManual("Manual"),
  valueRolling("Rolling");

  const NGroupUpdateMode(this.wireValue);
  final String wireValue;

  static NGroupUpdateMode fromValue(String value) {
    for (final item in NGroupUpdateMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NGroupUpdateMode value: $value');
  }
}

