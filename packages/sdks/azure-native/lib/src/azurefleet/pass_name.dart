/// The pass name. Currently, the only allowable value is OobeSystem.
enum PassName {
  valueOobeSystem("OobeSystem");

  const PassName(this.value);
  final String value;

  static PassName fromValue(String value) {
    for (final item in PassName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PassName value: $value');
  }
}

