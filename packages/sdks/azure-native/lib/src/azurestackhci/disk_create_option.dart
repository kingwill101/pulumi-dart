/// This enumerates the possible sources of a disk's creation
enum DiskCreateOption {
  copy("Copy"),
  empty("Empty");

  const DiskCreateOption(this.wireValue);
  final String wireValue;

  static DiskCreateOption fromValue(String value) {
    for (final item in DiskCreateOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskCreateOption value: $value');
  }
}
