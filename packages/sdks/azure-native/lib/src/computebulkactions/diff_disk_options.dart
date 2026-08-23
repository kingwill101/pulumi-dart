/// Specifies the ephemeral disk settings for operating system disk.
enum DiffDiskOptions {
  local("Local");

  const DiffDiskOptions(this.wireValue);
  final String wireValue;

  static DiffDiskOptions fromValue(String value) {
    for (final item in DiffDiskOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiffDiskOptions value: $value');
  }
}
