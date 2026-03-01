/// Property value
enum TpmSupportValues {
  v20("v2.0");

  const TpmSupportValues(this.value);
  final String value;

  static TpmSupportValues fromValue(String value) {
    for (final item in TpmSupportValues.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TpmSupportValues value: $value');
  }
}

