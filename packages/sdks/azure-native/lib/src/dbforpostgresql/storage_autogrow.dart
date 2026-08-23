/// Enable Storage Auto Grow.
enum StorageAutogrow {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const StorageAutogrow(this.wireValue);
  final String wireValue;

  static StorageAutogrow fromValue(String value) {
    for (final item in StorageAutogrow.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageAutogrow value: $value');
  }
}
