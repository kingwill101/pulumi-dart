import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how the virtual machine disk should be created. Possible values are Attach, FromImage. If you are using a platform image, you should also use the imageReference element described above. If you are using a marketplace image, you should also use the plan element previously described.
enum DiskCreateOptionTypes implements pulumi.PulumiEnum<String> {
  fromImage("FromImage"),
  empty("Empty"),
  attach("Attach"),
  copy("Copy"),
  restore("Restore");

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
