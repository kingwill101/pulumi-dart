/// Flag to enable or disable the automatic growth of storage size of a server when available space is nearing zero and conditions allow for automatically growing storage size.
enum StorageAutoGrow {
  enabled("Enabled"),
  disabled("Disabled");

  const StorageAutoGrow(this.value);
  final String value;

  static StorageAutoGrow fromValue(String value) {
    for (final item in StorageAutoGrow.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageAutoGrow value: $value');
  }
}

