/// The pass name. Currently, the only allowable value is OobeSystem.
enum PassName {
  valueOobeSystem("OobeSystem");

  const PassName(this.wireValue);
  final String wireValue;

  static PassName fromValue(String value) {
    for (final item in PassName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PassName value: $value');
  }
}

