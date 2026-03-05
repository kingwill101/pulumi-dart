/// Property value
enum ImdsSupportValues {
  v20("v2.0");

  const ImdsSupportValues(this.wireValue);
  final String wireValue;

  static ImdsSupportValues fromValue(String value) {
    for (final item in ImdsSupportValues.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImdsSupportValues value: $value');
  }
}

