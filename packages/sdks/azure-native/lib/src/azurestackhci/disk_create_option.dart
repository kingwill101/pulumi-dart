import 'package:pulumi/pulumi.dart' as pulumi;

/// This enumerates the possible sources of a disk's creation
enum DiskCreateOption implements pulumi.PulumiEnum<String> {
  copy("Copy"),
  empty("Empty");

  const DiskCreateOption(this.wireValue);
  @override
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
