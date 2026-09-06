import 'package:pulumi/pulumi.dart' as pulumi;

/// If omitted, no disks on the compute nodes in the pool will be encrypted.
enum DiskEncryptionTarget implements pulumi.PulumiEnum<String> {
  osDisk("OsDisk"),
  temporaryDisk("TemporaryDisk");

  const DiskEncryptionTarget(this.wireValue);
  @override
  final String wireValue;

  static DiskEncryptionTarget fromValue(String value) {
    for (final item in DiskEncryptionTarget.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskEncryptionTarget value: $value');
  }
}
