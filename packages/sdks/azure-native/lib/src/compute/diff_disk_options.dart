/// Specifies the ephemeral disk settings for operating system disk.
enum DiffDiskOptions {
  local("Local");

  const DiffDiskOptions(this.value);
  final String value;

  static DiffDiskOptions fromValue(String value) {
    for (final item in DiffDiskOptions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiffDiskOptions value: $value');
  }
}

