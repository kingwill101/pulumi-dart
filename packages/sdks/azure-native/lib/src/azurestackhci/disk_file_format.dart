import 'package:pulumi/pulumi.dart' as pulumi;

/// The format of the actual VHD file [vhd, vhdx]
enum DiskFileFormat implements pulumi.PulumiEnum<String> {
  vhdx("vhdx"),
  vhd("vhd");

  const DiskFileFormat(this.wireValue);
  @override
  final String wireValue;

  static DiskFileFormat fromValue(String value) {
    for (final item in DiskFileFormat.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskFileFormat value: $value');
  }
}
