import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the ephemeral disk settings for operating system disk.
enum DiffDiskOptions implements pulumi.PulumiEnum<String> {
  local("Local");

  const DiffDiskOptions(this.wireValue);
  @override
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
