import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how the virtual machine should be created.
enum DiskCreateOptionTypes implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueEmpty("Empty");

  const DiskCreateOptionTypes(this.wireValue);
  @override
  final String wireValue;

  static DiskCreateOptionTypes fromValue(String value) {
    for (final item in DiskCreateOptionTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskCreateOptionTypes value: $value');
  }
}
