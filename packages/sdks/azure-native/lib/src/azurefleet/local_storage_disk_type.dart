import 'package:pulumi/pulumi.dart' as pulumi;

/// Different kind of Local storage disk types supported by Azure VMs.
enum LocalStorageDiskType implements pulumi.PulumiEnum<String> {
  hDD("HDD"),
  sSD("SSD");

  const LocalStorageDiskType(this.wireValue);
  @override
  final String wireValue;

  static LocalStorageDiskType fromValue(String value) {
    for (final item in LocalStorageDiskType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LocalStorageDiskType value: $value');
  }
}
