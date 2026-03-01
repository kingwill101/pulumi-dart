/// Property value
enum ImdsSupportValues {
  v20("v2.0");

  const ImdsSupportValues(this.value);
  final String value;

  static ImdsSupportValues fromValue(String value) {
    for (final item in ImdsSupportValues.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImdsSupportValues value: $value');
  }
}

