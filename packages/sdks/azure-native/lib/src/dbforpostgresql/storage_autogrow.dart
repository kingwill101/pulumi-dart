/// Enable Storage Auto Grow.
enum StorageAutogrow {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const StorageAutogrow(this.value);
  final String value;

  static StorageAutogrow fromValue(String value) {
    for (final item in StorageAutogrow.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageAutogrow value: $value');
  }
}

