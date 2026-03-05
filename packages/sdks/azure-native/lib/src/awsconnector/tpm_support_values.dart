/// Property value
enum TpmSupportValues {
  v20("v2.0");

  const TpmSupportValues(this.wireValue);
  final String wireValue;

  static TpmSupportValues fromValue(String value) {
    for (final item in TpmSupportValues.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TpmSupportValues value: $value');
  }
}

